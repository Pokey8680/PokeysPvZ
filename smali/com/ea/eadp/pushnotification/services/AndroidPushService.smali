.class public final Lcom/ea/eadp/pushnotification/services/AndroidPushService;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Lcom/ea/eadp/pushnotification/services/IPushService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"


# instance fields
.field private final API_KEY_KEY:Ljava/lang/String;

.field private final API_SECRET_KEY:Ljava/lang/String;

.field private final DEVICE_ID_KEY:Ljava/lang/String;

.field private final GAME_ID_KEY:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final PUSH_SERVER_URL_KEY:Ljava/lang/String;

.field private final SHARED_PREFS_FILENAME:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceIdService:Lcom/ea/eadp/deviceid/DeviceIdService;

.field private gameId:Ljava/lang/String;

.field private googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private httpService:Lcom/ea/eadp/http/services/HttpService;

.field private inAppNotificationInterval:J

.field private inAppTimer:Ljava/util/Timer;

.field private pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

.field private pushNotificationServerUrl:Ljava/lang/String;

.field private senderId:Ljava/lang/String;

.field private startClientToken:Ljava/lang/String;

.field private startConfig:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ea/eadp/http/services/HttpService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpService"    # Lcom/ea/eadp/http/services/HttpService;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "PushManager"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string v0, "PushManagerConfigurationData"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->SHARED_PREFS_FILENAME:Ljava/lang/String;

    .line 50
    const-string v0, "deviceId"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->DEVICE_ID_KEY:Ljava/lang/String;

    .line 51
    const-string v0, "pushNotificationServerUrl"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->PUSH_SERVER_URL_KEY:Ljava/lang/String;

    .line 52
    const-string v0, "gameId"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->GAME_ID_KEY:Ljava/lang/String;

    .line 53
    const-string v0, "apiKey"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->API_KEY_KEY:Ljava/lang/String;

    .line 54
    const-string v0, "apiSecret"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->API_SECRET_KEY:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->httpService:Lcom/ea/eadp/http/services/HttpService;

    .line 99
    const-string v0, "pushNotificationServerUrl"

    invoke-direct {p0, v0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->loadConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    .line 100
    const-string v0, "gameId"

    invoke-direct {p0, v0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->loadConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    .line 101
    const-string v0, "apiKey"

    invoke-direct {p0, v0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->loadConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    .line 102
    const-string v0, "apiSecret"

    invoke-direct {p0, v0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->loadConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Lcom/ea/eadp/http/services/HttpService;Lcom/ea/eadp/deviceid/DeviceIdService;Landroid/content/Context;Lcom/ea/eadp/pushnotification/listeners/IPushListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "googleCloudMessaging"    # Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .param p2, "httpService"    # Lcom/ea/eadp/http/services/HttpService;
    .param p3, "deviceIdService"    # Lcom/ea/eadp/deviceid/DeviceIdService;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "pushListener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "senderId"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "gcm.sender.id"
        .end annotation
    .end param
    .param p7, "pushNotificationServerUrl"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "push.notification.server.url"
        .end annotation
    .end param
    .param p8, "gameId"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "game.id"
        .end annotation
    .end param
    .param p9, "appId"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "app.id"
        .end annotation
    .end param
    .param p10, "apiKey"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "auth.api.key"
        .end annotation
    .end param
    .param p11, "apiSecret"    # Ljava/lang/String;
        .annotation runtime Lcom/google/inject/name/Named;
            value = "auth.api.secret"
        .end annotation
    .end param
    .param p12, "inAppNotificationInterval"    # I
        .annotation runtime Lcom/google/inject/name/Named;
            value = "in.app.notification.interval"
        .end annotation
    .end param
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v2, "PushManager"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->LOG_TAG:Ljava/lang/String;

    .line 48
    const-string v2, "PushManagerConfigurationData"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->SHARED_PREFS_FILENAME:Ljava/lang/String;

    .line 50
    const-string v2, "deviceId"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->DEVICE_ID_KEY:Ljava/lang/String;

    .line 51
    const-string v2, "pushNotificationServerUrl"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->PUSH_SERVER_URL_KEY:Ljava/lang/String;

    .line 52
    const-string v2, "gameId"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->GAME_ID_KEY:Ljava/lang/String;

    .line 53
    const-string v2, "apiKey"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->API_KEY_KEY:Ljava/lang/String;

    .line 54
    const-string v2, "apiSecret"

    iput-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->API_SECRET_KEY:Ljava/lang/String;

    .line 79
    const-string v2, "PushManager"

    const-string v3, "Instantiating new push mgr"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 81
    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->httpService:Lcom/ea/eadp/http/services/HttpService;

    .line 82
    iput-object p3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->deviceIdService:Lcom/ea/eadp/deviceid/DeviceIdService;

    .line 83
    iput-object p4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    .line 84
    iput-object p5, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .line 85
    iput-object p6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->senderId:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    .line 87
    iput-object p8, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    .line 88
    iput-object p9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->appId:Ljava/lang/String;

    .line 89
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    .line 90
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    .line 91
    move/from16 v0, p12

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->checkPlayServices()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;
    .param p1, "x1"    # Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->saveConfigData(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->loadConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->startConfig:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->startClientToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->googleCloudMessaging:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/http/services/HttpService;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->httpService:Lcom/ea/eadp/http/services/HttpService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->createAuthorizationHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->appId:Ljava/lang/String;

    return-object v0
.end method

.method private checkPlayServices()Z
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 360
    .local v0, "resultCode":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createAuthorizationHeader()Ljava/lang/String;
    .locals 5

    .prologue
    .line 405
    const-string v0, "Basic %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadConfigData(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PushManagerConfigurationData"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    .local v0, "configPrefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private saveConfigData(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    .prologue
    .line 368
    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PushManagerConfigurationData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 369
    .local v1, "configPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 371
    .local v0, "configEditor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    const-string v2, "deviceId"

    invoke-virtual {p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    const-string v2, "pushNotificationServerUrl"

    iget-object v3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushNotificationServerUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 378
    const-string v2, "gameId"

    iget-object v3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->gameId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    :cond_2
    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 381
    const-string v2, "apiKey"

    iget-object v3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    :cond_3
    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 384
    const-string v2, "apiSecret"

    iget-object v3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->apiSecret:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    return-void
.end method


# virtual methods
.method public getInAppNotifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "userAlias"    # Ljava/lang/String;
    .param p2, "clientToken"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    const/4 v1, 0x0

    const-string v2, "UserAlias is null"

    invoke-interface {v0, v1, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "getInAppNotifications thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    return-object v0
.end method

.method public onRestart()V
    .locals 6

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 340
    iget-wide v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    .line 342
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;

    invoke-direct {v1, p0}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)V

    iget-wide v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    iget-wide v4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 350
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 356
    :cond_0
    return-void
.end method

.method public registerDevice(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 179
    const-string v0, "PushManager"

    const-string v1, "Error: Config data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    const/4 v1, 0x0

    const-string v2, "Config data is null"

    invoke-interface {v0, v1, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->deviceIdService:Lcom/ea/eadp/deviceid/DeviceIdService;

    invoke-interface {v0}, Lcom/ea/eadp/deviceid/DeviceIdService;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;

    invoke-direct {v1, p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    const-string v2, "registerDevice thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public sendTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "pnType"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sendTrackingEvent thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 287
    return-void
.end method

.method public setPushListener(Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 0
    .param p1, "pushListener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .line 111
    return-void
.end method

.method public startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V
    .locals 6
    .param p1, "config"    # Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .param p2, "clientToken"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 117
    const-string v0, "PushManager"

    const-string v1, "Error: Config data is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->pushListener:Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    const/4 v1, 0x0

    const-string v2, "Config data is null"

    invoke-interface {v0, v1, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-wide v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    .line 126
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    iget-wide v4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->inAppNotificationInterval:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 134
    :cond_2
    invoke-virtual {p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->registerDevice(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;

    invoke-direct {v1, p0, p1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    const-string v2, "startWithConfig thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
