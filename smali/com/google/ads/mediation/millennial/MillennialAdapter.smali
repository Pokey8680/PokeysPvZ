.class public final Lcom/google/ads/mediation/millennial/MillennialAdapter;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/millennial/MillennialAdapter$1;,
        Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;,
        Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID_BANNER:I = 0x31d1a90a


# instance fields
.field private adView:Lcom/millennialmedia/android/MMAdView;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field private interstitial:Lcom/millennialmedia/android/MMInterstitial;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    return-void
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/millennial/MillennialAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/ads/mediation/millennial/MillennialAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private createMMRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)Lcom/millennialmedia/android/MMRequest;
    .locals 5
    .param p1, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p2, "extras"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    .prologue
    .line 52
    new-instance v2, Lcom/millennialmedia/android/MMRequest;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMRequest;-><init>()V

    .line 54
    .local v2, "mmRequest":Lcom/millennialmedia/android/MMRequest;
    if-nez p2, :cond_0

    .line 55
    new-instance p2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    .end local p2    # "extras":Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    invoke-direct {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;-><init>()V

    .line 59
    .restart local p2    # "extras":Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "keywords":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 62
    const-string v3, ","

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMRequest;->setKeywords(Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getKeywords()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "mmKeywords":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 70
    move-object v0, v1

    .line 74
    :goto_0
    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMRequest;->setKeywords(Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setChildren(Ljava/lang/String;)V

    .line 92
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 98
    :cond_4
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getAge()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 99
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getAge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setAge(Ljava/lang/String;)V

    .line 103
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 105
    sget-object v3, Lcom/google/ads/mediation/millennial/MillennialAdapter$1;->$SwitchMap$com$google$ads$AdRequest$Gender:[I

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 125
    :cond_6
    :goto_1
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getGender()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 126
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getGender()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    .line 130
    :cond_7
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 131
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setIncome(Ljava/lang/String;)V

    .line 135
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 137
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 140
    :cond_9
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 141
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMRequest;->setUserLocation(Landroid/location/Location;)V

    .line 145
    :cond_a
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 146
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setZip(Ljava/lang/String;)V

    .line 150
    :cond_b
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 151
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setMarital(Ljava/lang/String;)V

    .line 155
    :cond_c
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 156
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setEthnicity(Ljava/lang/String;)V

    .line 160
    :cond_d
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 161
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setPolitics(Ljava/lang/String;)V

    .line 165
    :cond_e
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 166
    invoke-virtual {p2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setEducation(Ljava/lang/String;)V

    .line 169
    :cond_f
    return-object v2

    .line 72
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 107
    :pswitch_0
    const-string v3, "male"

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    :pswitch_1
    const-string v3, "female"

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :pswitch_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMRequest;->setGender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static dip(ILandroid/content/Context;)I
    .locals 3
    .param p0, "pixels"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7
    .param p1, "x0"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/ads/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/ads/AdSize;
    .param p5, "x4"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "x5"    # Lcom/google/ads/mediation/NetworkExtras;

    .prologue
    .line 32
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;
    .param p4, "adSize"    # Lcom/google/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    .prologue
    const/16 v3, 0x140

    const/16 v2, 0x35

    .line 206
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 208
    new-instance v1, Lcom/millennialmedia/android/MMAdView;

    invoke-direct {v1, p2}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    .line 212
    invoke-virtual {p4, v3, v2}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 214
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 216
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v1

    invoke-static {v2, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v0, "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, p5, p6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->createMMRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)Lcom/millennialmedia/android/MMRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 229
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v2, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 238
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 239
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const v2, 0x31d1a90a

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 242
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdView;->getAd()V

    .line 243
    return-void

    .line 219
    .end local v0    # "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setWidth(I)V

    .line 220
    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdView;->setHeight(I)V

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6
    .param p1, "x0"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/ads/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "x4"    # Lcom/google/ads/mediation/NetworkExtras;

    .prologue
    .line 32
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "extras"    # Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 252
    new-instance v0, Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {v0, p2}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    .line 253
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-direct {p0, p4, p5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->createMMRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)Lcom/millennialmedia/android/MMRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setMMRequest(Lcom/millennialmedia/android/MMRequest;)V

    .line 257
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    new-instance v1, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 259
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 260
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitial:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 266
    return-void
.end method
