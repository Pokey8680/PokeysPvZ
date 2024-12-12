.class public Lcom/ea/nimble/pushtng/PushNotificationImpl;
.super Lcom/ea/nimble/Component;
.source "PushNotificationImpl.java"

# interfaces
.implements Lcom/ea/nimble/pushtng/IPushNotification;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;


# instance fields
.field private disableCheck:Ljava/lang/String;

.field private pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

.field private statusCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/pushtng/PushNotificationImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/pushtng/PushNotificationImpl;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->onComponentSetupCompleted()V

    return-void
.end method

.method static synthetic access$102(Lcom/ea/nimble/pushtng/PushNotificationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/pushtng/PushNotificationImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->disableCheck:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/ea/nimble/pushtng/PushNotificationImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/pushtng/PushNotificationImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->statusCheck:Z

    return p1
.end method

.method private onComponentSetupCompleted()V
    .locals 18

    .prologue
    .line 90
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v17

    .line 93
    .local v17, "synergy":Lcom/ea/nimble/ISynergyEnvironment;
    const-string v1, "ens.url"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "pushNotificationServerUrl":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/ISynergyEnvironment;->getProductId()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "gameId":Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "appId":Ljava/lang/String;
    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 98
    :cond_0
    const-string v1, "Synergy environment startup requests finished, but data is not available"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 103
    .local v5, "context":Landroid/content/Context;
    new-instance v3, Lcom/ea/eadp/http/services/AndroidHttpService;

    invoke-direct {v3}, Lcom/ea/eadp/http/services/AndroidHttpService;-><init>()V

    .line 104
    .local v3, "httpService":Lcom/ea/eadp/http/services/HttpService;
    new-instance v4, Lcom/ea/nimble/pushtng/NimbleDeviceIdService;

    invoke-direct {v4}, Lcom/ea/nimble/pushtng/NimbleDeviceIdService;-><init>()V

    .line 108
    .local v4, "deviceIdService":Lcom/ea/eadp/deviceid/DeviceIdService;
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x80

    invoke-virtual {v1, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 109
    .local v14, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 110
    .local v15, "bundle":Landroid/os/Bundle;
    if-eqz v15, :cond_2

    .line 111
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.ea.nimble.pushtng.gcm.sender.id"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "gcmSenderId":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.ea.nimble.pushtng.auth.api.key"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "apiKey":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.ea.nimble.pushtng.auth.api.secret"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "apiSecret":Ljava/lang/String;
    new-instance v1, Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v5}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;-><init>(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Lcom/ea/eadp/http/services/HttpService;Lcom/ea/eadp/deviceid/DeviceIdService;Landroid/content/Context;Lcom/ea/eadp/pushnotification/listeners/IPushListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

    .line 117
    const-string v1, "nimble.pushtng.componentSetupComplete"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v7    # "gcmSenderId":Ljava/lang/String;
    .end local v11    # "apiKey":Ljava/lang/String;
    .end local v12    # "apiSecret":Ljava/lang/String;
    .end local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v16

    .line 122
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Configuration data not loaded. Push component not initialized."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "bundle":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v1, "Configuration data not loaded. Push component not initialized."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static persistTrackingData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "trackingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "PushTNGTracking"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 264
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method private startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 4
    .param p1, "config"    # Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .param p2, "listener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .prologue
    .line 165
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 166
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/ea/nimble/pushtng/PushNotificationImpl$2;-><init>(Lcom/ea/nimble/pushtng/PushNotificationImpl;Lcom/ea/eadp/pushnotification/listeners/IPushListener;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Landroid/content/Context;)V

    .line 214
    .local v1, "listenerWrapper":Lcom/ea/eadp/pushnotification/listeners/IPushListener;
    iget-object v2, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

    invoke-interface {v2, v1}, Lcom/ea/eadp/pushnotification/services/IPushService;->setPushListener(Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V

    .line 215
    iget-object v2, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lcom/ea/eadp/pushnotification/services/IPushService;->startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V

    .line 216
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    .line 74
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "com.ea.nimble.pushtng"

    return-object v0
.end method

.method public getDisableStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->disableCheck:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    const-string v0, "PushTNG"

    return-object v0
.end method

.method public getRegistrationStatus()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->statusCheck:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->sendPendingTrackingRequests()V

    .line 82
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->sendPendingTrackingRequests()V

    .line 50
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    .line 52
    .local v0, "synergy":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "ens.url"

    .line 53
    invoke-interface {v0, v1}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->onComponentSetupCompleted()V

    .line 67
    :goto_0
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    .line 68
    return-void

    .line 56
    :cond_0
    const-string v1, "nimble.environment.notification.startup_requests_finished"

    new-instance v2, Lcom/ea/nimble/pushtng/PushNotificationImpl$1;

    invoke-direct {v2, p0}, Lcom/ea/nimble/pushtng/PushNotificationImpl$1;-><init>(Lcom/ea/nimble/pushtng/PushNotificationImpl;)V

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public sendPendingTrackingRequests()V
    .locals 12

    .prologue
    .line 238
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/ea/nimble/tracking/Tracking;->getComponent()Lcom/ea/nimble/tracking/ITracking;

    move-result-object v6

    .line 240
    .local v6, "tracking":Lcom/ea/nimble/tracking/ITracking;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 241
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v9, "PushTNGTracking"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 242
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 243
    .local v3, "key":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-interface {v5, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "valueJson":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 246
    const-class v10, Ljava/util/HashMap;

    invoke-virtual {v2, v8, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 247
    .local v4, "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 248
    const-string v10, "trackingType"

    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 249
    .local v7, "trackingType":Ljava/lang/String;
    const-string v10, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v11

    invoke-interface {v11}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-interface {v6, v7, v4}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 257
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "trackingType":Ljava/lang/String;
    .end local v8    # "valueJson":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 258
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method

.method public startAsDisabled(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 4
    .param p1, "userAlias"    # Ljava/lang/String;
    .param p2, "dateOfBirth"    # Ljava/util/Date;
    .param p3, "disabledReason"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

    if-nez v2, :cond_1

    .line 147
    if-eqz p4, :cond_0

    .line 148
    const/4 v2, 0x0

    const-string v3, "Nimble Component has not yet been initialized."

    invoke-interface {p4, v2, v3}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    new-instance v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-direct {v0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>()V

    .line 154
    .local v0, "config":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    invoke-virtual {v0, p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setUserAlias(Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDateOfBirth(Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabled(Z)V

    .line 158
    invoke-virtual {v0, p3}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabledReason(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0, p4}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V

    goto :goto_0
.end method

.method public startWithDefaults(Ljava/lang/String;Ljava/util/Date;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
    .locals 5
    .param p1, "userAlias"    # Ljava/lang/String;
    .param p2, "dateOfBirth"    # Ljava/util/Date;
    .param p3, "listener"    # Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v2, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl;->pushService:Lcom/ea/eadp/pushnotification/services/IPushService;

    if-nez v2, :cond_1

    .line 129
    const-string v2, "Nimble Component has not yet been initialized."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    if-eqz p3, :cond_0

    .line 131
    const-string v2, "Nimble Component has not yet been initialized."

    invoke-interface {p3, v4, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-direct {v0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>()V

    .line 137
    .local v0, "config":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    invoke-virtual {v0, p1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setUserAlias(Ljava/lang/String;)V

    .line 138
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDateOfBirth(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v0, p3}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V

    goto :goto_0
.end method
