.class public Lcom/appsomniacs/da2/DA2Activity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "DA2Activity.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
.implements Lcom/amazon/device/ads/ExtendedAdListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static ANDROID_ID:Ljava/lang/String; = null

.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "TVgOsg3llgWk1IF6HKUGCAEtPFZvUc88yaMAZyvauImCYY0NsT2RZtbNClMlBT070FOI1LGORZiyVoK8Mv7DVwrIY1yMzGzgWsLftWIUcvxP8J96PTSKJx8R7cEzrPf3nEDC4J4niPD8STqAYBNXyzfOHCthu01YaytIDCxlKv4SbIC8Ipgv4VnOO0BQwX4vU04jgETozZqUbNIBB44uxgUGcwuGilKVvaTRn9tUGJKroyqHULEuyULiPcfEJKKmCvWCCehVrf3akHqhDfKBorw4rk7u64PCeJisAZTO7siBu4Mevk32QcxIbKk5hYhWYbV3FTafPtymHySGM0AK1a1x5HENyPL3nqvv7kkM9ANUhXthchpzY3OmaVqeGONl3Gx8ESwB"

.field private static final BASE64_PUBLIC_KEY0:Ljava/lang/String; = "!@#$1234%^&*5678()90THIS_IS_A_SILLY_FILLER_TEXT_!@#$1234%^&*5678()90"

.field private static final BASE64_PUBLIC_KEY1:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVr"

.field private static final BASE64_PUBLIC_KEY2:Ljava/lang/String; = "!@#$1234%^&*5678()90NERD_BLAH_BLAH_!@#$1234%^&*5678()90"

.field private static final BASE64_PUBLIC_KEY3:Ljava/lang/String; = "oQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHiv"

.field private static final BASE64_PUBLIC_KEY4:Ljava/lang/String; = "lwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWr"

.field private static final BASE64_PUBLIC_KEY5:Ljava/lang/String; = "!@#$1234%^&*5678()90_HACKERS_SUCK_MY_BOTTOM_LINE_!@#$1234%^&*5678()90"

.field private static final BASE64_PUBLIC_KEY6:Ljava/lang/String; = "X3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB"

.field private static final BASE64_PUBLIC_KEY7:Ljava/lang/String; = "GO_AWAY_PLEASE_!@#$1234%^&*5678()90"

.field private static PHONE_ID:Ljava/lang/String; = null

.field private static RC_SIGN_IN:I = 0x0

.field private static final REQUEST_CODE_EMAIL:I = 0x34b20a

.field private static final SALT:[B

.field private static SALTSTEP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DA2"

.field private static USER_ID:Ljava/lang/String;

.field private static mBillingStatusMessage:Ljava/lang/String;

.field private static m_hasPassedFLC:Z

.field private static m_hasPassedRLC:Z

.field private static m_rnd:Ljava/security/SecureRandom;

.field private static m_skuPriceLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field amazonGameFeatures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/amazon/ags/api/AmazonGamesFeature;",
            ">;"
        }
    .end annotation
.end field

.field private da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

.field private mAutoStartSignInFlow:Z

.field private mCountOfIapHelperAsyncOperations:I

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field mGooglePlayIabConsumeFinishedListener:Lcom/android/util/IabHelper$OnConsumeFinishedListener;

.field private mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

.field private mGooglePlayIabHelper:Lcom/android/util/IabHelper;

.field private mGooglePlayIabHelper2:Lcom/android/util/IabHelper;

.field private mGooglePlayIabHelperDestroyed:Z

.field mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

.field private mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private mGpgSignInClicked:Z

.field private mHandler:Landroid/os/Handler;

.field private mResolvingConnectionFailure:Z

.field private m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

.field private m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

.field private m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

.field private m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

.field private m_analyticsAttributeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_appLayout:Landroid/widget/FrameLayout;

.field private m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

.field private m_hasAmazonGamesClientInitializedJni:Z

.field private m_isAmazonInterstitialAdReady:Z

.field private m_isAppLovinInterstitialAdReady:Z

.field m_isGooglePlayIabSetup:Z

.field private m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private m_mopubView:Lcom/mopub/mobileads/MoPubView;

.field private m_relAppLayout:Landroid/widget/RelativeLayout;

