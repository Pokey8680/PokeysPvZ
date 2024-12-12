.class public Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;
.super Lcom/ea/nimble/Component;
.source "PushNotificationImpl.java"

# interfaces
.implements Lcom/ea/nimble/pushnotificationgoogle/IPushNotification;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private mAppLangChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_IdentityChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 44
    new-instance v0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$1;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$2;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$3;

    invoke-direct {v0, p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$3;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->mAppLangChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$4;

    invoke-direct {v0, p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$4;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_IdentityChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->onSynergyIdChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "reference"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error: null ptr"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    return-void
.end method

.method private onSynergyIdChanged(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 414
    const-string v3, "previousSynergyId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "previousSynergyId":Ljava/lang/String;
    const-string v3, "currentSynergyId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "newSynergyId":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->s_registerId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 419
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 420
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "uid"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "registrationId"

    sget-object v4, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->s_registerId:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "language"

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v3, "localization"

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v3, "deviceLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v3, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v3, "sellId"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v3, "network"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    const-string v3, "revokeId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    .line 436
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v4

    const-string v5, "synergy.m2u"

    invoke-interface {v4, v5}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/m2u/api/android/storePushRegistrationId"

    new-instance v6, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$7;

    invoke-direct {v6, p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$7;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    .line 435
    invoke-interface {v3, v4, v5, v1, v6}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 453
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 175
    :cond_0
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->onDestroy(Landroid/content/Context;)V

    .line 177
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_IdentityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "com.ea.nimble.pushnotificationgoogle"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "PN"

    return-object v0
.end method

.method public register()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->trackStuff()V

    .line 222
    const-string v6, "927779459434"

    const-string v7, "SENDER_ID"

    invoke-direct {p0, v6, v7}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const-string v6, "Nimble PN Component is attempting to register this application for push notifications with the GCM service"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    .line 227
    .local v0, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 232
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 234
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    const-string v6, "Nimble PN Component has passed GCMRegistrar checks and will now attempt to get a valid push token"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "com.ea.nimble.pushnotificationgoogle.intent.RETRY"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.ea.nimble.pushnotificationgoogle"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 249
    iget-object v6, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.ea.nimble.pushnotificationgoogle.DISPLAY_MESSAGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    invoke-static {v1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, "regId":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    const-string v6, "GCM - attempting to register with google"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "927779459434"

    aput-object v7, v6, v9

    invoke-static {v1, v6}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 297
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Nimble PN Component reports that GCMRegistrar checks have failed. PN service will not be available"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_handleMessageReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 264
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "regId":Ljava/lang/String;
    :cond_1
    const-string v6, "GCM - Already registered"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v6

    const-string v7, "synergy.m2u"

    invoke-interface {v6, v7}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 268
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 271
    invoke-static {v1, v5}, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->registerTokenWithSynergy(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    const-string v6, "GCM - Already registered but nimble does not have synergy URL so we can not store token yet... waiting..."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v4, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;

    invoke-direct {v4, p0, v5}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;Ljava/lang/String;)V

    .line 293
    .local v4, "receiver":Landroid/content/BroadcastReceiver;
    const-string v6, "nimble.environment.notification.startup_requests_finished"

    invoke-static {v6, v4}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 294
    const-string v6, "nimble.environment.notification.restored_from_persistent"

    invoke-static {v6, v4}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "restore"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->register()V

    .line 146
    const-string v0, "nimble.synergyidmanager.notification.synergy_id_changed"

    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 148
    const-string v0, "nimble.notification.LanguageChanged"

    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->mAppLangChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 150
    const-string v0, "nimble.notification.identity.authenticator.pid.info.update"

    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_IdentityChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->register()V

    .line 163
    const-string v0, "nimble.synergyidmanager.notification.synergy_id_changed"

    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 165
    return-void
.end method

.method public sendPushNotificationTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 17
    .param p1, "targetSynergyId"    # Ljava/lang/String;
    .param p2, "templateID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p3, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "GCM- SYNERGY "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v15, "overrideValueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 315
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 317
    .local v13, "newOverridePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 318
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 320
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v13, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "newOverridePair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, "overrideValues"

    invoke-interface {v5, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v7, "customParamArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 337
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 338
    .restart local v12    # "key":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 343
    .restart local v16    # "value":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v12, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "encodedKeyString":Ljava/lang/String;
    const-string v1, "\\*"

    const-string v3, "%2A"

    invoke-virtual {v9, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 346
    const-string v1, "UTF-8"

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, "encodedValueString":Ljava/lang/String;
    const-string v1, "\\*"

    const-string v3, "%2A"

    invoke-virtual {v10, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 350
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v14, "newParamPair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v14, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v1, "value"

    invoke-interface {v14, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 356
    .end local v9    # "encodedKeyString":Ljava/lang/String;
    .end local v10    # "encodedValueString":Ljava/lang/String;
    .end local v14    # "newParamPair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 358
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: PushNotificationTemplate can not parse the custom parameter fields for key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 365
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_1
    const-string v1, "customMessages"

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "uid"

    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v1, "targetUserId"

    move-object/from16 v0, p1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v1, "language"

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "localization"

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v1, "deviceLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v1, "sellId"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v1, "clientApiVersion"

    const-string v2, "1.2.1"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "templateCode"

    move-object/from16 v0, p2

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "verificationCode"

    const-string v2, ""

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v1

    .line 380
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    const-string v3, "synergy.m2u"

    invoke-interface {v2, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/m2u/api/android/sendPushNotificationTemplateByUid"

    const/4 v4, 0x0

    new-instance v6, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$6;-><init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;)V

    .line 379
    invoke-interface/range {v1 .. v6}, Lcom/ea/nimble/ISynergyNetwork;->sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 401
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "setup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->m_synergyIdChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    return-void
.end method

.method public trackStuff()V
    .locals 7

    .prologue
    .line 185
    const-string v5, "GCMIntentService"

    sget-object v6, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v5, v6}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 186
    .local v0, "gcmPersistence":Lcom/ea/nimble/Persistence;
    const-string v5, "GCMMessageId"

    invoke-virtual {v0, v5}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 190
    .local v1, "messageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "msgId":Ljava/lang/String;
    const-string v6, "com.ea.nimble.tracking"

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 197
    const-string v6, "com.ea.nimble.tracking"

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v4

    check-cast v4, Lcom/ea/nimble/tracking/ITracking;

    .line 199
    .local v4, "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    if-eqz v4, :cond_1

    .line 201
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 202
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 204
    const-string v6, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    const-string v6, "NIMBLESTANDARD::PN_SHOWN_TO_USER"

    invoke-interface {v4, v6, v3}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 213
    .end local v2    # "msgId":Ljava/lang/String;
    .end local v3    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "trackingComp":Lcom/ea/nimble/tracking/ITracking;
    :cond_3
    const-string v5, "GCMMessageId"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 214
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_0
.end method
