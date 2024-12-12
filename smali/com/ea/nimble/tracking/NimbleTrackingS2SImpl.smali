.class Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;
.super Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.source "NimbleTrackingS2SImpl.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# static fields
.field public static final EVENT_APPRESUMED:I = 0x67

.field public static final EVENT_APPSTARTED:I = 0x66

.field public static final EVENT_APPSTARTED_AFTERINSTALL:I = 0x65

.field public static final EVENT_LEVEL_UP:I = 0x6c

.field public static final EVENT_MTXVIEW_ITEM_PURCHASED:I = 0x69

.field private static final EVENT_PREFIX:Ljava/lang/String; = "SYNERGYS2S::"

.field public static final EVENT_REFERRERID_RECEIVED:I = 0x6a

.field public static final EVENT_TUTORIAL_COMPLETE:I = 0x6b

.field public static final EVENT_USER_REGISTERED:I = 0x68

.field private static final MARS_DEFAULT_POST_INTERVAL:D = 60.0

.field private static final MARS_MAX_POST_RETRY_DELAY:D = 86400.0

.field private static final SYNERGY_API_POST_EVENTS:Ljava/lang/String; = "/s2s/api/core/postEvents"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;-><init>()V

    .line 61
    return-void
.end method

.method private createEventRequestPostMap()Ljava/util/Map;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v13

    .line 417
    .local v13, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v26

    .line 418
    .local v26, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v27

    .line 420
    .local v27, "synergyIdManager":Lcom/ea/nimble/ISynergyIdManager;
    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    .line 421
    .local v23, "now":Ljava/util/Date;
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v28, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, ""

    .line 428
    .local v10, "advertiserId":Ljava/lang/String;
    const/16 v20, 0x1

    .line 431
    .local v20, "limitAdTracking":Z
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v10

    .line 432
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 438
    :goto_0
    const-string v2, "advertiserID"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v2, "limitAdTracking"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v2, "bundleId"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v2, "sellId"

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v2, "appName"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string v2, "appVersion"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v2, "deviceId"

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v2, "deviceNativeId"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v2, "systemName"

    const-string v3, "Android"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v2, "systemVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v2, "deviceType"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v2, "deviceBrand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 453
    .local v24, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 454
    .local v21, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "carrierName"

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 456
    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 455
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 458
    const-string v2, "imei"

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 461
    .local v12, "android_id":Ljava/lang/String;
    const-string v2, "androidId"

    invoke-static {v12}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v2, "countryCode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v2, "appLanguage"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v2, "localization"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v2, "deviceLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v2, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string v2, "timezone"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%tZ"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v2, "gmtOffset"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v2, "synergyId"

    invoke-interface/range {v27 .. v27}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v2, "macAddress"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v3, "jflag"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->isDeviceRooted()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "1"

    :goto_1
    move-object/from16 v0, v28

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "macAddress"

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    if-eqz v13, :cond_1

    .line 476
    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getGameSpecifiedPlayerId()Ljava/lang/String;

    move-result-object v18

    .line 477
    .local v18, "gamePlayerId":Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 478
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 480
    const-string v2, "gamePlayerId"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .end local v18    # "gamePlayerId":Ljava/lang/String;
    :cond_1
    const/16 v17, 0x0

    .line 487
    .local v17, "facebookAppId":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 488
    .local v15, "context":Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 489
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 488
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 490
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 492
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v17

    .line 500
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "context":Landroid/content/Context;
    :cond_2
    :goto_2
    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    const-string v2, "fbAppId"

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_3
    :try_start_2
    const-string v8, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 513
    .local v8, "FACEBOOK_ATTRIBUTION_ID_URL":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 514
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 516
    .local v14, "c":Landroid/database/Cursor;
    if-eqz v14, :cond_4

    .line 518
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 519
    const-string v2, "fbAttrId"

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 532
    .end local v8    # "FACEBOOK_ATTRIBUTION_ID_URL":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_3
    const-string v3, "originUser"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_loggedInToOrigin:Z

    if-eqz v2, :cond_6

    const-string v2, "Y"

    :goto_4
    move-object/from16 v0, v28

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 535
    .local v25, "session_Size":I
    if-lez v25, :cond_7

    .line 537
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v3, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_customSessionData:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    iget-object v2, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 434
    .end local v12    # "android_id":Ljava/lang/String;
    .end local v17    # "facebookAppId":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "manager":Landroid/telephony/TelephonyManager;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "session_Size":I
    :catch_0
    move-exception v16

    .line 436
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "Exception when getting advertising ID for Android"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v12    # "android_id":Ljava/lang/String;
    .restart local v21    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    const-string v2, "0"

    goto/16 :goto_1

    .line 522
    .restart local v17    # "facebookAppId":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 524
    .local v16, "e":Ljava/lang/IllegalStateException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 526
    .end local v16    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v16

    .line 528
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 532
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v2, "N"

    goto :goto_4

    .line 544
    .restart local v25    # "session_Size":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v2, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 546
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v2, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .local v9, "adEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map;

    .line 552
    .local v22, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "referrer"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 554
    const-string v3, "referrer"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 555
    .local v29, "valueString":Ljava/lang/String;
    const-string v3, "referrer"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-string v3, "referrer"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 560
    .end local v22    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "valueString":Ljava/lang/String;
    :cond_9
    const-string v2, "adEvents"

    move-object/from16 v0, v28

    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    .end local v9    # "adEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_a
    return-object v28

    .line 495
    .end local v25    # "session_Size":I
    :catch_3
    move-exception v2

    goto/16 :goto_2
