package proguard.canary;

/* JADX INFO: loaded from: classes.dex */
public class NewRelicCanary {
    private String sound;

    public NewRelicCanary(String sound) {
        this.sound = sound;
    }

    public static void canaryMethod() {
        new NewRelicCanary("tweet!");
    }
}
