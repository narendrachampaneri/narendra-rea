package org.cocos2dx.lib;

import android.content.Context;
import android.media.SoundPool;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes2.dex */
public class Cocos2dxSound {
    private static final int INVALID_SOUND_ID = -1;
    private static final int INVALID_STREAM_ID = -1;
    public static final int MAX_SIMULTANEOUS_STREAMS_DEFAULT = 8;
    public static final int MAX_SIMULTANEOUS_STREAMS_I9100 = 3;
    private static final int SOUND_PRIORITY = 1;
    private static final int SOUND_QUALITY = 5;
    private static final float SOUND_RATE = 1.0f;
    private static final String TAG = "Cocos2dxSound";
    private static HashMap<Integer, SoundPool> mSoundPoolLookup = new HashMap<>();
    private final Context mContext;
    private float mLeftVolume;
    private float mRightVolume;
    private Semaphore mSemaphore;
    private int mStreamIdSyn;
    private int simultaneousStreams;
    private final HashMap<Integer, HashMap<String, ArrayList<Integer>>> mGroupMapPathStreamIDsMap = new HashMap<>();
    private final HashMap<String, Integer> mPathSoundIDMap = new HashMap<>();
    private final ArrayList<SoundInfoForLoadedCompleted> mEffecToPlayWhenLoadedArray = new ArrayList<>();

    public Cocos2dxSound(Context pContext, int simultaneousStreams) {
        this.mContext = pContext;
        initData(simultaneousStreams);
    }

    private void initData(int simultaneousStreams) {
        this.mLeftVolume = 0.5f;
        this.simultaneousStreams = simultaneousStreams;
        this.mRightVolume = 0.5f;
        this.mSemaphore = new Semaphore(0, true);
    }

    public int preloadEffect(String pPath, int group) {
        int iIntValue;
        synchronized (this.mPathSoundIDMap) {
            Integer soundID = this.mPathSoundIDMap.get(pPath);
            if (soundID == null) {
                soundID = Integer.valueOf(createSoundIDFromAsset(pPath, group));
                if (soundID.intValue() != -1) {
                    this.mPathSoundIDMap.put(pPath, soundID);
                }
            }
            iIntValue = soundID.intValue();
        }
        return iIntValue;
    }

    public void unloadEffect(String pPath, int pGroup) {
        ArrayList<Integer> streamIDs = getSoundStreamIds(pPath, pGroup);
        if (streamIDs != null) {
            SoundPool pool = getSoundPool(pGroup);
            for (Integer pStreamID : streamIDs) {
                pool.stop(pStreamID.intValue());
            }
        }
        removeSoundStreamId(pPath, pGroup);
        synchronized (this.mPathSoundIDMap) {
            Integer soundID = this.mPathSoundIDMap.get(pPath);
            SoundPool pool2 = getSoundPool(pGroup);
            if (soundID != null) {
                pool2.unload(soundID.intValue());
                this.mPathSoundIDMap.remove(pPath);
            }
        }
    }

    public void unloadAllEffects() {
        synchronized (this.mGroupMapPathStreamIDsMap) {
            Iterator<Integer> it = this.mGroupMapPathStreamIDsMap.keySet().iterator();
            while (it.hasNext()) {
                int group = it.next().intValue();
                HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
                if (!map.isEmpty()) {
                    int total = 0;
                    for (Map.Entry<String, ArrayList<Integer>> entry : map.entrySet()) {
                        ArrayList<Integer> arry = entry.getValue();
                        total += arry.size();
                        for (Integer soundId : arry) {
                            unloadEffect(entry.getKey(), soundId.intValue());
                            Log.d(TAG, "Unloading Group:[" + group + "] SoundId:[" + soundId + "]");
                        }
                    }
                    Log.e(TAG, "StreamIDsMap[" + group + "] SIZE:" + total);
                }
            }
            this.mGroupMapPathStreamIDsMap.clear();
        }
    }

    private HashMap<String, ArrayList<Integer>> getGroupPathStreamIdsMap(int pGroup) {
        HashMap<String, ArrayList<Integer>> map;
        synchronized (this.mGroupMapPathStreamIDsMap) {
            if (this.mGroupMapPathStreamIDsMap.containsKey(Integer.valueOf(pGroup))) {
                map = this.mGroupMapPathStreamIDsMap.get(Integer.valueOf(pGroup));
                if (map == null) {
                    this.mGroupMapPathStreamIDsMap.remove(Integer.valueOf(pGroup));
                    map = getGroupPathStreamIdsMap(pGroup);
                }
            } else if (this.mGroupMapPathStreamIDsMap.containsKey(Integer.valueOf(pGroup))) {
                map = getGroupPathStreamIdsMap(pGroup);
            } else {
                HashMap<String, ArrayList<Integer>> newMap = new HashMap<>();
                this.mGroupMapPathStreamIDsMap.put(Integer.valueOf(pGroup), newMap);
                map = getGroupPathStreamIdsMap(pGroup);
            }
        }
        return map;
    }

