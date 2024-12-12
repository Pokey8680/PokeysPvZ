.class Lcom/ea/nimble/SynergyIdManagerImpl;
.super Lcom/ea/nimble/Component;
.source "SynergyIdManagerImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyIdManager;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_ID_PERSISTENCE_DATA_ID:Ljava/lang/String; = "anonymousId"

.field private static final AUTHENTICATOR_PERSISTENCE_DATA_ID:Ljava/lang/String; = "authenticator"

.field private static final CURRENT_ID_PERSISTENCE_DATA_ID:Ljava/lang/String; = "currentId"

.field private static final SYNERGY_ID_MANAGER_ANONYMOUS_ID_PERSISTENCE_ID:Ljava/lang/String; = "com.ea.nimble.synergyidmanager.anonymousId"

.field private static final VERSION_PERSISTENCE_DATA_ID:Ljava/lang/String; = "dataVersion"


# instance fields
.field private m_anonymousSynergyId:Ljava/lang/String;

.field private m_authenticatorIdentifier:Ljava/lang/String;

.field private m_currentSynergyId:Ljava/lang/String;

.field private m_receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 41
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;-><init>(Lcom/ea/nimble/SynergyIdManagerImpl;Lcom/ea/nimble/SynergyIdManagerImpl$1;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/SynergyIdManagerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyIdManagerImpl;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->onSynergyEnvironmentStartupRequestsFinished()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyIdManager;
    .locals 1

    .prologue
    .line 45
    const-string v0, "com.ea.nimble.synergyidmanager"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ISynergyIdManager;

    return-object v0
.end method

.method private onSynergyEnvironmentStartupRequestsFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "onSynergyEnvironmentStartupRequestsFinished - Process the notification, everything looks okay"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setAnonymousSynergyId(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "onSynergyEnvironmentStartupRequestsFinished - Aborted because we were unable to get SynergyEnvironment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private restoreFromPersistent()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    const-string v3, "com.ea.nimble.synergyidmanager"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v2

    .line 136
    .local v2, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v2, :cond_0

    .line 138
    const-string v3, "dataVersion"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "dataVersion":Ljava/lang/String;
    const-string v3, "Loaded persistence data version,  %s."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v3, "currentId"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    .line 142
    const-string v3, "authenticator"

    invoke-virtual {v2, v3}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    .line 144
    const-string v3, "Loaded Synergy ID, %s, with authenticator, %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .end local v1    # "dataVersion":Ljava/lang/String;
    :goto_0
    const-string v3, "com.ea.nimble.synergyidmanager.anonymousId"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 153
    .local v0, "anonymousPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_1

    .line 155
    const-string v3, "dataVersion"

    invoke-virtual {v0, v3}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .restart local v1    # "dataVersion":Ljava/lang/String;
    const-string v3, "Loaded persistence data version, %s."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    const-string v3, "anonymousId"

    invoke-virtual {v0, v3}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    .line 159
    const-string v3, "Loaded anonymous Synergy ID, %s."

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v5}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .end local v1    # "dataVersion":Ljava/lang/String;
    :goto_1
    return-void

    .line 148
    .end local v0    # "anonymousPersistence":Lcom/ea/nimble/Persistence;
    :cond_0
    const-string v3, "Could not get persistence object to load from."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    .restart local v0    # "anonymousPersistence":Lcom/ea/nimble/Persistence;
    :cond_1
    const-string v3, "Could not get anonymous Synergy ID persistence object to load from."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private saveDataToPersistent()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 174
    const-string v2, "com.ea.nimble.synergyidmanager.anonymousId"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 176
    .local v0, "anonymousPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 178
    const-string v2, "Saving anonymous Synergy ID, %s, to persistent."

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const-string v2, "dataVersion"

    const-string v3, "1.0.0"

    invoke-virtual {v0, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 181
    const-string v2, "anonymousId"

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 184
    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    .line 187
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 194
    :goto_0
    const-string v2, "com.ea.nimble.synergyidmanager"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 197
    .local v1, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_1

    .line 199
    const-string v2, "Saving current Synergy ID, %s, and authenticator, %s, to persistent."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const-string v2, "dataVersion"

    const-string v3, "1.0.0"

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 202
    const-string v2, "currentId"

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 203
    const-string v2, "authenticator"

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 212
    :goto_1
    return-void

    .line 191
    .end local v1    # "persistence":Lcom/ea/nimble/Persistence;
    :cond_0
    const-string v2, "Could not get anonymous Synergy ID persistence object to save to."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .restart local v1    # "persistence":Lcom/ea/nimble/Persistence;
    :cond_1
    const-string v2, "Could not get persistence object to save to."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setAnonymousSynergyId(Ljava/lang/String;)V
    .locals 6
    .param p1, "synergyId"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    const-string v2, "Attempt to set invalid anonymous Synergy ID over existing ID, %s. Ignoring attempt."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    .line 224
    .local v0, "previousAnonymousSynergyId":Ljava/lang/String;
    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    .line 229
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 247
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    .line 234
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 237
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v1, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "previousSynergyId"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "currentSynergyId"

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v2, "nimble.synergyidmanager.notification.anonymous_synergy_id_changed"

    invoke-static {v2, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private setCurrentSynergyId(Ljava/lang/String;)V
    .locals 6
    .param p1, "synergyId"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    const-string v2, "Attempt to set invalid current Synergy ID over existing ID, %s. Ignoring attempt."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    .line 263
    .local v0, "previousSynergyId":Ljava/lang/String;
    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    .line 265
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    .line 268
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    .line 273
    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v1, "userInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "previousSynergyId"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v2, "currentSynergyId"

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v2, "nimble.synergyidmanager.notification.synergy_id_changed"

    invoke-static {v2, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private sleep()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->saveDataToPersistent()V

    .line 83
    return-void
.end method

.method private wakeup()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->restoreFromPersistent()V

    .line 65
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setAnonymousSynergyId(Ljava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    .line 75
    :cond_1
    const-string v0, "nimble.environment.notification.startup_requests_finished"

    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->sleep()V

    .line 129
    return-void
.end method

.method public getAnonymousSynergyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    .line 302
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "com.ea.nimble.synergyidmanager"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "SynergyId"

    return-object v0
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_currentSynergyId:Ljava/lang/String;

    .line 292
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->getAnonymousSynergyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError;
    .locals 4
    .param p1, "userSynergyId"    # Ljava/lang/String;
    .param p2, "authenticatorIdentifier"    # Ljava/lang/String;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already logged in with authenticator, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    .line 332
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/ea/nimble/Utility;->isOnlyDecimalCharacters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    :cond_1
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    const-string v2, "Synergy ID must be numeric digits."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 325
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    const-string v2, "Authenticator string required for login API."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    iput-object p2, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    .line 330
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError;
    .locals 4
    .param p1, "authenticatorIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 339
    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 341
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    const-string v2, "Already logged out."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    .line 362
    :goto_0
    return-object v0

    .line 346
    :cond_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 348
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    const-string v2, "Authenticator string required for logout API."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 355
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logout must be performed by the same authenticator that logged in, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/SynergyIdManagerError;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_anonymousSynergyId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ea/nimble/SynergyIdManagerImpl;->setCurrentSynergyId(Ljava/lang/String;)V

    .line 360
    iput-object v0, p0, Lcom/ea/nimble/SynergyIdManagerImpl;->m_authenticatorIdentifier:Ljava/lang/String;

    goto :goto_0
.end method

.method protected restore()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->wakeup()V

    .line 89
    return-void
.end method

.method protected resume()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->wakeup()V

    .line 101
    return-void
.end method

.method protected suspend()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/ea/nimble/SynergyIdManagerImpl;->sleep()V

    .line 95
    return-void
.end method
