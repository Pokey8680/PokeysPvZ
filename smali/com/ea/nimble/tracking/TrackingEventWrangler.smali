.class Lcom/ea/nimble/tracking/TrackingEventWrangler;
.super Lcom/ea/nimble/Component;
.source "TrackingEventWrangler.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final APP_VERSION_PERSISTENCE_ID:Ljava/lang/String; = "applicationBundleVersion"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.tracking.eventwrangler"


# instance fields
.field private m_sessionStartTimestamp:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 38
    return-void
.end method

.method private addPushTNGTrackingParams(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    const-string v0, "pushId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    const-string v1, "pushId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    const-string v0, "pnType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const-string v0, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    const-string v1, "pnType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    const-string v0, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_2
    return-void
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/ea/nimble/tracking/TrackingEventWrangler;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;-><init>()V

    const-string v1, "com.ea.nimble.tracking.eventwrangler"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private logAndCheckEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 191
    return-void
.end method

.method private logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/ea/nimble/tracking/Tracking;->isSessionStartEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    iget-object v7, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    if-eqz v7, :cond_2

    .line 200
    const-string v7, "Pre-existing session start timestamp found while logging new session start! Overwriting previous session start timestamp."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    .line 235
    :cond_0
    :goto_1
    const-string v7, "com.ea.nimble.tracking"

    invoke-static {v7}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/tracking/ITracking;

    .line 236
    .local v6, "tracking":Lcom/ea/nimble/tracking/ITracking;
    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v6, p1, p2}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    :cond_1
    return-void

    .line 204
    .end local v6    # "tracking":Lcom/ea/nimble/tracking/ITracking;
    :cond_2
    const-string v7, "Marking session start time."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_3
    invoke-static {p1}, Lcom/ea/nimble/tracking/Tracking;->isSessionEndEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 212
    iget-object v7, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    if-nez v7, :cond_4

    .line 214
    const-string v7, "No session start timestamp found while logging new session end! Skip logging \'session time\' event."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 221
    .local v2, "timeDuration":J
    long-to-double v8, v2

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double v4, v8, v10

    .line 222
    .local v4, "timeDurationSeconds":D
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%.0f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "timeDurationString":Ljava/lang/String;
    const-string v7, "Logging session time, %s seconds."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v7, "NIMBLESTANDARD::SESSION_TIME"

    invoke-direct {p0, v7, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 230
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/ea/nimble/tracking/TrackingEventWrangler;->m_sessionStartTimestamp:Ljava/lang/Long;

    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V

    .line 67
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "com.ea.nimble.tracking.eventwrangler"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "Tracking"

    return-object v0
.end method

.method public onApplicationLaunch(Landroid/content/Intent;)V
    .locals 10
    .param p1, "options"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 77
    const-string v6, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v6, "PushNotification"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 80
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "PushNotification"

    invoke-virtual {v6, v7, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "PushNotification"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 82
    :cond_1
    const-string v6, "Awesome. PN launched me"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->addPushTNGTrackingParams(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 88
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 90
    const-string v6, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v6, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-direct {p0, v6, v4}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 99
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v6, "com.ea.nimble.tracking.eventwrangler"

    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v6, v7}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v5

    .line 101
    .local v5, "wranglerPersistence":Lcom/ea/nimble/Persistence;
    const-string v6, "applicationBundleVersion"

    invoke-virtual {v5, v6}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "cachedVersionString":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "currentVersionString":Ljava/lang/String;
    const-string v6, "Current app version, %s. Cached app version, %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    if-nez v0, :cond_5

    .line 109
    const-string v6, "applicationBundleVersion"

    invoke-virtual {v5, v6, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 112
    const/4 v3, 0x0

    .line 115
    .local v3, "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 126
    :goto_1
    if-eqz v3, :cond_4

    .line 128
    const-string v6, "EASP tracking file found. Counting as app update."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const-string v6, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v6, "No EASP tracking file."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Exception loading EASP tracking file."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    .end local v3    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 145
    const-string v6, "applicationBundleVersion"

    invoke-virtual {v5, v6, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 148
    const-string v6, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_6
    const-string v6, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onApplicationQuit()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "NIMBLESTANDARD::SESSION_END"

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onApplicationResume()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "NIMBLESTANDARD::APPRESUME_FROMURL"

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "PushNotification"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PushNotification"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "NIMBLESTANDARD::SESSION_START"

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onApplicationSuspend()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "NIMBLESTANDARD::SESSION_END"

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/TrackingEventWrangler;->logAndCheckEvent(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public restore()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V

    .line 61
    return-void
.end method