.end method

.method private static isS2SEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 622
    if-nez p0, :cond_0

    .line 624
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    :cond_0
    const-string v0, "SYNERGYS2S::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected canDropSession(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sessionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 602
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 603
    .local v2, "firstObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    iget-object v5, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 605
    const-string v5, "Trying to drop session with no events"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    :cond_0
    :goto_0
    return v3

    .line 608
    :cond_1
    iget-object v5, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 610
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "eventType"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    .local v1, "eventType":Ljava/lang/String;
    if-eqz v1, :cond_2

    const/16 v6, 0x65

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 613
    goto :goto_0
.end method

.method protected convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
    .locals 17
    .param p1, "event"    # Lcom/ea/nimble/tracking/Tracking$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v10, 0x0

    .line 191
    .local v10, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 192
    .local v4, "keyType01":Ljava/lang/String;
    const/4 v7, 0x0

    .line 193
    .local v7, "keyValue01":Ljava/lang/String;
    const/4 v5, 0x0

    .line 194
    .local v5, "keyType02":Ljava/lang/String;
    const/4 v8, 0x0

    .line 195
    .local v8, "keyValue02":Ljava/lang/String;
    const/4 v6, 0x0

    .line 196
    .local v6, "keyType03":Ljava/lang/String;
    const/4 v9, 0x0

    .line 202
    .local v9, "keyValue03":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v13}, Lcom/ea/nimble/tracking/Tracking;->isNimbleStandardEvent(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    invoke-static {v13}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->isS2SEvent(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 344
    :goto_0
    return-object v2

    .line 207
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    const/4 v13, 0x7

    invoke-direct {v3, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 208
    .local v3, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 210
    const/16 v12, 0x65

    .line 211
    .local v12, "type":I
    const-string v10, "Launch"

    .line 319
    :cond_1
    :goto_1
    const-string v13, "eventType"

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v13, "eventName"

    invoke-interface {v3, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v13, "timestamp"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    invoke-static {v14}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v14, "eventKeyType01"

    if-nez v4, :cond_14

    const-string v13, "0"

    :goto_2
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v14, "eventValue01"

    if-nez v7, :cond_15

    const-string v13, ""

    :goto_3
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v14, "eventKeyType02"

    if-nez v5, :cond_16

    const-string v13, "0"

    :goto_4
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v14, "eventValue02"

    if-nez v8, :cond_17

    const-string v13, ""

    :goto_5
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v14, "eventKeyType03"

    if-nez v6, :cond_18

    const-string v13, "0"

    :goto_6
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v14, "eventValue03"

    if-nez v9, :cond_19

    const-string v13, ""

    :goto_7
    invoke-interface {v3, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v13, "transactionId"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const/16 v13, 0x65

    if-eq v12, v13, :cond_2

    const/16 v13, 0x66

    if-eq v12, v13, :cond_2

    const/16 v13, 0x67

    if-ne v12, v13, :cond_4

    .line 333
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v13, v13, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->queueCurrentEventsForPost()V

    .line 338
    :cond_3
    const-string v13, "Logging session start event. Posting event queue now."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->resetPostTimer(D)V

    .line 342
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v2, "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 213
    .end local v2    # "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12    # "type":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 215
    :cond_6
    const/16 v12, 0x66

    .line 216
    .restart local v12    # "type":I
    const-string v10, "Launch"

    goto/16 :goto_1

    .line 218
    .end local v12    # "type":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 220
    const/16 v12, 0x66

    .line 221
    .restart local v12    # "type":I
    const-string v10, "NotificationLaunch"

    goto/16 :goto_1

    .line 227
    .end local v12    # "type":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPRESUME_NORMAL"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::SESSION_START"

    .line 228
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPRESUME_FROMURL"

    .line 229
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPRESUME_FROMEBISU"

    .line 230
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 232
    :cond_9
    const/16 v12, 0x67

    .line 233
    .restart local v12    # "type":I
    const-string v10, "Resume"

    goto/16 :goto_1

    .line 235
    .end local v12    # "type":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 237
    const/16 v12, 0x67

    .line 238
    .restart local v12    # "type":I
    const-string v10, "NotificationResume"

    goto/16 :goto_1

    .line 244
    .end local v12    # "type":I
    :cond_b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::USER_REGISTERED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 246
    const/16 v12, 0x68

    .line 247
    .restart local v12    # "type":I
    const-string v10, "Registration"

    .line 248
    const-string v4, "username"

    .line 249
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_USERNAME"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "keyValue01":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 251
    .restart local v7    # "keyValue01":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 253
    const-string v13, "Error: missing event parameter \"%s\""

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "NIMBLESTANDARD::KEY_USERNAME"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 256
    .end local v12    # "type":I
    :cond_c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 258
    const/16 v12, 0x69

    .line 259
    .restart local v12    # "type":I
    const-string v10, "Purchase"

    .line 260
    const-string v4, "tvalue"

    .line 261
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "keyValue01":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 262
    .restart local v7    # "keyValue01":Ljava/lang/String;
    const-string v5, "fvalue"

    .line 263
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_MTX_PRICE"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "keyValue02":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 265
    .restart local v8    # "keyValue02":Ljava/lang/String;
    if-nez v7, :cond_d

    .line 267
    const-string v13, "Error: missing event parameter \"%s\""

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_d
    if-nez v8, :cond_1

    .line 271
    const-string v13, "Error: missing event parameter \"%s\""

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "NIMBLESTANDARD::KEY_MTX_PRICE"

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 274
    .end local v12    # "type":I
    :cond_e
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::REFERRER_ID_RECEIVED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 276
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_REFERRER_ID"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 277
    .local v11, "referrerId":Ljava/lang/String;
    if-nez v11, :cond_f

    .line 279
    const-string v13, "Error: invalid (null) referrer id."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 283
    :cond_f
    const/16 v12, 0x6a

    .line 284
    .restart local v12    # "type":I
    const-string v10, "Referrer"

    .line 285
    const-string v4, "referrerId"

    .line 286
    move-object v7, v11

    .line 287
    goto/16 :goto_1

    .line 288
    .end local v11    # "referrerId":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::TUTORIAL_COMPLETE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 290
    const/16 v12, 0x6b

    .line 291
    .restart local v12    # "type":I
    const-string v10, "TutorialComplete"

    goto/16 :goto_1

    .line 293
    .end local v12    # "type":I
    :cond_11
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "NIMBLESTANDARD::LEVEL_UP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 295
    const/16 v12, 0x6c

    .line 296
    .restart local v12    # "type":I
    const-string v10, "LevelUp"

    .line 297
    const-string v4, "duration"

    .line 298
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "keyValue01":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 299
    .restart local v7    # "keyValue01":Ljava/lang/String;
    const-string v5, "gameplayDuration"

    .line 300
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_GAMEPLAY_DURATION"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "keyValue02":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 301
    .restart local v8    # "keyValue02":Ljava/lang/String;
    const-string v6, "userLevel"

    .line 302
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "NIMBLESTANDARD::KEY_USER_LEVEL"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "keyValue03":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "keyValue03":Ljava/lang/String;
    goto/16 :goto_1

    .line 304
    .end local v12    # "type":I
    :cond_12
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    const-string v14, "SYNERGYS2S::CUSTOM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 306
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "eventType"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 307
    .restart local v12    # "type":I
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyType01"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "keyType01":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 308
    .restart local v4    # "keyType01":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyValue01"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "keyValue01":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 309
    .restart local v7    # "keyValue01":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyType02"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "keyType02":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 310
    .restart local v5    # "keyType02":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyValue02"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "keyValue02":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 311
    .restart local v8    # "keyValue02":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyType03"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "keyType03":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 312
    .restart local v6    # "keyType03":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v14, "keyValue03"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "keyValue03":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9    # "keyValue03":Ljava/lang/String;
    goto/16 :goto_1

    .line 316
    .end local v12    # "type":I
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    .restart local v12    # "type":I
    :cond_14
    move-object v13, v4

    .line 322
    goto/16 :goto_2

    :cond_15
    move-object v13, v7

    .line 323
    goto/16 :goto_3

    :cond_16
    move-object v13, v5

    .line 324
    goto/16 :goto_4

    :cond_17
    move-object v13, v8

    .line 325
    goto/16 :goto_5

    :cond_18
    move-object v13, v6

    .line 326
    goto/16 :goto_6

    :cond_19
    move-object v13, v9

    .line 327
    goto/16 :goto_7
.end method

.method protected createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;
    .locals 10
    .param p1, "sessionData"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "apiVer"

    const-string v8, "1.0.0"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v7

    const-string v8, "synergy.s2s"

    invoke-interface {v7, v8}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, "synergyTrackingServerUrl":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 368
    const-string v7, "Tracking server URL from NimbleEnvironment is nil. Adding observer for environment update finish."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    move-object v2, v6

    .line 403
    :goto_0
    return-object v2

    .line 376
    :cond_0
    iget-object v3, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    .line 377
    .local v3, "sessionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 380
    .local v1, "postDataDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "now_timestamp"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-static {v8}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v7, "synergyId"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "synergyId"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 386
    :cond_1
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "synergyId":Ljava/lang/String;
    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 389
    const-string v7, "Creating post request. No synergyId in session info dictionary, inserting synergyId value %s now."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    const-string v7, "synergyId"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v4    # "synergyId":Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v7, "/s2s/api/core/postEvents"

    sget-object v8, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v7, v8, v6}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 400
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    iput-object v5, v2, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 401
    iput-object v0, v2, Lcom/ea/nimble/SynergyRequest;->urlParameters:Ljava/util/Map;

    .line 402
    iput-object v1, v2, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    goto :goto_0

    .line 394
    .end local v2    # "request":Lcom/ea/nimble/SynergyRequest;
    .restart local v4    # "synergyId":Ljava/lang/String;
    :cond_3
    const-string v7, "Creating post request. No synergyId in session info dictionary, still no synergyId available now."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    const-string v0, "com.ea.nimble.trackingimpl.s2s"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "TrackingS2S"

    return-object v0
.end method

.method protected getPersistenceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string v0, "S2S"

    return-object v0
.end method

.method public getRetryTime(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)D
    .locals 12
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 129
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 132
    .local v6, "retryTime":D
    const/4 v3, -0x1

    .line 133
    .local v3, "result":I
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 137
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    .line 138
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 141
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v5, "resultCode"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "resultCode":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessage result code "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "~"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 147
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "resultCode":Ljava/lang/String;
    :cond_0
    const/16 v5, -0x5208

    if-gt v3, v5, :cond_3

    const/16 v5, -0x55f0

    if-lt v3, v5, :cond_3

    .line 150
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_1

    .line 152
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 155
    :cond_1
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 158
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 159
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide v10, 0x40f5180000000000L    # 86400.0

    cmpl-double v5, v8, v10

    if-lez v5, :cond_2

    .line 161
    const-wide v8, 0x40f5180000000000L    # 86400.0

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 175
    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S2S retry delay result code is:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ". Delay will be:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_1
    return-wide v6

    .line 166
    :cond_3
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 169
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    .line 170
    iget-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D

    const-wide v10, 0x4072c00000000000L    # 300.0

    cmpl-double v5, v8, v10

    if-lez v5, :cond_2

    .line 172
    const-wide v8, 0x4072c00000000000L    # 300.0

    iput-wide v8, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_postRetryDelay:D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse result code in TrackingS2S retransmission check. Defaulting to retryTime of:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected packageCurrentSession()V
    .locals 4

    .prologue
    .line 569
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    if-lez v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->createEventRequestPostMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    .line 576
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v2, "adEvents"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 577
    .local v0, "adEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingS2SImpl;->queueCurrentEventsForPost()V

    .line 582
    .end local v0    # "adEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :cond_0
    return-void
.end method

.method public shouldAttemptReTrans(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Z
    .locals 10
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v9, 0x0

    .line 84
    const/4 v0, 0x1

    .line 86
    .local v0, "bShouldReTrans":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v7

    if-nez v7, :cond_1

    .line 88
    :cond_0
    const-string v7, "S2S retrans had no network handle response. Network probably failed to connect. \nWe should attempt retrans."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    const/4 v0, 0x1

    move v1, v0

    .line 123
    .end local v0    # "bShouldReTrans":Z
    .local v1, "bShouldReTrans":I
    :goto_0
    return v1

    .line 97
    .end local v1    # "bShouldReTrans":I
    .restart local v0    # "bShouldReTrans":Z
    :cond_1
    const/4 v5, -0x1

    .line 98
    .local v5, "result":I
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v4

    .line 99
    .local v4, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    .line 101
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 103
    .local v3, "jObject":Lorg/json/JSONObject;
    const-string v7, "resultCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, "resultCode":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMessage result code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "~"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 109
    .end local v3    # "jObject":Lorg/json/JSONObject;
    .end local v6    # "resultCode":Ljava/lang/String;
    :cond_2
    const/16 v7, -0x4e20

    if-gt v5, v7, :cond_3

    const/16 v7, -0x5208

    if-ge v5, v7, :cond_4

    const/16 v7, -0x55f0

    if-le v5, v7, :cond_4

    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 122
    .end local v4    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "S2S retransmission is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 123
    .restart local v1    # "bShouldReTrans":I
    goto :goto_0

    .line 116
    .end local v1    # "bShouldReTrans":I
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "Failed to parse result code in TrackingS2S retransmission check. Defaulting to NO."

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_1
.end method
