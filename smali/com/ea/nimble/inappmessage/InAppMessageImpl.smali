.class public Lcom/ea/nimble/inappmessage/InAppMessageImpl;
.super Lcom/ea/nimble/Component;
.source "InAppMessageImpl.java"

# interfaces
.implements Lcom/ea/nimble/inappmessage/IInAppMessage;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_receiver:Landroid/content/BroadcastReceiver;

.field private m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/inappmessage/InAppMessageImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/inappmessage/InAppMessageImpl;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->refreshInAppMessage()V

    return-void
.end method

.method static synthetic access$102(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/inappmessage/InAppMessageImpl;
    .param p1, "x1"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/inappmessage/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/inappmessage/Message;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->addMessageToCache(Lcom/ea/nimble/inappmessage/Message;)V

    return-void
.end method

.method private static addMessageToCache(Lcom/ea/nimble/inappmessage/Message;)V
    .locals 7
    .param p0, "msg"    # Lcom/ea/nimble/inappmessage/Message;

    .prologue
    .line 524
    if-nez p0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v4, "com.ea.nimble.inappmessage"

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v3

    .line 530
    .local v3, "iamPersistence":Lcom/ea/nimble/Persistence;
    const-string v4, "messageExcludeID"

    invoke-virtual {v3, v4}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 531
    .local v2, "excludeIDObject":Ljava/io/Serializable;
    const/4 v1, -0x1

    .line 532
    .local v1, "excludeID":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Integer;

    if-ne v4, v5, :cond_2

    .line 536
    :try_start_0
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "excludeIDObject":Ljava/io/Serializable;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :cond_2
    :goto_1
    iget v4, p0, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    if-le v4, v1, :cond_0

    .line 548
    const-string v4, "currentInAppMessage"

    invoke-virtual {v3, v4, p0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 549
    invoke-virtual {v3}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 550
    const-string v4, "nimble.inappmessage.notification.message_refresh"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v4, "IAM"

    const-string v5, "Invalid persistence value for excludeID, expected Integer"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private getMessageFromCache()Lcom/ea/nimble/inappmessage/Message;
    .locals 5

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "newMsg":Lcom/ea/nimble/inappmessage/Message;
    const-string v3, "com.ea.nimble.inappmessage"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 200
    .local v1, "iamPersistence":Lcom/ea/nimble/Persistence;
    const-string v3, "currentInAppMessage"

    invoke-virtual {v1, v3}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/inappmessage/Message;

    .line 202
    .local v0, "cachedMsg":Lcom/ea/nimble/inappmessage/Message;
    if-eqz v0, :cond_0

    .line 204
    move-object v2, v0

    .line 207
    :cond_0
    return-object v2
.end method

.method private refreshInAppMessage()V
    .locals 8

    .prologue
    .line 288
    const-string v4, "refresh in app message cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    .line 290
    .local v0, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    .line 291
    .local v2, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v3

    .line 293
    .local v3, "synergyIdManager":Lcom/ea/nimble/ISynergyIdManager;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "language"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "localization"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v4, "deviceLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v4, "deviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v4, "apiVer"

    const-string v5, "1.0.1"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v4, "appVer"

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v4, "hwId"

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v4, "sellId"

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v5

    invoke-interface {v5}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v4, "uid"

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v4, "type"

    const-string v5, "4"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v4, "excludeIds"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v4

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v5

    const-string v6, "synergy.m2u"

    invoke-interface {v5, v6}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/m2u/api/core/getMessage"

    new-instance v7, Lcom/ea/nimble/inappmessage/InAppMessageImpl$5;

    invoke-direct {v7, p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl$5;-><init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;)V

    invoke-interface {v4, v5, v6, v1, v7}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 519
    return-void
.end method

.method private refreshInAppMessageCache()Z
    .locals 2

    .prologue
    .line 250
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->refreshInAppMessage()V

    .line 253
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 257
    new-instance v0, Lcom/ea/nimble/inappmessage/InAppMessageImpl$4;

    invoke-direct {v0, p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl$4;-><init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    .line 273
    const-string v0, "nimble.environment.notification.startup_requests_finished"

    iget-object v1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 274
    const-string v0, "nimble.environment.notification.restored_from_persistent"

    iget-object v1, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeMessageFromCache(Lcom/ea/nimble/inappmessage/Message;)V
    .locals 5
    .param p1, "msg"    # Lcom/ea/nimble/inappmessage/Message;

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p1, :cond_1

    .line 214
    const-string v2, "Removing msg from cache but no message to remove"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v2, "com.ea.nimble.inappmessage"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 220
    .local v1, "iamPersistence":Lcom/ea/nimble/Persistence;
    const-string v2, "currentInAppMessage"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/inappmessage/Message;

    .line 223
    .local v0, "cachedMsg":Lcom/ea/nimble/inappmessage/Message;
    if-nez v0, :cond_2

    .line 225
    const-string v2, "Removing message from cache but nothing in the cache"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_2
    iget v2, v0, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    iget v3, p1, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    if-ne v2, v3, :cond_0

    .line 232
    const-string v2, "Removing message from cache. Removed successfully"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    const-string v2, "currentInAppMessage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 239
    const-string v2, "messageExcludeID"

    iget v3, p1, Lcom/ea/nimble/inappmessage/Message;->m_messageID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 240
    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->synchronize()V

    goto :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    const-string v0, "cleanup"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "Canceling network connection."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->cancel()V

    .line 94
    iput-object v3, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    iput-object v3, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    .line 102
    :cond_1
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "com.ea.nimble.inappmessage"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "IAM"

    return-object v0
.end method

.method public popMessageFromCache()Lcom/ea/nimble/inappmessage/Message;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    invoke-direct {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->getMessageFromCache()Lcom/ea/nimble/inappmessage/Message;

    move-result-object v0

    .line 172
    .local v0, "newMessage":Lcom/ea/nimble/inappmessage/Message;
    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->removeMessageFromCache(Lcom/ea/nimble/inappmessage/Message;)V

    .line 176
    const-string v1, "----- BEGIN POPPED IAM INFO -----"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->getMessageId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonLabel1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->buttonLabel1Title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonLabel2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->buttonLabel2Title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonLabel3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ea/nimble/inappmessage/Message;->buttonLabel3Title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const-string v1, "----- END POPPED IAM INFO -----"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .end local v0    # "newMessage":Lcom/ea/nimble/inappmessage/Message;
    :goto_0
    return-object v0

    .line 189
    .restart local v0    # "newMessage":Lcom/ea/nimble/inappmessage/Message;
    :cond_0
    const-string v1, "No message in cache to display info for."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "restore"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->refreshInAppMessageCache()Z

    .line 68
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->refreshInAppMessageCache()Z

    .line 84
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "setup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public showInAppMessage()V
    .locals 5

    .prologue
    .line 110
    const-string v3, "com.ea.nimble.inappmessage"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 111
    .local v1, "iamPersistence":Lcom/ea/nimble/Persistence;
    const-string v3, "currentInAppMessage"

    invoke-virtual {v1, v3}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/inappmessage/Message;

    .line 113
    .local v2, "msg":Lcom/ea/nimble/inappmessage/Message;
    if-nez v2, :cond_0

    .line 167
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-direct {p0, v2}, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->removeMessageFromCache(Lcom/ea/nimble/inappmessage/Message;)V

    .line 121
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel1Title:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_url:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_url:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel1Title:Ljava/lang/String;

    new-instance v4, Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;

    invoke-direct {v4, p0, v2}, Lcom/ea/nimble/inappmessage/InAppMessageImpl$1;-><init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Lcom/ea/nimble/inappmessage/Message;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    :cond_1
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel2Title:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 150
    iget-object v3, v2, Lcom/ea/nimble/inappmessage/Message;->m_buttonLabel2Title:Ljava/lang/String;

    new-instance v4, Lcom/ea/nimble/inappmessage/InAppMessageImpl$2;

    invoke-direct {v4, p0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl$2;-><init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;

    invoke-direct {v4, p0, v0}, Lcom/ea/nimble/inappmessage/InAppMessageImpl$3;-><init>(Lcom/ea/nimble/inappmessage/InAppMessageImpl;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Canceling network connection."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->cancel()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/inappmessage/InAppMessageImpl;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 78
    :cond_0
    return-void
.end method
