package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class Demographic {
    private Integer a;
    private Gender b;

    /* JADX INFO: compiled from: vungle */
    public enum Gender {
        female,
        male
    }

    @Inject
    Demographic() {
    }

    public Integer getAge() {
        return this.a;
    }

    public void setAge(Integer age) {
        this.a = age;
    }

    public Gender getGender() {
        return this.b;
    }

    public void setGender(Gender gender) {
        this.b = gender;
    }

    public boolean isEmpty() {
        return this.a == null && this.b == null;
    }
}
