.class public final Lcom/inmobi/commons/InMobi;
.super Ljava/lang/Object;
.source "InMobi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/InMobi$LOG_LEVEL;
    }
.end annotation


# static fields
.field public static final EXCLUDE_FB_ID:I = 0x4

.field public static final EXCLUDE_ODIN1:I = 0x2

.field public static final EXCLUDE_UM5_ID:I = 0x8

.field public static final ID_DEVICE_NONE:I = 0x0

.field public static final INCLUDE_DEFAULT:I = 0x1

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Application Context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/inmobi/commons/uid/UIDHelper;->setAdvertisingId()V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/internal/FileOperations;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "impref"

    const-string v3, "version"

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    invoke-static {}, Lcom/inmobi/commons/cache/LocalCache;->reset()V

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 84
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "Exception in initialize"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    :cond_4
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "appId cannot be blank"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_5
    const-string v1, "[InMobi]-4.4.3"

    const-string v2, "InMobi init successful"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    .line 97
    invoke-static {p0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V

    .line 99
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->getInstance()Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/androidsdk/IMAdTracker;->reportAppDownloadGoal()V

    .line 103
    invoke-static {p0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->init(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lcom/inmobi/commons/InMobi$a;

    invoke-direct {v0}, Lcom/inmobi/commons/InMobi$a;-><init>()V

    invoke-static {v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->addFocusChangedListener(Lcom/inmobi/commons/internal/ApplicationFocusManager$FocusChangedListener;)V

    .line 116
    invoke-static {}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/ActivityRecognitionManager;->init(Landroid/content/Context;)V

    .line 118
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->updateInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/commons/data/UserInfo;->addIDType(Lcom/inmobi/commons/IMIDType;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/inmobi/commons/InMobi;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string v0, "4.4.3"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/inmobi/commons/InMobi;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static removeIDType(Lcom/inmobi/commons/IMIDType;)V
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->removeIDType(Lcom/inmobi/commons/IMIDType;)V

    .line 342
    return-void
.end method

.method public static setAge(I)V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setAge(Ljava/lang/Integer;)V

    .line 312
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setAreaCode(Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Area code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCurrentLocation(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 219
    if-eqz p0, :cond_0

    .line 220
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setCurrentLocation(Landroid/location/Location;)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Location cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDateOfBirth(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDateOfBirth(Ljava/util/Calendar;)V

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Date Of Birth cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDeviceIDMask(I)V
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setDeviceIDMask(I)V

    .line 202
    return-void
.end method

.method public static setEducation(Lcom/inmobi/commons/EducationType;)V
    .locals 1

    .prologue
    .line 292
    if-eqz p0, :cond_0

    .line 293
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEducation(Lcom/inmobi/commons/EducationType;)V

    .line 294
    :cond_0
    return-void
.end method

.method public static setEthnicity(Lcom/inmobi/commons/EthnicityType;)V
    .locals 1

    .prologue
    .line 302
    if-eqz p0, :cond_0

    .line 303
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setEthnicity(Lcom/inmobi/commons/EthnicityType;)V

    .line 304
    :cond_0
    return-void
.end method

.method public static setGender(Lcom/inmobi/commons/GenderType;)V
    .locals 1

    .prologue
    .line 275
    if-eqz p0, :cond_0

    .line 276
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setGender(Lcom/inmobi/commons/GenderType;)V

    .line 277
    :cond_0
    return-void
.end method

.method public static setHasChildren(Lcom/inmobi/commons/HasChildren;)V
    .locals 1

    .prologue
    .line 381
    if-eqz p0, :cond_0

    .line 382
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setHasChildren(Lcom/inmobi/commons/HasChildren;)V

    .line 383
    :cond_0
    return-void
.end method

.method public static setIncome(I)V
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->setIncome(Ljava/lang/Integer;)V

    .line 285
    return-void
.end method

.method public static setInterests(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 319
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setInterests(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Interests cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLanguage(Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Language cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setLocationInquiryAllowed(Z)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setLocationInquiryAllowed(Z)V

    .line 212
    return-void
.end method

.method public static setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 233
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/inmobi/commons/data/UserInfo;->setLocationWithCityStateCountry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public static setLogLevel(Lcom/inmobi/commons/InMobi$LOG_LEVEL;)V
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->NONE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    .line 169
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->NONE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    .line 183
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 173
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->DEBUG:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/inmobi/commons/InMobi$LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/InMobi$LOG_LEVEL;

    if-ne p0, v0, :cond_2

    .line 177
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->VERBOSE:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0

    .line 181
    :cond_2
    sget-object v0, Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;->INTERNAL:Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;

    invoke-static {v0}, Lcom/inmobi/commons/internal/Log;->setInternalLogLevel(Lcom/inmobi/commons/internal/Log$INTERNAL_LOG_LEVEL;)V

    goto :goto_0
.end method

.method public static setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V
    .locals 1

    .prologue
    .line 349
    if-eqz p0, :cond_0

    .line 350
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setMaritalStatus(Lcom/inmobi/commons/MaritalStatus;)V

    .line 351
    :cond_0
    return-void
.end method

.method public static setPostalCode(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setPostalCode(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    const-string v0, "[InMobi]-4.4.3"

    const-string v1, "Postal Code cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V
    .locals 1

    .prologue
    .line 371
    if-eqz p0, :cond_0

    .line 372
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/data/UserInfo;->setSexualOrientation(Lcom/inmobi/commons/SexualOrientation;)V

    .line 373
    :cond_0
    return-void
.end method