.field private m_relBannerParam:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedFLC:Z

    .line 152
    sput-boolean v4, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    .line 180
    const/16 v1, 0x2329

    sput v1, Lcom/appsomniacs/da2/DA2Activity;->RC_SIGN_IN:I

    .line 239
    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 240
    const/16 v1, 0x14

    new-array v1, v1, [B

    sget v2, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 242
    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/4 v2, 0x1

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 243
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 244
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 245
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 246
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 247
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 248
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 249
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 250
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x9

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 251
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 252
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 253
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 254
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 255
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 256
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 257
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x10

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 258
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x11

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 259
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 260
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    sget v3, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/appsomniacs/da2/DA2Activity;->SALTSTEP:I

    .line 261
    invoke-static {v3}, Lcom/appsomniacs/da2/DA2Activity;->getRndSaltyByte(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->SALT:[B

    .line 808
    :try_start_0
    const-string v1, "AmazonGamesJni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    :try_start_1
    const-string v1, "kamcord"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 822
    :goto_1
    const-string v1, "cocos2dcpp"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2038
    const-string v1, ""

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    return-void

    .line 809
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 810
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmazonGamesJni Lib not found. Which is ok if not building for Amazon...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 816
    :catch_1
    move-exception v0

    .line 817
    const-string v1, "DA2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kamcord Lib not found. \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 181
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 182
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    .line 183
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 186
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 188
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relBannerParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 189
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    .line 191
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 192
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 193
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 194
    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 195
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 196
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 197
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 391
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    .line 393
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$2;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$2;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    .line 415
    sget-object v0, Lcom/amazon/ags/api/AmazonGamesFeature;->Achievements:Lcom/amazon/ags/api/AmazonGamesFeature;

    sget-object v1, Lcom/amazon/ags/api/AmazonGamesFeature;->Leaderboards:Lcom/amazon/ags/api/AmazonGamesFeature;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->amazonGameFeatures:Ljava/util/EnumSet;

    .line 2043
    iput-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    .line 2178
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$10;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$10;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

    .line 2589
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$16;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$16;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 2659
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$17;

    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity$17;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabConsumeFinishedListener:Lcom/android/util/IabHelper$OnConsumeFinishedListener;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->displayResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/appsomniacs/da2/DA2Activity;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/appsomniacs/da2/DA2Activity;Lcom/amazon/ags/api/AmazonGamesClient;)Lcom/amazon/ags/api/AmazonGamesClient;
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Lcom/amazon/ags/api/AmazonGamesClient;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    return-object p1
.end method

.method static synthetic access$300(Lcom/appsomniacs/da2/DA2Activity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    return v0
.end method

.method static synthetic access$302(Lcom/appsomniacs/da2/DA2Activity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_hasAmazonGamesClientInitializedJni:Z

    return p1
.end method

.method static synthetic access$400(Lcom/appsomniacs/da2/DA2Activity;)Lcom/android/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    return-void
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 131
    sput-object p0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static allowFullUtf8InJniCalls()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 959
    :try_start_0
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, "stringArray":[Ljava/lang/String;
    array-length v6, v3

    new-array v1, v6, [I

    .line 961
    .local v1, "intArray":[I
    array-length v6, v3

    if-lez v6, :cond_0

    .line 962
    const/4 v6, 0x0

    aget-object v2, v3, v6

    .line 963
    .local v2, "numberAsString":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v6

    .line 964
    const/4 v6, 0x0

    aget v6, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 968
    .end local v1    # "intArray":[I
    .end local v2    # "numberAsString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "intArray":[I
    .restart local v2    # "numberAsString":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 964
    goto :goto_0

    .line 967
    .end local v1    # "intArray":[I
    .end local v2    # "numberAsString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private analyticsAddAttributeMapValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    return-void
.end method

.method private analyticsBeginSection(Ljava/lang/String;)V
    .locals 3
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 2696
    if-nez p1, :cond_0

    .line 2708
    :goto_0
    return-void

    .line 2699
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2700
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;

    sget-object v2, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    invoke-virtual {v1, v2}, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 2701
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 2702
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 2703
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 2706
    .end local v0    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_1
    invoke-static {p1}, Lcom/inmobi/analytics/InMobiAnalytics;->beginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private analyticsClearAttributeMapValue()V
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2792
    return-void
.end method

.method private analyticsEndSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 2711
    if-nez p1, :cond_0

    .line 2718
    :goto_0
    return-void

    .line 2716
    :cond_0
    invoke-static {p1}, Lcom/inmobi/analytics/InMobiAnalytics;->endSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private analyticsEventOccured(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 2721
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2739
    :cond_0
    :goto_0
    return-void

    .line 2724
    :cond_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/inmobi/analytics/InMobiAnalytics;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 2726
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2728
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;

    sget-object v2, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    invoke-virtual {v1, v2}, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 2729
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 2732
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "Event"

    .line 2733
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 2734
    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 2736
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 2732
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private analyticsRemoveAttributeMapValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2787
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_analyticsAttributeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    return-void
.end method

.method public static completedPurchaseValidation(ZILjava/lang/String;)V
    .locals 4
    .param p0, "success"    # Z
    .param p1, "code"    # I
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 2111
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2112
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2113
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2114
    invoke-direct {v0, p0, p1, p2}, Lcom/appsomniacs/da2/DA2Activity;->trySignalCompletedPurchaseValidation(ZILjava/lang/String;)V

    .line 2118
    :goto_0
    return-void

    .line 2117
    :cond_0
    const-string v2, "DA2"

    const-string v3, "Activity not found! Trying to signal completion of purchase validation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static convertCStringToJniSafeString([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 2800
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2805
    :goto_0
    return-object v1

    .line 2802
    :catch_0
    move-exception v0

    .line 2803
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "DA2"

    const-string v3, "Couldn\'t convert the jbyteArray to UTF-8"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const-string v1, "UTF8_CONVERT_FAIL"

    goto :goto_0
.end method

.method public static createAdBanner()V
    .locals 4

    .prologue
    .line 1319
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1320
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1321
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1322
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1323
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAdBanner()V

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$5;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$5;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized decrementIapAsyncOperationsInProgressCounter()V
    .locals 2

    .prologue
    .line 2269
    monitor-enter p0

    :try_start_0
    const-string v0, "DA2"

    const-string v1, "IapAsyncOperationInProgressCounter--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    .line 2271
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 2278
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2274
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-eqz v0, :cond_0

    .line 2275
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabTryDisposeIabHelper()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private destroyAdBanner()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1242
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 1244
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 1249
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 1251
    :cond_1
    return-void
.end method

.method private destroyInterstitial()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1255
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 1256
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 1261
    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1263
    :cond_1
    return-void
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$1;

    invoke-direct {v1, p0, p1}, Lcom/appsomniacs/da2/DA2Activity$1;-><init>(Lcom/appsomniacs/da2/DA2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getApplicationVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 828
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 829
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 830
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 832
    const-string v5, "?.?.?"

    .line 843
    :goto_0
    return-object v5

    .line 836
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 837
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 840
    .local v4, "packageName":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 841
    :catch_0
    move-exception v2

    .line 842
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 843
    const-string v5, "?.?.?"

    goto :goto_0
.end method

.method public static getBillingSystemFailureMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2040
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 2137
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2138
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2139
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2140
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->tryGetLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2142
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getRndHalfInt()I
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    .line 271
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private static getRndSaltyByte(I)I
    .locals 5
    .param p0, "step"    # I

    .prologue
    const/4 v4, 0x0

    .line 275
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 276
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    sput-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    .line 278
    :cond_0
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->m_rnd:Ljava/security/SecureRandom;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 279
    .local v0, "num":I
    add-int/lit8 v0, v0, -0x80

    .line 280
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Byte;

    int-to-byte v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    .line 281
    .local v1, "rndByte":[Ljava/lang/Byte;
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    return v2
.end method

.method private googlePlayIabSetup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2046
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2051
    :cond_1
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isGooglePlayIabSetup:Z

    if-nez v0, :cond_0

    .line 2055
    iput v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    .line 2056
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    .line 2057
    const-string v0, ""

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2062
    new-instance v0, Lcom/android/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/android/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    .line 2065
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    if-nez v1, :cond_2

    .line 2068
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const-string v1, "DA2"

    invoke-virtual {v0, v2, v1}, Lcom/android/util/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    .line 2077
    :goto_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    new-instance v1, Lcom/appsomniacs/da2/DA2Activity$9;

    invoke-direct {v1, p0}, Lcom/appsomniacs/da2/DA2Activity$9;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/util/IabHelper;->startSetup(Lcom/android/util/IabHelper$OnIabSetupFinishedListener;)V

    goto :goto_0

    .line 2071
    :cond_2
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const-string v1, "DA2"

    invoke-virtual {v0, v2, v1}, Lcom/android/util/IabHelper;->enableDebugLogging(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized googlePlayIabTryDisposeIabHelper()V
    .locals 1

    .prologue
    .line 2286
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_1

    .line 2296
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2292
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v0, :cond_0

    .line 2293
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    invoke-virtual {v0}, Lcom/android/util/IabHelper;->dispose()V

    .line 2294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static gpgNativeSignInCompleted()V
    .locals 0

    .prologue
    .line 2936
    return-void
.end method

.method public static gpgNativeSignedOutCompleted()V
    .locals 0

    .prologue
    .line 2932
    return-void
.end method

.method private gpgSignInStarted()V
    .locals 1

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 2915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 2920
    :goto_0
    return-void

    .line 2917
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 2918
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method private gpgSignOutStarted()V
    .locals 1

    .prologue
    .line 2924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 2925
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 2928
    :cond_0
    return-void
.end method

.method private declared-synchronized incrementIapAsyncOperationInProgressCounter()V
    .locals 2

    .prologue
    .line 2281
    monitor-enter p0

    :try_start_0
    const-string v0, "DA2"

    const-string v1, "IapAsyncOperationInProgressCounter++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    monitor-exit p0

    return-void

    .line 2281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initDefaultLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 668
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 671
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 695
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 700
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 705
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->invalidateOptionsMenu()V

    .line 706
    return-void

    .line 673
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 676
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_3

    .line 677
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x306

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1306

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static initGPGS()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2352
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayInstalled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2353
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    .line 2354
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2355
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_2

    .line 2356
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 2357
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryInitGPGS()Z

    move-result v6

    .line 2399
    :goto_0
    return v6

    .line 2359
    :cond_0
    new-instance v5, Lcom/appsomniacs/da2/DA2Activity$12;

    invoke-direct {v5}, Lcom/appsomniacs/da2/DA2Activity$12;-><init>()V

    .line 2373
    .local v5, "runner":Ljava/lang/Runnable;
    invoke-virtual {v0, v5}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2375
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2376
    :catch_0
    move-exception v3

    .line 2377
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v8, "Google Play Games Services failed to initialize: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2379
    .local v4, "errorMsg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2380
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2388
    :cond_1
    const-string v6, "DA2"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2389
    goto :goto_0

    .line 2382
    :catch_1
    move-exception v1

    .line 2385
    .local v1, "alertException":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "DA2"

    const-string v8, "Current Activity is not DA2"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2388
    const-string v6, "DA2"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2389
    goto :goto_0

    .line 2388
    .end local v1    # "alertException":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    const-string v6, "DA2"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 2389
    goto :goto_0

    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v5    # "runner":Ljava/lang/Runnable;
    :cond_2
    move v6, v7

    .line 2395
    goto :goto_0

    .end local v0    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v2    # "context":Landroid/content/Context;
    :cond_3
    move v6, v7

    .line 2399
    goto :goto_0
.end method

.method private initializeAdBanner()V
    .locals 1

    .prologue
    .line 1102
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonAdBanner()V

    .line 1107
    :goto_0
    return-void

    .line 1105
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubAdBanner()V

    goto :goto_0
.end method

.method private initializeAmazonAdBanner()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1178
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v2, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1182
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 1184
    new-instance v2, Lcom/amazon/device/ads/AdLayout;

    sget-object v3, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v2, p0, v3}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/app/Activity;Lcom/amazon/device/ads/AdSize;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    .line 1202
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 1203
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1206
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1209
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    .line 1210
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1214
    .local v1, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1217
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_relAppLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1223
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    goto :goto_0
.end method

.method private initializeAmazonInterstitial()V
    .locals 1

    .prologue
    .line 1052
    const-string v0, "161f45bad9264cc99d03eb2fad19cb21"

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    .line 1057
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1060
    :cond_0
    return-void
.end method

.method private initializeAppLovinInterstitial()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 992
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 994
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1004
    :cond_0
    return-void
.end method

.method private initializeInterstitial()V
    .locals 1

    .prologue
    .line 973
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 978
    :goto_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAppLovinInterstitial()V

    .line 979
    return-void

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    goto :goto_0
.end method

.method private initializeMopubAdBanner()V
    .locals 5

    .prologue
    .line 1110
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v2, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 1118
    new-instance v2, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    .line 1127
    const/4 v0, 0x0

    .line 1128
    .local v0, "adUnitId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1141
    .local v1, "scale":F
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appsomniacs/da2/DA2Activity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1142
    const-string v0, "815fbd0e71604d529b39bac95a90433a"

    .line 1143
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_1

    .line 1144
    const-string v0, "b1607fd0620f4213911cd6ba2bc44f16"

    .line 1146
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x2d8

    const/16 v4, 0x5a

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    .line 1161
    :goto_1
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, v0}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 1162
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 1163
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 1166
    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    .line 1169
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1172
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1151
    :cond_2
    const-string v0, "e920dac0641b4758a0b2d3e38c2a3448"

    .line 1152
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_3

    .line 1153
    const-string v0, "3f2c1a504f6c4ab9b1fe24a119b05a55"

    .line 1155
    :cond_3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x43a00000    # 320.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_1
.end method

.method private initializeMopubInterstitial()V
    .locals 3

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1014
    :cond_0
    const/4 v0, 0x0

    .line 1027
    .local v0, "adUnitId":Ljava/lang/String;
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appsomniacs/da2/DA2Activity;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    const-string v0, "9810efc33b5a4855b366a5976be60f40"

    .line 1030
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_1

    .line 1031
    const-string v0, "f69388d72eba447d89b2af7f98fd2d47"

    .line 1040
    :cond_1
    :goto_1
    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {v1, p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1041
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    goto :goto_0

    .line 1035
    :cond_2
    const-string v0, "2ed112180a4e4d8f9b0a2d995d019740"

    .line 1036
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v2, :cond_1

    .line 1037
    const-string v0, "7aab546884a7453eb756f8a55f4a1d49"

    goto :goto_1
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 6
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 891
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    .line 892
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 894
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v0, :cond_0

    .line 896
    const/4 v1, 0x0

    .line 910
    :goto_0
    return v1

    .line 900
    :cond_0
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 901
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 903
    .local v1, "app_installed":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    const/4 v1, 0x1

    goto :goto_0

    .line 906
    :catch_0
    move-exception v3

    .line 907
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBillingMechanismReady()Z
    .locals 4

    .prologue
    .line 1994
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1995
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1997
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1998
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapReady()Z

    move-result v2

    .line 2004
    .local v2, "result":Z
    :goto_0
    return v2

    .line 2001
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Billing mechanism is not ready."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2002
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public static isBillingPossible()Z
    .locals 4

    .prologue
    .line 1963
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1964
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1966
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1967
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsGpIapPossible()Z

    move-result v2

    .line 1973
    .local v2, "result":Z
    :goto_0
    return v2

    .line 1969
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Unable to validate billing mechanism (Invalid Context)."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 1970
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public static isConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1402
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1415
    .local v0, "manager":Landroid/net/ConnectivityManager;
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 1408
    .end local v0    # "manager":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1410
    .restart local v0    # "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1412
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1413
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isGooglePlayInstalled()Z
    .locals 6

    .prologue
    .line 855
    const/4 v2, 0x0

    .line 857
    .local v2, "googlePlayStoreInstalled":Z
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 858
    .local v3, "val":I
    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 867
    .end local v3    # "val":I
    :cond_0
    :goto_0
    return v2

    .line 858
    .restart local v3    # "val":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 859
    .end local v3    # "val":I
    :catch_0
    move-exception v1

    .line 860
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 861
    const-string v4, "DA2"

    const-string v5, "Error validating Google Play was installed."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 862
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 863
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 864
    const-string v4, "Error occurred trying to detect if Google Play Services is available."

    invoke-virtual {v0, v4}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isGpgReady()Z
    .locals 5

    .prologue
    .line 2942
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2943
    .local v2, "context":Landroid/content/Context;
    move-object v0, v2

    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    move-object v1, v0

    .line 2944
    .local v1, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-nez v1, :cond_0

    .line 2946
    const/4 v4, 0x0

    .line 2954
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .local v4, "result":Z
    :goto_0
    return v4

    .line 2948
    .end local v4    # "result":Z
    .restart local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    :cond_0
    invoke-direct {v1}, Lcom/appsomniacs/da2/DA2Activity;->tryIsGooglePlayGamesReady()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .restart local v4    # "result":Z
    goto :goto_0

    .line 2950
    .end local v1    # "activity":Lcom/appsomniacs/da2/DA2Activity;
    .end local v4    # "result":Z
    :catch_0
    move-exception v3

    .line 2952
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4    # "result":Z
    goto :goto_0
.end method

.method public static isIapOperationPending()Z
    .locals 4

    .prologue
    .line 2020
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2021
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2023
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2024
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapOperationPending()Z

    move-result v2

    .line 2030
    .local v2, "result":Z
    :goto_0
    return v2

    .line 2026
    .end local v2    # "result":Z
    :cond_0
    const-string v3, "Billing operation is pending."

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2027
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1087
    if-nez p0, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return v3

    .line 1088
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 1089
    .local v1, "xlarge":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 1091
    .local v0, "large":Z
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0    # "large":Z
    .end local v1    # "xlarge":Z
    :cond_3
    move v1, v3

    .line 1088
    goto :goto_1

    .restart local v1    # "xlarge":Z
    :cond_4
    move v0, v3

    .line 1089
    goto :goto_2
.end method

.method private loadAmazonInterstitial()V
    .locals 2

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v0, :cond_1

    .line 1064
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 1065
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/device/ads/InterstitialAd;->isAdShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1074
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    goto :goto_0
.end method

.method private loadAppLovinInterstitial()V
    .locals 0

    .prologue
    .line 1007
    return-void
.end method

.method private loadInterstitial()V
    .locals 1

    .prologue
    .line 982
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadAmazonInterstitial()V

    .line 984
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadAppLovinInterstitial()V

    .line 988
    :goto_0
    return-void

    .line 986
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadMopubInterstitial()V

    goto :goto_0
.end method

.method private loadMopubInterstitial()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 1046
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 1049
    return-void
.end method

.method private logUser()V
    .locals 2

    .prologue
    .line 423
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 424
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserIdentifier(Ljava/lang/String;)V

    .line 426
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserEmail(Ljava/lang/String;)V

    .line 429
    :cond_1
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 430
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->setUserName(Ljava/lang/String;)V

    .line 432
    :cond_2
    return-void
.end method

.method public static native nativeGetClaimedIdentity()Ljava/lang/String;
.end method

.method private static native nativeInitGPGS(Lcom/appsomniacs/da2/DA2Activity;)V
.end method

.method private static native nativeInitSession()V
.end method

.method private static native nativeIsPlatformAmazon()Z
.end method

.method public static native nativeOnActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method private static native nativeOnActivityDestroyed(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityPaused(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityPausedDueToScreenLock()V
.end method

.method public static native nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method private static native nativeOnActivityResumed(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method private static native nativeOnActivityStarted(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityStopped(Landroid/app/Activity;)V
.end method

.method private static native nativeOnActivityWillStop(Landroid/app/Activity;)V
.end method

.method private static native nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeResetInterstitial(Landroid/app/Activity;)V
.end method

.method private static native nativeSetActivity(Landroid/app/Activity;)V
.end method

.method public static native nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static openUri(Ljava/lang/String;)V
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 918
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 919
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 921
    :cond_0
    return-void
.end method

.method public static prepareInterstitial()V
    .locals 4

    .prologue
    .line 1359
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1360
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1361
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1362
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1363
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->initializeInterstitial()V

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$7;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$7;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 2537
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2538
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2539
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2540
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 2541
    invoke-direct {v0, p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->tryPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 2543
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$15;

    invoke-direct {v2, p0, p1}, Lcom/appsomniacs/da2/DA2Activity$15;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removeAdBanner()V
    .locals 4

    .prologue
    .line 1338
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1339
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1340
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1341
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1342
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$6;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$6;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static requestExit()V
    .locals 4

    .prologue
    .line 2309
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2310
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2311
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 2313
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryRequestExit()V

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2315
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$11;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$11;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static requestIdentity()V
    .locals 4

    .prologue
    .line 2427
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2428
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2429
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2430
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 2431
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryRequestIdentity()V

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2433
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$13;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$13;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static sessionRequestCompleted(Z)V
    .locals 4
    .param p0, "isSessionEstablished"    # Z

    .prologue
    .line 756
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 757
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 758
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 759
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 760
    invoke-virtual {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->trySessionRequestedCompletedSetup(Z)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$3;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$3;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setBannerPositionTopWithPadding(F)V
    .locals 3
    .param p1, "p_padding"    # F

    .prologue
    const/4 v2, -0x2

    .line 1228
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1230
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1231
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1233
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1235
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_appLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_bannerParam:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1236
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->refreshDrawableState()V

    .line 1238
    :cond_0
    return-void
.end method

.method public static setIdentity(Ljava/lang/String;)V
    .locals 4
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 926
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 927
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 928
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 929
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 930
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->trySetIdentity(Ljava/lang/String;)V

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$4;

    invoke-direct {v2, p0}, Lcom/appsomniacs/da2/DA2Activity$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setupAmazonIAPOnCreate()V
    .locals 2

    .prologue
    .line 654
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 656
    :cond_0
    new-instance v1, Lcom/amazon/iap/util/DA2IapManager;

    invoke-direct {v1, p0}, Lcom/amazon/iap/util/DA2IapManager;-><init>(Lcom/appsomniacs/da2/DA2Activity;)V

    iput-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    .line 657
    new-instance v0, Lcom/amazon/iap/util/DA2PurchasingListener;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-direct {v0, v1}, Lcom/amazon/iap/util/DA2PurchasingListener;-><init>(Lcom/amazon/iap/util/DA2IapManager;)V

    .line 659
    .local v0, "amazonPurchasingListener":Lcom/amazon/iap/util/DA2PurchasingListener;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    goto :goto_0
.end method

.method private setupGooglePlayLicenceValidation()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 303
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    .line 325
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appsomniacs/da2/DA2Activity$AppsomniacsGooglePlayLicenseCheckerCallback;-><init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity$1;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 313
    new-instance v0, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v1, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v2, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->SALT:[B

    .line 317
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 321
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 323
    sput-boolean v6, Lcom/appsomniacs/da2/DA2Activity;->m_hasPassedRLC:Z

    goto :goto_0
.end method

.method public static showInterstitial()V
    .locals 4

    .prologue
    .line 1380
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1381
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1382
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 1383
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1384
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$8;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$8;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static startingPurchaseValidation(Ljava/lang/String;)V
    .locals 4
    .param p0, "sku"    # Ljava/lang/String;

    .prologue
    .line 2098
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2099
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2100
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2101
    invoke-direct {v0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 2105
    :goto_0
    return-void

    .line 2104
    :cond_0
    const-string v2, "DA2"

    const-string v3, "Activity not found! Trying to signal completion of purchase validation."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static static_analyticsBeginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 2742
    if-nez p0, :cond_1

    .line 2751
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2744
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2745
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2746
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsBeginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static static_analyticsEndSection(Ljava/lang/String;)V
    .locals 3
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 2754
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return-void

    .line 2755
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2756
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2757
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2758
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsEndSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static static_analyticsEventOccured(Ljava/lang/String;)V
    .locals 3
    .param p0, "eventName"    # Ljava/lang/String;

    .prologue
    .line 2766
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2767
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2768
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2769
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2770
    invoke-direct {v0, p0}, Lcom/appsomniacs/da2/DA2Activity;->analyticsBeginSection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryGetLocalizedPurchasePrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 2149
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2156
    :cond_0
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2158
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->m_skuPriceLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2160
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private tryInitGPGS()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2338
    :try_start_0
    const-string v4, "DA2"

    const-string v5, "INITIALIZING GPGS"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeInitGPGS(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 2340
    const-string v4, "DA2"

    const-string v5, "INITIALIZING GPGS Completed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    :goto_0
    return v2

    .line 2342
    :catch_0
    move-exception v0

    .line 2343
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Google Play Games Services failed to initialize: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2344
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "DA2"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    move v2, v3

    .line 2346
    goto :goto_0
.end method

.method private tryIsGooglePlayGamesReady()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2963
    :try_start_0
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2968
    :cond_0
    :goto_0
    return v2

    .line 2964
    :catch_0
    move-exception v0

    .line 2965
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Google Play Games Services authentication crash detected."

    .line 2966
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "DA2"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2967
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryIsGpIapPossible()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1977
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1978
    iget v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-nez v2, :cond_0

    .line 1987
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1978
    goto :goto_0

    .line 1980
    :cond_1
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1981
    :cond_2
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-nez v2, :cond_3

    const-string v2, "mGooglePlayIabHelper == null"

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 1982
    :cond_3
    sget-object v2, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, "mBillingStatusMessage == null"

    invoke-virtual {p0, v2}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    .line 1983
    :cond_4
    const-string v2, "Billing is not initialized. Close the app, remove any modifications or blockers (re-install), and retry. %s"

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    move v0, v1

    .line 1984
    goto :goto_0

    .line 1987
    :cond_5
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private tryIsIapOperationPending()Z
    .locals 1

    .prologue
    .line 2034
    iget v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mCountOfIapHelperAsyncOperations:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryIsIapReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2008
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2014
    :goto_0
    return v0

    .line 2011
    :cond_0
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v1, :cond_1

    .line 2012
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryIsIapOperationPending()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelperDestroyed:Z

    if-nez v1, :cond_1

    .line 2014
    .local v0, "iabReadyState":Z
    :goto_1
    goto :goto_0

    .line 2012
    .end local v0    # "iabReadyState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private tryPurchaseItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 2451
    :try_start_0
    const-string v0, ""

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    .line 2453
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2457
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2460
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isBillingMechanismReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabPurchaseFinishedListener:Lcom/android/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/android/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2466
    :catch_0
    move-exception v6

    .line 2469
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private tryRequestExit()V
    .locals 0

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->finish()V

    .line 2304
    return-void
.end method

.method private tryRequestIdentity()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2407
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 2423
    :goto_0
    return-void

    .line 2414
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const-string v4, "Assign ownership:"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 2416
    .local v9, "intent":Landroid/content/Intent;
    const v0, 0x34b20a

    invoke-virtual {p0, v9, v0}, Lcom/appsomniacs/da2/DA2Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2417
    .end local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 2420
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string v0, "Google Play Services Required to make purchases at this time. Actual Error:\n%s"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->complain(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trySetIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 946
    sput-object p1, Lcom/appsomniacs/da2/DA2Activity;->USER_ID:Ljava/lang/String;

    .line 947
    sget-object v0, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetIdentity(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->logUser()V

    .line 950
    return-void
.end method

.method private tryShowInterstitial()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1266
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1267
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-nez v2, :cond_0

    .line 1268
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeAmazonInterstitial()V

    .line 1269
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    move-result v0

    .line 1311
    :goto_0
    return v0

    .line 1273
    :cond_0
    iget-boolean v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    if-eqz v2, :cond_1

    .line 1274
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1275
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    move-result v0

    goto :goto_0

    .line 1278
    :cond_1
    const/4 v0, 0x0

    .line 1279
    .local v0, "result":Z
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/amazon/device/ads/InterstitialAd;->isLoading()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/amazon/device/ads/InterstitialAd;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1281
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    move-result v0

    .line 1287
    :cond_2
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1289
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Landroid/app/Activity;)V

    .line 1290
    const/4 v0, 0x1

    .line 1291
    iput-boolean v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    goto :goto_0

    .line 1296
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1302
    .end local v0    # "result":Z
    :cond_4
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v2, :cond_5

    .line 1303
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeMopubInterstitial()V

    .line 1304
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryShowInterstitial()Z

    move-result v0

    goto :goto_0

    .line 1306
    :cond_5
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1308
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    move-result v0

    goto :goto_0

    .line 1310
    :cond_6
    iget-object v2, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    move v0, v1

    .line 1311
    goto :goto_0
.end method

.method private trySignalCompletedPurchaseValidation(ZILjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "code"    # I
    .param p3, "sku"    # Ljava/lang/String;

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    :try_start_0
    const-string v0, "Purchase Validation Failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    :cond_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    .line 2131
    return-void

    .line 2129
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    throw v0
.end method

.method public static verifyInventory()V
    .locals 4

    .prologue
    .line 2516
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 2517
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 2518
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_0

    .line 2519
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 2520
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->tryVerifyInventory()V

    .line 2533
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    new-instance v2, Lcom/appsomniacs/da2/DA2Activity$14;

    invoke-direct {v2}, Lcom/appsomniacs/da2/DA2Activity$14;-><init>()V

    invoke-virtual {v0, v2}, Lcom/appsomniacs/da2/DA2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 1808
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 1768
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1769
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 1778
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1779
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 1744
    invoke-static {p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAppLovinInterstitialAdReady:Z

    .line 1746
    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    :cond_0
    return-void
.end method

.method alert(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 783
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    .local v0, "bld":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 785
    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 787
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    .end local v0    # "bld":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 790
    const-string v2, "DA2"

    const-string v3, "Error showing alert(\"%s\") caused by: \"%s\""

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 777
    const-string v0, "DA2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** DA2 Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 1758
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1759
    return-void
.end method

.method public forceCrash(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This is a crash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1484
    sget v1, Lcom/appsomniacs/da2/DA2Activity;->RC_SIGN_IN:I

    if-ne p1, v1, :cond_0

    .line 1485
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 1486
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 1487
    if-ne p2, v2, :cond_3

    .line 1488
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 1501
    :cond_0
    :goto_0
    const v1, 0x34b20a

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1502
    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    .local v0, "accountName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/appsomniacs/da2/DA2Activity;->trySetIdentity(Ljava/lang/String;)V

    .line 1507
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v1, :cond_4

    .line 1509
    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1514
    invoke-static {p0, p1, p2, p3}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 1522
    :cond_2
    :goto_1
    return-void

    .line 1496
    :cond_3
    const v1, 0x7f070052

    invoke-static {p0, p1, p2, v1}, Lcom/google/example/games/basegameutils/BaseGameUtils;->showActivityResultError(Landroid/app/Activity;III)V

    goto :goto_0

    .line 1520
    :cond_4
    const-string v1, " Upon handling an activity result the IAB system was not present"

    sput-object v1, Lcom/appsomniacs/da2/DA2Activity;->mBillingStatusMessage:Ljava/lang/String;

    goto :goto_1
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 1821
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1822
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 1834
    :cond_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1845
    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 1855
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;

    .prologue
    .line 1894
    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 2
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "error"    # Lcom/amazon/device/ads/AdError;

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne p1, v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z

    .line 1867
    :cond_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1868
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "adProperties"    # Lcom/amazon/device/ads/AdProperties;

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonInterstitialAd:Lcom/amazon/device/ads/InterstitialAd;

    if-ne v0, p1, :cond_0

    .line 1878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_isAmazonInterstitialAdReady:Z

    .line 1880
    :cond_0
    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "ad"    # Lcom/amazon/device/ads/Ad;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1889
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1725
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1728
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 1902
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 1907
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 1912
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;
    .param p2, "moPubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 1918
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0
    .param p1, "moPubView"    # Lcom/mopub/mobileads/MoPubView;

    .prologue
    .line 1923
    if-eqz p1, :cond_0

    .line 1926
    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2871
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v3, 0x0

    .line 2883
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    if-eqz v0, :cond_1

    .line 2910
    :cond_0
    :goto_0
    return-void

    .line 2890
    :cond_1
    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    if-eqz v0, :cond_0

    .line 2891
    :cond_2
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mAutoStartSignInFlow:Z

    .line 2892
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGpgSignInClicked:Z

    .line 2893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    .line 2899
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const v1, 0x7f070053

    const-string v2, "Unable to resolve connection with Google Play Games Services, try again later"

    invoke-static {p0, v0, p1, v1, v2}, Lcom/google/example/games/basegameutils/BaseGameUtils;->resolveConnectionFailure(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/ConnectionResult;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2906
    iput-boolean v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mResolvingConnectionFailure:Z

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 2879
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 435
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_8

    .line 443
    const-string v3, "AAfbeca5a9981874b750bc146f815eea5061fe838c"

    invoke-static {v3}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v3

    .line 444
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :goto_0
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Lio/fabric/sdk/android/Kit;

    const/4 v4, 0x0

    new-instance v5, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v5}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v5}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 458
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->logUser()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 467
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    .line 468
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->logUser()V

    .line 480
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 481
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_0

    .line 483
    const-string v3, "Platform Debug Build Check"

    const-string v4, "Built for Amazon"

    invoke-virtual {p0, v3, v4}, Lcom/appsomniacs/da2/DA2Activity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-nez v3, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_a

    .line 503
    const-string v3, "d2728786e8244c2bacc592337ce0fe63"

    invoke-static {p0, v3}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 513
    :cond_1
    :goto_2
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "permissionCheck":I
    if-nez v1, :cond_c

    .line 516
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    .line 517
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_ID_NULL_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    .line 557
    :cond_2
    :goto_3
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-nez v3, :cond_3

    .line 560
    :try_start_3
    new-instance v3, Lcom/mopub/mobileads/MoPubConversionTracker;

    invoke-direct {v3}, Lcom/mopub/mobileads/MoPubConversionTracker;-><init>()V

    invoke-virtual {v3, p0}, Lcom/mopub/mobileads/MoPubConversionTracker;->reportAppOpen(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 566
    :cond_3
    :goto_4
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeSetActivity(Landroid/app/Activity;)V

    .line 569
    :try_start_4
    invoke-static {p0}, Lorg/go3k/utilities/ZYWebView;->setActivity(Landroid/app/Activity;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 574
    :goto_5
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->isGooglePlayInstalled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 576
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;

    sget-object v4, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;->APP_TRACKER:Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;

    invoke-virtual {v3, v4}, Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication;->getTracker(Lcom/appsomniacs/core/GoogleAnalyticsInfusedApplication$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v2

    .line 577
    .local v2, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v2, v6}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 578
    const-string v3, "Start"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 579
    new-instance v3, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 581
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeInitGPGS(Lcom/appsomniacs/da2/DA2Activity;)V

    .line 584
    .end local v2    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_4
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_5

    .line 590
    :cond_5
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 606
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_6

    .line 610
    :cond_6
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 611
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->setupAmazonIAPOnCreate()V

    .line 634
    :cond_7
    :goto_6
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initializeInterstitial()V

    .line 636
    invoke-static {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 637
    return-void

    .line 447
    .end local v1    # "permissionCheck":I
    :cond_8
    :try_start_5
    const-string v3, "AA3f2ddc0c0c2fcb54d2484561ab0776a4ad76718c"

    invoke-static {v3}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v3

    .line 448
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v3, "DA2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 457
    const/4 v4, 0x2

    :try_start_7
    new-array v4, v4, [Lio/fabric/sdk/android/Kit;

    const/4 v5, 0x0

    new-instance v6, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v6}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/crashlytics/android/ndk/CrashlyticsNdk;

    invoke-direct {v6}, Lcom/crashlytics/android/ndk/CrashlyticsNdk;-><init>()V

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 458
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->logUser()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 462
    throw v3

    .line 459
    :catch_1
    move-exception v0

    .line 461
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "DA2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    throw v0

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 461
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "DA2"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    throw v0

    .line 488
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v3, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 490
    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    .line 491
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v3

    .line 493
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v3

    iput-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    goto/16 :goto_1

    .line 506
    :cond_a
    :try_start_8
    const-string v3, "2fbee7e9bcc5474496fb292497a6e0a6"

    invoke-static {p0, v3}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_2

    .line 509
    :catch_3
    move-exception v0

    .line 510
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "permissionCheck":I
    :cond_b
    sget-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_ID_EMPTY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    goto/16 :goto_3

    .line 526
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHONE_ID_PERMISSION_DENIED_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/appsomniacs/da2/DA2Activity;->ANDROID_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/appsomniacs/da2/DA2Activity;->PHONE_ID:Ljava/lang/String;

    goto/16 :goto_3

    .line 561
    :catch_4
    move-exception v0

    .line 562
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 571
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v4, :cond_7

    goto/16 :goto_6
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .locals 7

    .prologue
    const/4 v1, 0x5

    .line 797
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 801
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1604
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    :goto_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabTryDisposeIabHelper()V

    .line 1613
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_1

    .line 1619
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayLicenceChecker2:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 1621
    :cond_1
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyAdBanner()V

    .line 1622
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->destroyInterstitial()V

    .line 1624
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 1627
    invoke-static {}, Lcom/inmobi/analytics/InMobiAnalytics;->endSessionManually()V

    .line 1631
    :cond_2
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->shutdown()V

    .line 1633
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 1636
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonAdView:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    .line 1640
    :cond_3
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityDestroyed(Landroid/app/Activity;)V

    .line 1641
    return-void

    .line 1608
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 1933
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 1939
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "mopubErrorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_mopubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 1945
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 1950
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 1955
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1956
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1533
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onPause() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 1537
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1542
    :goto_0
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesClient:Lcom/amazon/ags/api/AmazonGamesClient;

    if-eqz v0, :cond_0

    .line 1544
    invoke-static {}, Lcom/amazon/ags/api/AmazonGamesClient;->release()V

    .line 1547
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2IapManager;->deactivate()V

    .line 1551
    :cond_1
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityPaused(Landroid/app/Activity;)V

    .line 1553
    return-void

    .line 1538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1573
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onResume() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 1577
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 1580
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1585
    :goto_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->m_amazonGamesCallback:Lcom/amazon/ags/api/AmazonGamesCallback;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity;->amazonGameFeatures:Ljava/util/EnumSet;

    invoke-static {p0, v0, v1}, Lcom/amazon/ags/api/AmazonGamesClient;->initialize(Landroid/app/Activity;Lcom/amazon/ags/api/AmazonGamesCallback;Ljava/util/EnumSet;)V

    .line 1589
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->da2AmazonIapManager:Lcom/amazon/iap/util/DA2IapManager;

    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2IapManager;->activate()V

    .line 1590
    const-string v0, "DA2"

    const-string v1, "onResume: call getUserData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 1593
    const-string v0, "DA2"

    const-string v1, "onResume: getPurchaseUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 1597
    :cond_0
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityResumed(Landroid/app/Activity;)V

    .line 1599
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onResume() call ending."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return-void

    .line 1581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1645
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1646
    invoke-static {p0, p1}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1647
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    .line 1651
    const-string v3, "DA2"

    const-string v4, "DA2Activity.onStart() called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 1654
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v3, :cond_0

    .line 1655
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 1658
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mHandler:Landroid/os/Handler;

    .line 1660
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 1663
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 1665
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->loadInterstitial()V

    .line 1667
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 1670
    invoke-static {}, Lcom/inmobi/analytics/InMobiAnalytics;->startSessionManually()V

    .line 1673
    :cond_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1675
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v2

    .line 1677
    .local v2, "requestId":Lcom/amazon/device/iap/model/RequestId;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1678
    .local v1, "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/amazon/iap/util/DA2Sku;->values()[Lcom/amazon/iap/util/DA2Sku;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 1679
    .local v0, "mySku":Lcom/amazon/iap/util/DA2Sku;
    invoke-virtual {v0}, Lcom/amazon/iap/util/DA2Sku;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1678
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1681
    .end local v0    # "mySku":Lcom/amazon/iap/util/DA2Sku;
    :cond_2
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 1685
    .end local v1    # "productSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "requestId":Lcom/amazon/device/iap/model/RequestId;
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    :goto_1
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeInitSession()V

    .line 1691
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityStarted(Landroid/app/Activity;)V

    .line 1692
    return-void

    .line 1686
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1696
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityWillStop(Landroid/app/Activity;)V

    .line 1697
    const-string v0, "DA2"

    const-string v1, "DA2Activity.onStop() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 1704
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 1712
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 1715
    invoke-static {}, Lcom/inmobi/analytics/InMobiAnalytics;->endSessionManually()V

    .line 1717
    :cond_1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 1718
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityStopped(Landroid/app/Activity;)V

    .line 1719
    return-void

    .line 1705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1526
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->initDefaultLayout()V

    .line 1528
    return-void
.end method

.method protected raiseScreenStateChange()V
    .locals 4

    .prologue
    .line 1557
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    move-object v0, v1

    .line 1558
    check-cast v0, Lcom/appsomniacs/da2/DA2Activity;

    .line 1559
    .local v0, "activity":Lcom/appsomniacs/da2/DA2Activity;
    if-eqz v0, :cond_1

    .line 1560
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1561
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeOnActivityPausedDueToScreenLock()V

    .line 1569
    :goto_0
    return-void

    .line 1563
    :cond_0
    invoke-virtual {v0}, Lcom/appsomniacs/da2/DA2Activity;->raiseScreenStateChange()V

    goto :goto_0

    .line 1567
    :cond_1
    const-string v2, "DA2"

    const-string v3, "Unable to raise screen state change to main thread."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "receipt"    # Ljava/lang/String;
    .param p2, "sku"    # Ljava/lang/String;

    .prologue
    .line 2330
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lcom/appsomniacs/da2/DA2Activity;->nativeRegisterPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    :cond_0
    return-void
.end method

.method trySessionRequestedCompletedSetup(Z)V
    .locals 4
    .param p1, "isSessionEstablished"    # Z

    .prologue
    .line 710
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->tryVerifyInventory()V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->setupGooglePlayLicenceValidation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 727
    if-eqz p1, :cond_0

    .line 730
    :try_start_1
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->googlePlayIabSetup()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 735
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 742
    :catch_1
    move-exception v1

    .line 743
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/appsomniacs/da2/DA2Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    if-eqz v3, :cond_2

    .line 747
    :cond_2
    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 722
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 724
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public tryVerifyInventory()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2477
    :try_start_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->nativeIsPlatformAmazon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2479
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2481
    :cond_1
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    if-eqz v3, :cond_0

    .line 2487
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    .local v2, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "com.chadtowns.da2.propack"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
    const-string v3, "com.chadtowns.da2.battlepack1"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2494
    const-string v3, "com.chadtowns.da2.battlepack2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2495
    const-string v3, "com.chadtowns.da2.battlepack3"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2496
    const-string v3, "com.chadtowns.da2.battlepack4"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2500
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->incrementIapAsyncOperationInProgressCounter()V

    .line 2501
    iget-object v3, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabHelper:Lcom/android/util/IabHelper;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/appsomniacs/da2/DA2Activity;->mGooglePlayIabGotInventoryListener:Lcom/android/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/android/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2505
    .end local v2    # "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 2506
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity;->decrementIapAsyncOperationsInProgressCounter()V

    .line 2507
    const-string v3, "Unable to verify purchases: \"%s\" Please restart the application. If this continues please capture this screen and contact support@appsomniacs.com"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2508
    .local v1, "msg":Ljava/lang/String;
    const-string v3, "DA2"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2510
    invoke-virtual {p0, v1}, Lcom/appsomniacs/da2/DA2Activity;->alert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 1789
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 1798
    invoke-static {p0}, Lcom/appsomniacs/da2/DA2Activity;->nativeResetInterstitial(Landroid/app/Activity;)V

    .line 1799
    return-void
.end method
