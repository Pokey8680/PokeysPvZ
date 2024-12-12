.class public Lcom/ea/thirdparty/adj/GoogleAds;
.super Ljava/lang/Object;
.source "GoogleAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;
    }
.end annotation


# static fields
.field public static final BANNER:I = 0x0

.field public static final BOTTOM:I = 0x4

.field public static final FULL_BANNER:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEADERBOARD:I = 0x2

.field public static final LEFT:I = 0x10

.field private static LOG_DEBUG:Z = false

.field private static LOG_ERROR:Z = false

.field public static final MEDIUM_RECTANGLE:I = 0x3

.field public static final RIGHT:I = 0x20

.field public static final SMART_BANNER:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_FOR_CHILD_FALSE:I = 0x1

.field private static final TAG_FOR_CHILD_TRUE:I = 0x2

.field private static final TAG_FOR_CHILD_UNSPECIFIED:I = 0x0

.field public static final TOP:I = 0x8

.field public static final VCENTER:I = 0x2

.field public static final WIDE_SKYSCRAPPER:I = 0x5

.field private static instance:Lcom/ea/thirdparty/adj/GoogleAds;


# instance fields
.field private activity:Landroid/app/Activity;

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field private interstitial:Lcom/google/android/gms/ads/InterstitialAd;

.field private publisherBanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/doubleclick/PublisherAdView;",
            ">;"
        }
    .end annotation
.end field

.field private publisherInterstitial:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private tagForChildDirectedTreatment:I

.field private testDeviceId:Ljava/lang/String;

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    .line 586
    const-class v0, Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->TAG:Ljava/lang/String;

    .line 587
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_DEBUG:Z

    .line 588
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_ERROR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    .line 28
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->viewGroup:Landroid/view/ViewGroup;

    .line 29
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    .line 32
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherInterstitial:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 33
    iput-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->testDeviceId:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->tagForChildDirectedTreatment:I

    .line 538
    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 1
    .param p0, "debug"    # Ljava/lang/String;

    .prologue
    .line 598
    sget-boolean v0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    return-void
.end method

.method private static LOGE(Ljava/lang/String;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 606
    sget-boolean v0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_ERROR:Z

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    return-void
.end method

.method private static LOGE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 614
    sget-boolean v0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_ERROR:Z

    if-eqz v0, :cond_0

    .line 616
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 618
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->getAdViewById(Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->tagForChildDirectedTreatment:I

    return v0
.end method

.method static synthetic access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # Lcom/google/android/gms/ads/InterstitialAd;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherInterstitial:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    .locals 0
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherInterstitial:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-object p1
.end method

.method static synthetic access$1300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeOnAdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeOnAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeOnAdFailedToLoad(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeOnAdOpened(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeOnAdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ea/thirdparty/adj/GoogleAds;I)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->getAdSizeFromInt(I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->getPublisherAdViewById(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ea/thirdparty/adj/GoogleAds;I)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->getGravityFromInt(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->viewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/thirdparty/adj/GoogleAds;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->testDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method private getAdSizeFromInt(I)Lcom/google/android/gms/ads/AdSize;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 155
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    :goto_0
    return-object v0

    .line 145
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 147
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 149
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 151
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 153
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAdViewById(Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;
    .locals 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 208
    .local v1, "view":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getGravityFromInt(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "retGravity":I
    if-nez p1, :cond_1

    .line 172
    const/16 v0, 0x11

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 176
    or-int/lit8 v0, v0, 0x10

    .line 187
    :cond_2
    :goto_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    .line 189
    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 180
    or-int/lit8 v0, v0, 0x50

    goto :goto_1

    .line 182
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2

    .line 184
    or-int/lit8 v0, v0, 0x30

    goto :goto_1

    .line 191
    :cond_5
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_6

    .line 193
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 195
    :cond_6
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_0

    .line 197
    or-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method private getPublisherAdViewById(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 3
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 220
    .local v1, "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    .end local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeInit(Lcom/ea/thirdparty/adj/GoogleAds;)V
.end method

.method private static native nativeOnAdClosed(Ljava/lang/String;)V
.end method

.method private static native nativeOnAdFailedToLoad(Ljava/lang/String;I)V
.end method

.method private static native nativeOnAdLeftApplication(Ljava/lang/String;)V
.end method

.method private static native nativeOnAdLoaded(Ljava/lang/String;)V
.end method

.method private static native nativeOnAdOpened(Ljava/lang/String;)V
.end method

.method private static native nativeShutdown()V
.end method

.method public static onDestroy()V
    .locals 4

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy instance= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 114
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_3

    .line 116
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 118
    .local v1, "view":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 113
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 123
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 125
    .local v1, "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublisherAdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destroyed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    .end local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_2
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 130
    :cond_3
    return-void
.end method

.method public static onPause()V
    .locals 4

    .prologue
    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause instance= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_2

    .line 97
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 99
    .local v1, "view":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paused."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 105
    .local v1, "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublisherAdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " paused."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_2

    .line 109
    .end local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_2
    return-void
.end method

.method public static onResume()V
    .locals 4

    .prologue
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume instance= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 76
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 80
    .local v1, "view":Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v2, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, v2, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 86
    .local v1, "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublisherAdView with ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    goto :goto_2

    .line 90
    .end local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    :cond_2
    return-void
.end method

.method public static setDebugLevel(ZZ)V
    .locals 0
    .param p0, "debug"    # Z
    .param p1, "error"    # Z

    .prologue
    .line 592
    sput-boolean p0, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_DEBUG:Z

    .line 593
    sput-boolean p1, Lcom/ea/thirdparty/adj/GoogleAds;->LOG_ERROR:Z

    .line 594
    return-void
.end method

.method public static startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "group"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startup activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-direct {v0}, Lcom/ea/thirdparty/adj/GoogleAds;-><init>()V

    sput-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    .line 55
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p0, v0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    .line 56
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p1, v0, Lcom/ea/thirdparty/adj/GoogleAds;->viewGroup:Landroid/view/ViewGroup;

    .line 57
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ea/thirdparty/adj/GoogleAds;->banners:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ea/thirdparty/adj/GoogleAds;->publisherBanners:Ljava/util/List;

    .line 59
    sget-object v0, Lcom/ea/thirdparty/adj/GoogleAds;->instance:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->nativeInit(Lcom/ea/thirdparty/adj/GoogleAds;)V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public createBanner(Ljava/lang/String;II)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBanner( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ea/thirdparty/adj/GoogleAds$1;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    return-void
.end method

.method public createBanner(Ljava/lang/String;III)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "xpos"    # I
    .param p4, "ypos"    # I

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBanner( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT IMPLEMENTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public createInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInterstitial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$5;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$5;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method public destroyBanner(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyBanner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$2;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$2;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 317
    return-void
.end method

.method public destroyInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyInterstitial() interstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$6;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$6;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    return-void
.end method

.method public hideBanner(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideBanner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$4;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$4;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public setTestDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "debugDevice"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds;->testDeviceId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public showBanner(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBanner("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$3;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$3;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showInterstitial() interstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds;->interstitial:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->LOGD(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ea/thirdparty/adj/GoogleAds$7;

    invoke-direct {v1, p0, p1}, Lcom/ea/thirdparty/adj/GoogleAds$7;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public tagForChildDirectedTreatment(Z)V
    .locals 1
    .param p1, "tag"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/ea/thirdparty/adj/GoogleAds;->tagForChildDirectedTreatment:I

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
