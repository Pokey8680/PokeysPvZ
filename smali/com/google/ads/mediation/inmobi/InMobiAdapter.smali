.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapter;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/ads/mediation/MediationBannerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;,
        Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I

.field private static final ADSIZE_INMOBI_AD_UNIT_120X600:Lcom/google/ads/AdSize;

.field private static final ADSIZE_INMOBI_AD_UNIT_300X250:Lcom/google/ads/AdSize;

.field private static final ADSIZE_INMOBI_AD_UNIT_320X48:Lcom/google/ads/AdSize;

.field private static final ADSIZE_INMOBI_AD_UNIT_320X50:Lcom/google/ads/AdSize;

.field private static final ADSIZE_INMOBI_AD_UNIT_468X60:Lcom/google/ads/AdSize;

.field private static final ADSIZE_INMOBI_AD_UNIT_728X90:Lcom/google/ads/AdSize;

.field private static disableHardwareFlag:Ljava/lang/Boolean;

.field private static isAppInitialize:Ljava/lang/Boolean;


# instance fields
.field private adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

.field private adView:Lcom/inmobi/monetization/IMBanner;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$ads$AdRequest$Gender()[I
    .locals 3

    .prologue
    .line 36
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/ads/AdRequest$Gender;->values()[Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v2, 0x140

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/google/ads/AdSize;

    .line 43
    const/16 v1, 0x30

    .line 42
    invoke-direct {v0, v2, v1}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X48:Lcom/google/ads/AdSize;

    .line 44
    new-instance v0, Lcom/google/ads/AdSize;

    .line 45
    const/16 v1, 0x32

    .line 44
    invoke-direct {v0, v2, v1}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X50:Lcom/google/ads/AdSize;

    .line 46
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x1d4

    .line 47
    const/16 v2, 0x3c

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_468X60:Lcom/google/ads/AdSize;

    .line 48
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x2d8

    .line 49
    const/16 v2, 0x5a

    .line 48
    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_728X90:Lcom/google/ads/AdSize;

    .line 50
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x12c

    .line 51
    const/16 v2, 0xfa

    .line 50
    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_300X250:Lcom/google/ads/AdSize;

    .line 52
    new-instance v0, Lcom/google/ads/AdSize;

    const/16 v1, 0x78

    .line 53
    const/16 v2, 0x258

    .line 52
    invoke-direct {v0, v1, v2}, Lcom/google/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_120X600:Lcom/google/ads/AdSize;

    .line 62
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    .line 63
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private buildAdRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V
    .locals 4
    .param p1, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p2, "extras"    # Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .end local p2    # "extras":Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    invoke-direct {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;-><init>()V

    .line 78
    .restart local p2    # "extras":Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setAge(I)V

    .line 83
    :cond_1
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setAreaCode(Ljava/lang/String;)V

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 89
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setLocationInquiryAllowed(Z)V

    .line 90
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setCurrentLocation(Landroid/location/Location;)V

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "dob":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 97
    invoke-static {v0}, Lcom/inmobi/commons/InMobi;->setDateOfBirth(Ljava/util/Calendar;)V

    .line 101
    .end local v0    # "dob":Ljava/util/Calendar;
    :cond_4
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 102
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEducation()Lcom/inmobi/commons/EducationType;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setEducation(Lcom/inmobi/commons/EducationType;)V

    .line 106
    :cond_5
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 107
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEthnicity()Lcom/inmobi/commons/EthnicityType;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    .line 111
    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 112
    invoke-static {}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->$SWITCH_TABLE$com$google$ads$AdRequest$Gender()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    sget-object v1, Lcom/inmobi/commons/GenderType;->UNKNOWN:Lcom/inmobi/commons/GenderType;

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setGender(Lcom/inmobi/commons/GenderType;)V

    .line 129
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 130
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setIncome(I)V

    .line 134
    :cond_8
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getInterests()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 135
    const-string v1, ", "

    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getInterests()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setInterests(Ljava/lang/String;)V

    .line 139
    :cond_9
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 140
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setPostalCode(Ljava/lang/String;)V

    .line 144
    :cond_a
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getDeviceIdMask()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setDeviceIDMask(I)V

    .line 147
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getSexualOrientations()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 148
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getSexualOrientations()Lcom/inmobi/commons/SexualOrientation;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    .line 152
    :cond_b
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getMartialStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 153
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getMartialStatus()Lcom/inmobi/commons/MaritalStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    .line 157
    :cond_c
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getLangauge()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 158
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getLangauge()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setLanguage(Ljava/lang/String;)V

    .line 162
    :cond_d
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 163
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getHasChildren()Lcom/inmobi/commons/HasChildren;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    .line 166
    :cond_e
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 167
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 168
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/InMobi;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_f
    return-void

    .line 114
    :pswitch_0
    sget-object v1, Lcom/inmobi/commons/GenderType;->MALE:Lcom/inmobi/commons/GenderType;

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setGender(Lcom/inmobi/commons/GenderType;)V

    goto/16 :goto_0

    .line 118
    :pswitch_1
    sget-object v1, Lcom/inmobi/commons/GenderType;->FEMALE:Lcom/inmobi/commons/GenderType;

    invoke-static {v1}, Lcom/inmobi/commons/InMobi;->setGender(Lcom/inmobi/commons/GenderType;)V

    goto/16 :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    .line 500
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;
    .param p4, "mediationAdSize"    # Lcom/google/ads/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 204
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 205
    iget-object v4, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 206
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 210
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-ge v4, v5, :cond_1

    .line 211
    sget-object v4, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v4}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 294
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    sget-object v4, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v4}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 218
    const-string v4, "Invalid SDK VERSION"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Please integrate with new sdk"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :cond_2
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 225
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/google/ads/AdSize;

    .line 226
    sget-object v5, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X48:Lcom/google/ads/AdSize;

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X50:Lcom/google/ads/AdSize;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    .line 227
    sget-object v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_468X60:Lcom/google/ads/AdSize;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_728X90:Lcom/google/ads/AdSize;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 228
    sget-object v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_300X250:Lcom/google/ads/AdSize;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_120X600:Lcom/google/ads/AdSize;

    aput-object v6, v4, v5

    .line 225
    invoke-virtual {p4, v4}, Lcom/google/ads/AdSize;->findBestSize([Lcom/google/ads/AdSize;)Lcom/google/ads/AdSize;

    move-result-object v1

    .line 230
    .local v1, "bestFitSize":Lcom/google/ads/AdSize;
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X48:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_7

    .line 231
    const/16 v0, 0x9

    .line 250
    .local v0, "adSize":I
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    invoke-virtual {v1, p2}, Lcom/google/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v4

    .line 252
    invoke-virtual {v1, p2}, Lcom/google/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v5

    .line 250
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    .local v3, "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lcom/inmobi/monetization/IMBanner;

    iget-object v5, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-direct {v4, p2, v5, v0}, Lcom/inmobi/monetization/IMBanner;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    .line 257
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/inmobi/monetization/IMBanner;->setRefreshInterval(I)V

    .line 259
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    sget-object v5, Lcom/inmobi/commons/AnimationType;->ANIMATION_OFF:Lcom/inmobi/commons/AnimationType;

    invoke-virtual {v4, v5}, Lcom/inmobi/monetization/IMBanner;->setAnimationType(Lcom/inmobi/commons/AnimationType;)V

    .line 260
    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 261
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    const-string v5, ", "

    .line 262
    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v6

    .line 261
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/inmobi/monetization/IMBanner;->setKeywords(Ljava/lang/String;)V

    .line 266
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v2, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "tp"

    const-string v5, "c_admob"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v4, "tp-ver"

    const-string v5, "6.2.1"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v4, v2}, Lcom/inmobi/monetization/IMBanner;->setRequestParams(Ljava/util/Map;)V

    .line 271
    if-nez p6, :cond_4

    .line 272
    new-instance p6, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .end local p6    # "extras":Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    invoke-direct {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;-><init>()V

    .line 274
    .restart local p6    # "extras":Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;
    :cond_4
    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 275
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagKey()Ljava/lang/String;

    move-result-object v5

    .line 276
    invoke-virtual {p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getRefTagValue()Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v4, v5, v6}, Lcom/inmobi/monetization/IMBanner;->setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_5
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    new-instance v5, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/monetization/IMBanner;->setIMBannerListener(Lcom/inmobi/monetization/IMBannerListener;)V

    .line 279
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 280
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v4}, Lcom/inmobi/monetization/IMBanner;->disableHardwareAcceleration()V

    .line 289
    :cond_6
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 290
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 292
    invoke-direct {p0, p5, p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->buildAdRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    .line 293
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/monetization/IMBanner;

    invoke-virtual {v4}, Lcom/inmobi/monetization/IMBanner;->loadBanner()V

    goto/16 :goto_0

    .line 232
    .end local v0    # "adSize":I
    .end local v2    # "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "wrappedLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_320X50:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_8

    .line 233
    const/16 v0, 0xf

    .line 234
    .restart local v0    # "adSize":I
    goto/16 :goto_1

    .end local v0    # "adSize":I
    :cond_8
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_468X60:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_9

    .line 235
    const/16 v0, 0xc

    .line 236
    .restart local v0    # "adSize":I
    const-string v4, "ADSIZE_INMOBI_AD_UNIT_468x60"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 237
    .end local v0    # "adSize":I
    :cond_9
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_728X90:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_a

    .line 238
    const/16 v0, 0xb

    .line 239
    .restart local v0    # "adSize":I
    const-string v4, "INMOBI_AD_UNIT_728X90"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 240
    .end local v0    # "adSize":I
    :cond_a
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_300X250:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_b

    .line 241
    const/16 v0, 0xa

    .line 242
    .restart local v0    # "adSize":I
    const-string v4, "INMOBI_AD_UNIT_300X250"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 243
    .end local v0    # "adSize":I
    :cond_b
    sget-object v4, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->ADSIZE_INMOBI_AD_UNIT_120X600:Lcom/google/ads/AdSize;

    if-ne v1, v4, :cond_c

    .line 244
    const/16 v0, 0xd

    .line 245
    .restart local v0    # "adSize":I
    const-string v4, "INMOBI_AD_UNIT_120X600"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 247
    .end local v0    # "adSize":I
    :cond_c
    sget-object v4, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v4}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6

    .prologue
    .line 1
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V
    .locals 4
    .param p1, "listener"    # Lcom/google/ads/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/ads/mediation/MediationAdRequest;
    .param p5, "extras"    # Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .prologue
    const/4 v3, 0x1

    .line 302
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 304
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->isAppInitialize:Ljava/lang/Boolean;

    .line 308
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 309
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 338
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v1}, Lcom/google/ads/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationInterstitialAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 315
    const-string v1, "Invalid SDK VERSION"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Please integrate with new sdk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 319
    :cond_2
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 321
    new-instance v1, Lcom/inmobi/monetization/IMInterstitial;

    iget-object v2, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    .line 322
    invoke-virtual {p4}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    const-string v2, ", "

    .line 324
    invoke-virtual {p4}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v3

    .line 323
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/IMInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 328
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v0, "paramMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v2, "c_admob"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "tp-ver"

    const-string v2, "6.2.1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMInterstitial;->setRequestParams(Ljava/util/Map;)V

    .line 332
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    new-instance v2, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/monetization/IMInterstitial;->setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V

    .line 333
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->disableHardwareFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMInterstitial;->disableHardwareAcceleration()V

    .line 336
    :cond_4
    invoke-direct {p0, p4, p5}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->buildAdRequest(Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    .line 337
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    goto/16 :goto_0
.end method

.method public showInterstitial()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->show()V

    .line 345
    :cond_0
    return-void
.end method
