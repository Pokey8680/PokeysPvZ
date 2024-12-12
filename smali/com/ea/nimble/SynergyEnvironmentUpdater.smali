.class Lcom/ea/nimble/SynergyEnvironmentUpdater;
.super Ljava/lang/Object;
.source "SynergyEnvironmentUpdater.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;
    }
.end annotation


# static fields
.field private static final GET_ANONUID_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final GET_DIRECTION_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final GET_EADEVICEID_MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final SYNERGY_DIRECTOR_RESPONSE_ERROR_CODE_SERVERS_FULL:I = -0x11172

.field private static final SYNERGY_USER_VALIDATE_EADEVICEID_RESPONSE_ERROR_CODE_CLEAR_CLIENT_CACHED_EADEVICEID:I = -0x4e7e

.field private static final SYNERGY_USER_VALIDATE_EADEVICEID_RESPONSE_ERROR_CODE_VALIDATION_FAILED:I = -0x4e7d

.field private static final VALIDATE_EADEVICEID_MAX_RETRY_ATTEMPTS:I = 0x3


# instance fields
.field private m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_getAnonUIDRetryCount:J

.field private m_getDirectionRetryCount:J

.field private m_getEADeviceIDRetryCount:J

.field private m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

.field private m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

.field private m_validateEADeviceIDRetryCount:J


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 4
    .param p1, "core"    # Lcom/ea/nimble/BaseCore;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    .line 53
    new-instance v0, Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-direct {v0}, Lcom/ea/nimble/EnvironmentDataContainer;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 55
    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    .line 56
    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 57
    iput-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 59
    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    .line 60
    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/ea/nimble/SynergyEnvironmentUpdater;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$1008(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$1108(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_validateEADeviceIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide p1
.end method

.method static synthetic access$1208(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getAnonUIDRetryCount:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyEnvironmentUpdater;)Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyValidateEADeviceId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetEADeviceId()V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/Exception;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->isTimeoutError(Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/ea/nimble/SynergyEnvironmentUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide p1
.end method

.method static synthetic access$708(Lcom/ea/nimble/SynergyEnvironmentUpdater;)J
    .locals 4
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_getDirectionRetryCount:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V

    return-void
.end method

.method static synthetic access$900(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyEnvironmentUpdater;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetAnonUid()V

    return-void
.end method

.method private callSynergyGetAnonUid()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 560
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyIdManager;->getAnonymousSynergyId()Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "existingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 563
    const-string v3, "Not getting anonymous ID from Synergy since it was loaded from persistence"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3, v1}, Lcom/ea/nimble/EnvironmentDataContainer;->setSynergyAnonymousId(Ljava/lang/String;)V

    .line 565
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    .line 644
    :goto_0
    return-void

    .line 569
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 570
    .local v2, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "apiVer"

    const-string v4, "1.0.0"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v3, "updatePriority"

    const-string v4, "false"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v3, "hwId"

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v4}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    const-string v3, "eadeviceid"

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    invoke-virtual {v4}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v5, "synergy.user"

    .line 597
    invoke-virtual {v4, v5}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/user/api/android/getAnonUid"

    new-instance v6, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;

    invoke-direct {v6, p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater$4;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    .line 596
    invoke-interface {v3, v4, v5, v2, v6}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    goto :goto_0

    .line 590
    :cond_1
    const-string v3, "getAnonUid got an invalid EA Device ID."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v4, "EA Device ID is invalid"

    invoke-direct {v0, v3, v4}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 592
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private callSynergyGetDirection()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 118
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "bundleId":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "deviceString":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceCodename()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "deviceCodename":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "manufacturer":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceModel()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "model":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "brand":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v9

    invoke-interface {v9}, Lcom/ea/nimble/IApplicationEnvironment;->getDeviceFingerprint()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "fingerprint":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 131
    const-string v9, "GETDIRECTION bundleId is invalid"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v4, Lcom/ea/nimble/Error;

    sget-object v9, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v10, "bundleId is invalid"

    invoke-direct {v4, v9, v10}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 133
    .local v4, "error":Lcom/ea/nimble/Error;
    invoke-direct {p0, v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    .line 266
    .end local v4    # "error":Lcom/ea/nimble/Error;
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 137
    const-string v9, "GETDIRECTION deviceString is invalid"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    new-instance v4, Lcom/ea/nimble/Error;

    sget-object v9, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v10, "deviceString is invalid"

    invoke-direct {v4, v9, v10}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 139
    .restart local v4    # "error":Lcom/ea/nimble/Error;
    invoke-direct {p0, v4}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    goto :goto_0

    .line 143
    .end local v4    # "error":Lcom/ea/nimble/Error;
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v8, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "packageId"

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v9, "deviceString"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v9, "deviceCodename"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v9, "manufacturer"

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v9, "model"

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v9, "brand"

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v9, "fingerprint"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v9, "serverEnvironment"

    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->getSynergyServerEnvironmentName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v9, "sdkVersion"

    const-string v10, "1.23.8.1124"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v9, "apiVer"

    const-string v10, "1.0.0"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v9

    iget-object v10, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 156
    invoke-static {}, Lcom/ea/nimble/Base;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/director/api/android/getDirectionByPackage"

    new-instance v12, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;

    invoke-direct {v12, p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater$1;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    .line 155
    invoke-interface {v9, v10, v11, v8, v12}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v9

    iput-object v9, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    goto :goto_0
.end method

.method private callSynergyGetEADeviceId()V
    .locals 17

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 290
    .local v8, "nimbleEnvironment":Lcom/ea/nimble/ISynergyEnvironment;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v12, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "apiVer"

    const-string v14, "1.0.0"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v13, "hwId"

    invoke-interface {v8}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v13

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "mac":Ljava/lang/String;
    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 299
    invoke-static {v6}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, "macHash":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 302
    const-string v13, "macHash"

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v7    # "macHash":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    .line 307
    .local v2, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    const/4 v3, 0x0

    .line 309
    .local v3, "applicationContext":Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 311
    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 315
    :cond_1
    if-eqz v3, :cond_2

    .line 317
    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "android_id"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "androidId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 320
    const-string v13, "androidId"

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .end local v1    # "androidId":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 327
    const-string v13, "phone"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 328
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 331
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_4

    const-string v13, "android.permission.READ_PHONE_STATE"

    .line 332
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 334
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 335
    .local v9, "phoneType":I
    if-eqz v9, :cond_4

    .line 339
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "imeiOrMeid":Ljava/lang/String;
    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 342
    const-string v5, "imei"

    .line 344
    .local v5, "key":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v9, v13, :cond_3

    .line 346
    const-string v5, "meid"

    .line 349
    :cond_3
    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v4    # "imeiOrMeid":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "phoneType":I
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v15, "synergy.user"

    .line 356
    invoke-virtual {v14, v15}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "/user/api/android/getDeviceID"

    new-instance v16, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;

    invoke-direct/range {v16 .. v17}, Lcom/ea/nimble/SynergyEnvironmentUpdater$2;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;)V

    .line 355
    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v12, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 400
    return-void
.end method

.method private callSynergyValidateEADeviceId(Ljava/lang/String;)V
    .locals 17
    .param p1, "eaDeviceId"    # Ljava/lang/String;

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 407
    .local v8, "nimbleEnvironment":Lcom/ea/nimble/ISynergyEnvironment;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 408
    .local v12, "urlParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "apiVer"

    const-string v14, "1.0.0"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v13, "hwId"

    invoke-interface {v8}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v13, "eadeviceid"

    move-object/from16 v0, p1

    invoke-interface {v12, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v13

    invoke-interface {v13}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, "mac":Ljava/lang/String;
    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 419
    invoke-static {v6}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, "macHash":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 422
    const-string v13, "macHash"

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .end local v7    # "macHash":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    .line 427
    .local v2, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    const/4 v3, 0x0

    .line 429
    .local v3, "applicationContext":Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 431
    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 435
    :cond_1
    if-eqz v3, :cond_2

    .line 437
    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "android_id"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "androidId":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 440
    const-string v13, "androidId"

    invoke-interface {v12, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v1    # "androidId":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 447
    const-string v13, "phone"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 448
    .local v11, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 451
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_4

    const-string v13, "android.permission.READ_PHONE_STATE"

    .line 452
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_4

    .line 454
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 455
    .local v9, "phoneType":I
    if-eqz v9, :cond_4

    .line 459
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "imeiOrMeid":Ljava/lang/String;
    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 462
    const-string v5, "imei"

    .line 463
    .local v5, "key":Ljava/lang/String;
    const/4 v13, 0x2

    if-ne v9, v13, :cond_3

    .line 465
    const-string v5, "meid"

    .line 468
    :cond_3
    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .end local v4    # "imeiOrMeid":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "phoneType":I
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .end local v11    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    const-string v15, "synergy.user"

    .line 475
    invoke-virtual {v14, v15}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "/user/api/android/validateDeviceID"

    new-instance v16, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;

    invoke-direct/range {v16 .. v18}, Lcom/ea/nimble/SynergyEnvironmentUpdater$3;-><init>(Lcom/ea/nimble/SynergyEnvironmentUpdater;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v12, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 556
    return-void
.end method

.method private getSynergyServerEnvironmentName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    sget-object v0, Lcom/ea/nimble/SynergyEnvironmentUpdater$5;->$SwitchMap$com$ea$nimble$NimbleConfiguration:[I

    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/NimbleConfiguration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 280
    const-string v0, "Request for Synergy server environment name with unknown NimbleConfiguration %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v3}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const-string v0, "live"

    :goto_0
    return-object v0

    .line 275
    :pswitch_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NimbleCustomizedSynergyServerEnvironmentName"

    const-string v2, "live"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isTimeoutError(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 660
    instance-of v1, p1, Lcom/ea/nimble/Error;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 662
    check-cast v0, Lcom/ea/nimble/Error;

    .line 663
    .local v0, "nimbleError":Lcom/ea/nimble/Error;
    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Error;->isError(Lcom/ea/nimble/Error$Code;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const/4 v1, 0x1

    .line 668
    .end local v0    # "nimbleError":Lcom/ea/nimble/Error;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onStartUpSequenceFinished(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 648
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    invoke-interface {v0, p1}, Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;->callback(Ljava/lang/Exception;)V

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    const-string v0, "Startup sequence finished, but no completion callback set."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 105
    .local v1, "synergyNetworkConnectionHandle":Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    if-eqz v1, :cond_0

    .line 107
    const-string v2, "Canceling network connection."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-interface {v1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->cancel()V

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_synergyNetworkConnectionHandle:Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .line 112
    :cond_0
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    const-string v3, "Synergy startup sequence canceled."

    invoke-direct {v0, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 113
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    .line 114
    return-void
.end method

.method getEnvironmentDataContainer()Lcom/ea/nimble/EnvironmentDataContainer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_environmentForSynergyStartUp:Lcom/ea/nimble/EnvironmentDataContainer;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method public startSynergyStartupSequence(Lcom/ea/nimble/EnvironmentDataContainer;Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;)V
    .locals 3
    .param p1, "environmentData"    # Lcom/ea/nimble/EnvironmentDataContainer;
    .param p2, "callback"    # Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    .prologue
    .line 85
    iput-object p2, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_completionCallback:Lcom/ea/nimble/SynergyEnvironmentUpdater$CompletionCallback;

    .line 86
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentUpdater;->m_previousValidEnvironmentData:Lcom/ea/nimble/EnvironmentDataContainer;

    .line 89
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_0

    .line 91
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    const-string v2, "Device is not connected to Wifi or wireless."

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 92
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-direct {p0, v0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->onStartUpSequenceFinished(Ljava/lang/Exception;)V

    .line 99
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/SynergyEnvironmentUpdater;->callSynergyGetDirection()V

    goto :goto_0
.end method
