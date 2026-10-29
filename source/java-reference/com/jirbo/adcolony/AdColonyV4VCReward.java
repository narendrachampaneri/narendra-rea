package com.jirbo.adcolony;

/* JADX INFO: loaded from: classes2.dex */
public class AdColonyV4VCReward {
    boolean a;
    String b;
    int c;

    AdColonyV4VCReward(boolean success, String name, int amount) {
        this.a = success;
        this.b = name;
        this.c = amount;
    }

    public boolean success() {
        return this.a;
    }

    public String name() {
        return this.b;
    }

    public int amount() {
        return this.c;
    }

    public String toString() {
        return this.a ? this.b + ":" + this.c : "no reward";
    }
}
