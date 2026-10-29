package com.jirbo.adcolony;

import com.inmobi.re.controller.JSController;

/* JADX INFO: loaded from: classes2.dex */
public final class AdColonyV4VCAd extends AdColonyAd {
    boolean C = false;
    boolean D = false;
    boolean E;

    public AdColonyV4VCAd() {
        a.D = false;
        a.e();
        this.k = "v4vc";
        this.E = false;
        this.l = JSController.FULL_SCREEN;
        this.m = aa.b();
    }

    public AdColonyV4VCAd(String zone_id) {
        a.e();
        this.h = zone_id;
        this.k = "v4vc";
        this.E = false;
        this.l = JSController.FULL_SCREEN;
        this.m = aa.b();
    }

    public AdColonyV4VCAd withListener(AdColonyAdListener listener) {
        this.y = listener;
        return this;
    }

    public AdColonyV4VCAd withConfirmationDialog(boolean setting) {
        this.C = setting;
        return this;
    }

    public AdColonyV4VCAd withResultsDialog(boolean setting) {
        this.D = setting;
        a.D = this.D;
        return this;
    }

    public AdColonyV4VCAd withConfirmationDialog() {
        return withConfirmationDialog(true);
    }

    public AdColonyV4VCAd withResultsDialog() {
        return withResultsDialog(true);
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    boolean b() {
        return true;
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    boolean a(boolean z) {
        return false;
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    public boolean isReady() {
        if (this.h == null) {
            this.h = a.l.f();
            if (this.h == null) {
                return false;
            }
        }
        return a.l.f(this.h);
    }

    public String getRewardName() {
        return !c() ? "" : this.i.n.d;
    }

    public int getRewardAmount() {
        if (c()) {
            return this.i.n.c;
        }
        return 0;
    }

    public int getViewsPerReward() {
        if (c()) {
            return this.i.n.f;
        }
        return 0;
    }

    public int getRemainingViewsUntilReward() {
        if (c()) {
            return this.i.n.f - this.i.s;
        }
        return 0;
    }

    public void show() {
        if (this.E) {
            l.d.b((Object) "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt.");
            return;
        }
        a.am = 0;
        if (!isReady()) {
            this.g = a.am;
            new j(a.l) { // from class: com.jirbo.adcolony.AdColonyV4VCAd.1
                @Override // com.jirbo.adcolony.j
                void a() {
                    if (AdColonyV4VCAd.this.h != null) {
                        this.o.d.a(AdColonyV4VCAd.this.h, AdColonyV4VCAd.this);
                    }
                }
            };
            this.f = 2;
            if (this.y != null) {
                this.y.onAdColonyAdAttemptFinished(this);
            }
            this.E = true;
            return;
        }
        this.g = a.am;
        if (a.E) {
            new j(a.l) { // from class: com.jirbo.adcolony.AdColonyV4VCAd.2
                @Override // com.jirbo.adcolony.j
                void a() {
                    this.o.d.a(AdColonyV4VCAd.this.h, AdColonyV4VCAd.this);
                }
            };
            a.E = false;
            c();
            a.T = this;
            a.l.a(this);
            if (!this.C) {
                this.E = true;
                c(true);
            } else {
                a("Confirmation");
            }
        }
    }

    void c(boolean z) {
        if (z) {
            if (a.l.b(this)) {
                a.o = false;
                if (this.y != null) {
                    this.y.onAdColonyAdStarted(this);
                }
                this.f = 4;
            } else {
                this.f = 3;
            }
        } else {
            this.f = 1;
        }
        if (this.f != 4) {
            a.E = true;
            if (this.y != null) {
                this.y.onAdColonyAdAttemptFinished(this);
            }
        }
    }

    @Override // com.jirbo.adcolony.AdColonyAd
    void a() {
        if (this.f == 4 && this.D) {
            a("Result");
        }
        if (this.y != null && !this.w) {
            this.y.onAdColonyAdAttemptFinished(this);
        }
        if (!a.D && !AdColonyBrowser.B) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= a.an.size()) {
                    break;
                }
                a.an.get(i2).recycle();
                i = i2 + 1;
            }
            a.an.clear();
        }
        a.U = null;
        this.w = true;
        if (!this.D) {
            a.E = true;
        }
        System.gc();
    }

    void a(String str) {
        String str2 = ("" + getRewardAmount()) + " " + getRewardName();
        if (!str.equals("Confirmation")) {
            a.S = new ac(str2, this);
        } else {
            a.S = new ab(str2, this);
        }
    }
}