    private ArrayList<Integer> getSoundStreamIds(String pPath, int pGroup) {
        ArrayList<Integer> list;
        HashMap<String, ArrayList<Integer>> groupStreamIdsMap = getGroupPathStreamIdsMap(pGroup);
        if (groupStreamIdsMap == null) {
            Log.d(TAG, "Sound Stream Id map creation Failed.");
            return null;
        }
        if (groupStreamIdsMap.containsKey(pPath)) {
            return groupStreamIdsMap.get(pPath);
        }
        synchronized (groupStreamIdsMap) {
            list = new ArrayList<>();
            groupStreamIdsMap.put(pPath, list);
        }
        return list;
    }

    private void removeSoundStreamId(String pPath, int pGroup) {
        HashMap<String, ArrayList<Integer>> map;
        synchronized (this.mGroupMapPathStreamIDsMap) {
            if (this.mGroupMapPathStreamIDsMap.containsKey(Integer.valueOf(pGroup)) && (map = this.mGroupMapPathStreamIDsMap.get(Integer.valueOf(pGroup))) != null) {
                ArrayList<Integer> list = map.remove(pPath);
                if (list == null) {
                    Log.d(TAG, "Sound Stream ID remove request ignored, not sound stream found in given group for given path");
                }
            }
        }
    }

    private void printPathSoundIdMap() {
        synchronized (this.mGroupMapPathStreamIDsMap) {
            Iterator<Integer> it = this.mGroupMapPathStreamIDsMap.keySet().iterator();
            while (it.hasNext()) {
                int group = it.next().intValue();
                HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
                if (!map.isEmpty()) {
                    int total = 0;
                    for (Map.Entry<String, ArrayList<Integer>> entry : map.entrySet()) {
                        ArrayList<Integer> arry = entry.getValue();
                        total += arry.size();
                    }
                    Log.e(TAG, "StreamIDsMap[" + group + "] SIZE:" + total);
                }
            }
        }
    }

    public int playEffect(String pPath, boolean pLoop, float pitch, float pan, float gain, int group) {
        int streamID;
        try {
            synchronized (this.mPathSoundIDMap) {
                Integer soundID = this.mPathSoundIDMap.get(pPath);
                float leftVolume = Math.max(0.0f, Math.min(1.0f, this.mLeftVolume * gain * Math.max(0.0f, Math.min(1.0f, 1.0f - pan))));
                float rightVolume = Math.max(0.0f, Math.min(1.0f, this.mRightVolume * gain * Math.max(0.0f, Math.min(1.0f, 1.0f + pan))));
                float soundRate = Math.max(0.5f, Math.min(2.0f, 1.0f * pitch));
                if (soundID != null) {
                    streamID = doPlayEffect(pPath, soundID.intValue(), pLoop, leftVolume, rightVolume, soundRate, group);
                } else {
                    Integer soundID2 = Integer.valueOf(preloadEffect(pPath, group));
                    if (soundID2.intValue() == -1) {
                        return -1;
                    }
                    SoundPool pool = getSoundPool(group);
                    synchronized (pool) {
                        synchronized (this.mEffecToPlayWhenLoadedArray) {
                            this.mEffecToPlayWhenLoadedArray.add(new SoundInfoForLoadedCompleted(pPath, soundID2.intValue(), pLoop, group));
                        }
                        try {
                            this.mSemaphore.acquire();
                            streamID = this.mStreamIdSyn;
                        } catch (Exception e) {
                            Log.e(TAG, "Audio Thread ERROR: " + e.getMessage());
                            return -1;
                        }
                    }
                }
                return streamID;
            }
        } catch (Exception e2) {
            Log.e(TAG, "Audio ERROR: " + e2.getMessage());
            return -1;
        }
    }

    public void stopEffect(int pStreamID, int group) {
        SoundPool pool = getSoundPool(group);
        pool.stop(pStreamID);
        HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
        for (String pPath : map.keySet()) {
            if (map.get(pPath).contains(Integer.valueOf(pStreamID))) {
                map.get(pPath).remove(map.get(pPath).indexOf(Integer.valueOf(pStreamID)));
                return;
            }
        }
    }

    public void pauseEffect(int pStreamID, int group) {
        SoundPool pool = getSoundPool(group);
        pool.pause(pStreamID);
    }

    public void resumeEffect(int pStreamID, int group) {
        SoundPool pool = getSoundPool(group);
        pool.resume(pStreamID);
    }

    public void pauseAllEffects() {
        synchronized (mSoundPoolLookup) {
            for (SoundPool pool : mSoundPoolLookup.values()) {
                pool.autoPause();
            }
        }
    }

    public void resumeAllEffects() {
        synchronized (this.mGroupMapPathStreamIDsMap) {
            Iterator<Integer> it = this.mGroupMapPathStreamIDsMap.keySet().iterator();
            while (it.hasNext()) {
                int group = it.next().intValue();
                HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
                SoundPool pool = getSoundPool(group);
                if (!map.isEmpty()) {
                    for (Map.Entry<String, ArrayList<Integer>> entry : map.entrySet()) {
                        Iterator<Integer> it2 = entry.getValue().iterator();
                        while (it2.hasNext()) {
                            int pStreamID = it2.next().intValue();
                            pool.resume(pStreamID);
                        }
                    }
                }
            }
        }
    }

    public void stopAllEffects() {
        synchronized (this.mGroupMapPathStreamIDsMap) {
            Iterator<Integer> it = this.mGroupMapPathStreamIDsMap.keySet().iterator();
            while (it.hasNext()) {
                int group = it.next().intValue();
                HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
                SoundPool pool = getSoundPool(group);
                if (!map.isEmpty()) {
                    for (Map.Entry<String, ArrayList<Integer>> entry : map.entrySet()) {
                        Iterator<Integer> it2 = entry.getValue().iterator();
                        while (it2.hasNext()) {
                            int pStreamID = it2.next().intValue();
                            pool.stop(pStreamID);
                        }
                    }
                }
                getGroupPathStreamIdsMap(group).clear();
            }
        }
    }

    public float getEffectsVolume() {
        return (this.mLeftVolume + this.mRightVolume) / 2.0f;
    }

    public void setEffectsVolume(float pVolume) {
        if (pVolume < 0.0f) {
            pVolume = 0.0f;
        }
        if (pVolume > 1.0f) {
            pVolume = 1.0f;
        }
        this.mRightVolume = pVolume;
        this.mLeftVolume = pVolume;
        synchronized (this.mGroupMapPathStreamIDsMap) {
            Iterator<Integer> it = this.mGroupMapPathStreamIDsMap.keySet().iterator();
            while (it.hasNext()) {
                int group = it.next().intValue();
                HashMap<String, ArrayList<Integer>> map = getGroupPathStreamIdsMap(group);
                SoundPool pool = getSoundPool(group);
                if (!map.isEmpty()) {
                    for (Map.Entry<String, ArrayList<Integer>> entry : map.entrySet()) {
                        Iterator<Integer> it2 = entry.getValue().iterator();
                        while (it2.hasNext()) {
                            int pStreamID = it2.next().intValue();
                            pool.setVolume(pStreamID, this.mLeftVolume, this.mRightVolume);
                        }
                    }
                }
            }
        }
    }

    public void end() {
        synchronized (this.mGroupMapPathStreamIDsMap) {
            for (HashMap<String, ArrayList<Integer>> groupsStreamIdsMap : this.mGroupMapPathStreamIDsMap.values()) {
                groupsStreamIdsMap.clear();
            }
            this.mGroupMapPathStreamIDsMap.clear();
        }
        synchronized (mSoundPoolLookup) {
            for (SoundPool pool : mSoundPoolLookup.values()) {
                pool.release();
            }
            mSoundPoolLookup.clear();
        }
        synchronized (this.mPathSoundIDMap) {
            this.mPathSoundIDMap.clear();
        }
        synchronized (this.mEffecToPlayWhenLoadedArray) {
            this.mEffecToPlayWhenLoadedArray.clear();
        }
        this.mLeftVolume = 0.5f;
        this.mRightVolume = 0.5f;
        initData(this.simultaneousStreams);
    }

    public int createSoundIDFromAsset(String pPath, int group) {
        int soundID;
        try {
            SoundPool pool = getSoundPool(group);
            if (pPath.startsWith("/")) {
                soundID = pool.load(pPath, 0);
            } else {
                soundID = pool.load(this.mContext.getAssets().openFd(pPath), 0);
            }
        } catch (Exception e) {
            soundID = -1;
            Log.e(TAG, "error: " + e.getMessage(), e);
        }
        if (soundID == 0) {
            return -1;
        }
        return soundID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int doPlayEffect(String pPath, int soundId, boolean pLoop, float leftVolume, float rightVolume, float soundRate, int group) {
        SoundPool pool = getSoundPool(group);
        int streamID = pool.play(soundId, leftVolume, rightVolume, 1, pLoop ? -1 : 0, soundRate);
        ArrayList<Integer> streamIDs = getSoundStreamIds(pPath, group);
        streamIDs.add(Integer.valueOf(streamID));
        if (streamIDs.size() > 8) {
            int sid = streamIDs.get(0).intValue();
            stopEffect(sid, group);
        }
        return streamID;
    }

    private SoundPool getSoundPool(int group) {
        SoundPool soundPoolCreateSoundPool;
        synchronized (mSoundPoolLookup) {
            if (mSoundPoolLookup.containsKey(Integer.valueOf(group))) {
                soundPoolCreateSoundPool = mSoundPoolLookup.get(Integer.valueOf(group));
            } else {
                Log.d(TAG, "Audio Alert: New SoundPool being created for group id " + group);
                soundPoolCreateSoundPool = createSoundPool(group, this.simultaneousStreams);
            }
        }
        return soundPoolCreateSoundPool;
    }

    public boolean createSoundGroup(int groupId, int maxSimulataneousStreams) {
        boolean z = false;
        synchronized (mSoundPoolLookup) {
            if (mSoundPoolLookup.containsKey(Integer.valueOf(groupId))) {
                Log.e(TAG, "SoundPool not created; group already defined.");
            } else {
                z = createSoundPool(groupId, maxSimulataneousStreams) != null;
            }
        }
        return z;
    }

    private SoundPool createSoundPool(int groupId, int maxSimulataneousStreams) {
        SoundPool newPool;
        synchronized (mSoundPoolLookup) {
            if (mSoundPoolLookup.containsKey(Integer.valueOf(groupId))) {
                newPool = getSoundPool(groupId);
            } else {
                newPool = new SoundPool(maxSimulataneousStreams, 3, 0);
                newPool.setOnLoadCompleteListener(new OnLoadCompletedListener());
                mSoundPoolLookup.put(Integer.valueOf(groupId), newPool);
                Log.i(TAG, "Audio Alert: New soundpool created. Group: " + groupId + " Max Simultaneous Streams: " + maxSimulataneousStreams);
            }
        }
        return newPool;
    }

    public class SoundInfoForLoadedCompleted {
        public int group;
        public boolean isLoop;
        public String path;
        public int soundID;

        public SoundInfoForLoadedCompleted(String path, int soundId, boolean isLoop, int group) {
            this.path = path;
            this.soundID = soundId;
            this.isLoop = isLoop;
            this.group = group;
        }
    }

    public class OnLoadCompletedListener implements SoundPool.OnLoadCompleteListener {
        public OnLoadCompletedListener() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
            if (status == 0) {
                synchronized (Cocos2dxSound.this.mEffecToPlayWhenLoadedArray) {
                    for (SoundInfoForLoadedCompleted info : Cocos2dxSound.this.mEffecToPlayWhenLoadedArray) {
                        if (sampleId == info.soundID) {
                            Cocos2dxSound.this.mStreamIdSyn = Cocos2dxSound.this.doPlayEffect(info.path, info.soundID, info.isLoop, Cocos2dxSound.this.mLeftVolume, Cocos2dxSound.this.mRightVolume, 1.0f, info.group);
                            Cocos2dxSound.this.mEffecToPlayWhenLoadedArray.remove(info);
                            break;
                        }
                    }
                }
            } else {
                Cocos2dxSound.this.mStreamIdSyn = -1;
            }
            Cocos2dxSound.this.mSemaphore.release();
        }
    }

    public int getSoundGroupId(SoundPool pPool) {
        int iIntValue = -1;
        if (pPool != null) {
            synchronized (mSoundPoolLookup) {
                for (Integer poolId : mSoundPoolLookup.keySet()) {
                    if (pPool.equals(getSoundPool(poolId.intValue()))) {
                        Log.d(TAG, "Found Sound Pool to have id " + poolId);
                        iIntValue = poolId.intValue();
                    }
                }
            }
        }
        return iIntValue;
    }
}
