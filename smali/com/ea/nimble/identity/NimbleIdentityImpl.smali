.class public Lcom/ea/nimble/identity/NimbleIdentityImpl;
.super Lcom/ea/nimble/Component;
.source "NimbleIdentityImpl.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentity;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final DATA_TEMPLATE_MIGRATE:Ljava/lang/String; = "?client_id=%s&tuid=%s"

.field private static final REQUEST_HEADER_CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-type"

.field private static final REQUEST_HEADER_CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final REQUEST_HEADER_SOURCE_AT_KEY:Ljava/lang/String; = "X-SOURCE-ACCESS-TOKEN"

.field private static final REQUEST_HEADER_TARGET_AT_KEY:Ljava/lang/String; = "X-TARGET-ACCESS-TOKEN"

.field private static final URL_TEMPLATE_MIGRATE:Ljava/lang/String; = "%s/connect/migrate"

.field private static final URL_TEMPLATE_REQUEST_SERVER_AUTHENTICATION_OAUTH_CODE:Ljava/lang/String; = "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"


# instance fields
.field private m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

.field private m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

.field private final m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_authenticators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

.field private m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field private final m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 58
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$1;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->onAuthenticatorStateChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->onPidInfoUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/NimbleIdentityImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/NimbleIdentityImpl;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    return-object v0
.end method

.method private getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "authId"    # Ljava/lang/String;

    .prologue
    .line 944
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAccessToken()Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "myAccessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    const/4 v0, 0x0

    .line 951
    .end local v0    # "myAccessToken":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method static getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;
    .locals 1

    .prologue
    .line 95
    const-string v0, "com.ea.nimble.identity"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;-><init>()V

    const-string v1, "com.ea.nimble.identity"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private loadMainAuthenticator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 966
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 968
    const-string v1, "mainAuthenticatorId"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 970
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onAuthenticatorStateChange()V
    .locals 4

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 422
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v2, v3, :cond_0

    .line 424
    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_READY:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private onPidInfoUpdate()V
    .locals 6

    .prologue
    .line 433
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v3, "pidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 436
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    const-string v1, ""

    .line 437
    .local v1, "pid":Ljava/lang/String;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v2

    .line 438
    .local v2, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 444
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .end local v1    # "pid":Ljava/lang/String;
    .end local v2    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    :cond_1
    monitor-enter p0

    .line 446
    :try_start_0
    iput-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    .line 447
    monitor-exit p0

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private saveMainAuthenticator(Ljava/lang/String;)V
    .locals 3
    .param p1, "authenticatorId"    # Ljava/lang/String;

    .prologue
    .line 956
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 957
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 959
    const-string v1, "mainAuthenticatorId"

    invoke-virtual {v0, v1, p1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 961
    :cond_0
    return-void
.end method

.method private validateMigrationIds(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/Error;
    .locals 7
    .param p1, "sourceAuthenticatorId"    # Ljava/lang/String;
    .param p2, "targetAuthenticatorId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 578
    const/4 v2, 0x0

    .line 579
    .local v2, "inputError":Lcom/ea/nimble/Error;
    const-string v1, ""

    .line 582
    .local v1, "errMsg":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 585
    :cond_0
    const-string v1, "Source authenticator ID is either null or empty"

    .line 587
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 669
    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    .local v3, "inputError":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 595
    .end local v3    # "inputError":Ljava/lang/Object;
    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 598
    :cond_2
    const-string v1, "Target authenticator ID is either null or empty"

    .line 600
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 604
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto :goto_0

    .line 609
    .end local v3    # "inputError":Ljava/lang/Object;
    :cond_3
    const-string v4, "anonymous"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 612
    const-string v1, "Source authenticator must be anonymous"

    .line 614
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 618
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto :goto_0

    .line 622
    .end local v3    # "inputError":Ljava/lang/Object;
    :cond_4
    const-string v4, "anonymous"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 625
    const-string v1, "Target authenticator cannot be anonymous"

    .line 627
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 631
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto :goto_0

    .line 635
    .end local v3    # "inputError":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 638
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_6

    .line 639
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v4, v5, :cond_7

    .line 642
    :cond_6
    const-string v1, "Source authenticator is not logged in"

    .line 644
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 648
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto :goto_0

    .line 652
    .end local v3    # "inputError":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 655
    if-eqz v0, :cond_8

    .line 656
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v4, v5, :cond_9

    .line 659
    :cond_8
    const-string v1, "Target authenticator is not logged in"

    .line 661
    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError;

    .end local v2    # "inputError":Lcom/ea/nimble/Error;
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v2, v4, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .restart local v2    # "inputError":Lcom/ea/nimble/Error;
    move-object v3, v2

    .line 665
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v3    # "inputError":Ljava/lang/Object;
    :cond_9
    move-object v3, v2

    .line 669
    .restart local v3    # "inputError":Ljava/lang/Object;
    goto/16 :goto_0
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    return-void
.end method

.method completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 9
    .param p1, "currentAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p3, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    const/4 v8, 0x0

    .line 741
    const-string v6, "Account migration successful"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    const-string v6, "com.ea.nimble.tracking"

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    .line 744
    .local v0, "component":Lcom/ea/nimble/Component;
    if-eqz v0, :cond_0

    move-object v5, v0

    .line 746
    check-cast v5, Lcom/ea/nimble/tracking/ITracking;

    .line 747
    .local v5, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 749
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 750
    .local v1, "curAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string v6, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static {v1}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 754
    .local v2, "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string v6, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static {v2}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v6, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v6, "NIMBLESTANDARD::IDENTITY_MIGRATION"

    invoke-interface {v5, v6, v3}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 762
    .end local v1    # "curAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 764
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ea/nimble/identity/AuthenticatorBase;->completeMigration()V

    .line 766
    const-string v6, "com.ea.nimble.identity"

    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v6, v7}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v4

    .line 767
    .local v4, "persistence":Lcom/ea/nimble/Persistence;
    const-string v6, "nimble.notification.identity.migraiton"

    invoke-virtual {v4, v6, v8}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 768
    invoke-virtual {v4}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 771
    if-eqz p3, :cond_1

    .line 773
    invoke-interface {p3, p2, v8}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 775
    :cond_1
    return-void
.end method

.method getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    return-object v0
.end method

.method getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 410
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    .line 415
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :goto_0
    return-object v0

    .restart local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .locals 2
    .param p1, "authId"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 384
    .local v0, "foundAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foundAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 389
    .restart local v0    # "foundAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    return-object v0
.end method

.method public getAuthenticators()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAutoRefreshFlag()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v0

    return v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    const-string v0, "com.ea.nimble.identity"

    return-object v0
.end method

.method getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "Identity"

    return-object v0
.end method

.method public getLoggedInAuthenticators()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v1, "loggedInAuthenticators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;>;"
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eqz v2, :cond_2

    .line 340
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 349
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v3, v4, :cond_0

    .line 351
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_2
    return-object v1
.end method

.method getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    return-object v0
.end method

.method public getPidMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method getPidMapInternal()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getState()Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    return-object v0
.end method

.method handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 7
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .param p2, "GUID"    # Ljava/lang/String;
    .param p3, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p4, "currentAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 869
    invoke-interface {p4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, "currentAuthenticatorToken":Ljava/lang/String;
    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "newAuthenticatorToken":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 872
    invoke-virtual/range {v0 .. v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method highlight(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 682
    const-string v0, "Game wants to high light the just logged in authenticator"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 684
    return-void
.end method

.method makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V
    .locals 19
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .param p2, "GUID"    # Ljava/lang/String;
    .param p3, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p4, "newAuthToken"    # Ljava/lang/String;
    .param p5, "currentAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p6, "curAuthToken"    # Ljava/lang/String;

    .prologue
    .line 881
    const-string v16, "Starting migration network call"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 884
    .local v6, "clientId":Ljava/lang/String;
    const-string v16, "?client_id=%s&tuid=%s"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const/16 v18, 0x1

    aput-object p2, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 885
    .local v9, "dataString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 886
    .local v13, "url":Ljava/net/URL;
    const/4 v7, 0x0

    .line 889
    .local v7, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v16

    const-string v17, "nexus.connect"

    invoke-interface/range {v16 .. v17}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 890
    .local v11, "newConnectURL":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 892
    const/16 v16, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 894
    :cond_0
    const-string v16, "%s/connect/migrate"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 895
    .local v15, "urlString":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 896
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    .end local v13    # "url":Ljava/net/URL;
    .local v14, "url":Ljava/net/URL;
    :try_start_1
    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 899
    .local v5, "buffer":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 900
    .end local v7    # "data":Ljava/io/ByteArrayOutputStream;
    .local v8, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v8

    .end local v8    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v13, v14

    .line 903
    .end local v5    # "buffer":[B
    .end local v11    # "newConnectURL":Ljava/lang/String;
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "urlString":Ljava/lang/String;
    .restart local v13    # "url":Ljava/net/URL;
    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 904
    .local v10, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "Content-type"

    const-string v17, "application/x-www-form-urlencoded"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    const-string v16, "X-SOURCE-ACCESS-TOKEN"

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v16, "X-TARGET-ACCESS-TOKEN"

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    new-instance v12, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v12, v13}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 909
    .local v12, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v16, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 910
    iput-object v10, v12, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 911
    iput-object v7, v12, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 913
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v16

    new-instance v17, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ea/nimble/identity/NimbleIdentityImpl$5;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 940
    return-void

    .line 902
    .end local v10    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v16

    goto :goto_0

    .end local v13    # "url":Ljava/net/URL;
    .restart local v11    # "newConnectURL":Ljava/lang/String;
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_0

    .end local v7    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v5    # "buffer":[B
    .restart local v8    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "url":Ljava/net/URL;
    :catch_2
    move-exception v16

    move-object v7, v8

    .end local v8    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v13, v14

    .end local v14    # "url":Ljava/net/URL;
    .restart local v13    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method migrate(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 24
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .param p2, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p3, "currentAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 786
    const-string v5, "Request account migration without callback, no way to notify caller"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 860
    :goto_0
    return-void

    .line 790
    :cond_0
    const-string v5, "Request account migration"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    const-string v5, "com.ea.nimble.tracking"

    invoke-static {v5}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v15

    .line 794
    .local v15, "component":Lcom/ea/nimble/Component;
    if-eqz v15, :cond_1

    move-object/from16 v22, v15

    .line 796
    check-cast v22, Lcom/ea/nimble/tracking/ITracking;

    .line 797
    .local v22, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 799
    .local v19, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 800
    .local v16, "curAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v5, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static/range {v16 .. v16}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 804
    .local v18, "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v5, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static/range {v18 .. v18}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v5, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    const-string v7, "0"

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v5, "NIMBLESTANDARD::IDENTITY_MIGRATION_STARTED"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 811
    .end local v16    # "curAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_1
    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    .line 812
    .local v6, "currentAuthenticatorId":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v4

    .line 814
    .local v4, "newAuthenticatorId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->validateMigrationIds(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/Error;

    move-result-object v17

    .line 815
    .local v17, "inputError":Lcom/ea/nimble/Error;
    if-eqz v17, :cond_2

    .line 817
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v5, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 820
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 821
    .local v13, "currentToken":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAndValidateTokenForMigration(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 823
    .local v11, "targetToken":Ljava/lang/String;
    if-eqz v13, :cond_3

    if-nez v11, :cond_4

    .line 825
    :cond_3
    new-instance v21, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v7, "Access token is empty or invalid"

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v7}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 826
    .local v21, "tokenError":Lcom/ea/nimble/Error;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request for account migration failed for error "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 830
    .end local v21    # "tokenError":Lcom/ea/nimble/Error;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v14

    .line 831
    .local v14, "clientId":Ljava/lang/String;
    invoke-static {v14}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 833
    new-instance v21, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v7, "ClientId is empty or invalid"

    move-object/from16 v0, v21

    invoke-direct {v0, v5, v7}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 834
    .restart local v21    # "tokenError":Lcom/ea/nimble/Error;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request for account migration failed for error "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 839
    .end local v21    # "tokenError":Lcom/ea/nimble/Error;
    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v23

    .line 840
    .local v23, "uuid":Ljava/util/UUID;
    invoke-virtual/range {v23 .. v23}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "GUID":Ljava/lang/String;
    const-string v5, "com.ea.nimble.identity"

    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v5, v7}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v20

    .line 845
    .local v20, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v20, :cond_6

    .line 847
    const-string v5, "Attempted to save pending migration data but persistence was not available. Not saving."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v9, v3

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    .line 859
    invoke-virtual/range {v7 .. v13}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->makeMigrationNetworkCall(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    :cond_6
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;

    .line 852
    invoke-interface/range {p2 .. p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v5

    .line 853
    invoke-interface/range {p3 .. p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .local v2, "migrationObj":Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;
    const-string v5, "nimble.notification.identity.migraiton"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 855
    invoke-virtual/range {v20 .. v20}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 856
    const-string v5, "Migration object saved to persistence"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method migrationFailed(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .param p2, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p3, "theError"    # Lcom/ea/nimble/Error;

    .prologue
    .line 733
    const-string v0, "Migration failed for %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    invoke-interface {p2, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 735
    return-void
.end method

.method public requestServerAuthCodeForLegacyOriginToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 7
    .param p1, "ocsToken"    # Ljava/lang/String;
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    .prologue
    const/4 v4, 0x0

    .line 515
    if-nez p4, :cond_0

    .line 517
    const-string v3, "Request server authentication oAuth code without callback, no way to get result"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v3, "Request server authentication oauth code for legacy origin ocs token"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    const/4 v0, 0x0

    .line 525
    .local v0, "url":Ljava/net/URL;
    :try_start_0
    const-string v3, "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "urlString":Ljava/lang/String;
    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&scope=%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "url":Ljava/net/URL;
    .local v1, "url":Ljava/net/URL;
    move-object v0, v1

    .line 536
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "urlString":Ljava/lang/String;
    .restart local v0    # "url":Ljava/net/URL;
    :goto_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;

    invoke-direct {v5, p0, p4, p2, p3}, Lcom/ea/nimble/identity/NimbleIdentityImpl$4;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0, v4, v5}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    .line 532
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method resolveLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 0
    .param p1, "newMainAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 674
    if-eqz p1, :cond_0

    .line 676
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 678
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 120
    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->initialize()V

    .line 122
    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 124
    const-string v6, "com.ea.nimble.identity.authenticator."

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v3

    .line 126
    .local v3, "components":[Lcom/ea/nimble/Component;
    const-string v6, "nimble.notification.identity.authentication.update"

    iget-object v8, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v6, v8}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 128
    const-string v6, "nimble.notification.identity.authenticator.pid.info.update"

    iget-object v8, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v6, v8}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 130
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v3, v6

    .line 132
    .local v2, "component":Lcom/ea/nimble/Component;
    instance-of v9, v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-nez v9, :cond_0

    .line 134
    const-string v9, "Invalid authenticator %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/ea/nimble/Component;->getComponentId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 138
    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 139
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "authenticatorId":Ljava/lang/String;
    iget-object v9, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 142
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .end local v1    # "authenticatorId":Ljava/lang/String;
    .end local v2    # "component":Lcom/ea/nimble/Component;
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->loadMainAuthenticator()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "mainAuthenticatorId":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 145
    const-string v6, "No existing main authenticator. Will log in anonymous authenticator"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    const-string v5, "anonymous"

    .line 148
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Main authenticator is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v4

    .line 151
    .local v4, "mainAuthenticator":Lcom/ea/nimble/identity/AuthenticatorBase;
    sget-object v6, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {v4, v6}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 152
    new-instance v6, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;

    invoke-direct {v6, p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl$3;-><init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    invoke-virtual {v4, v6}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 167
    iget-object v6, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 169
    .restart local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v7

    sget-object v8, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v7, v8, :cond_3

    .line 171
    sget-object v7, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    iput-object v7, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    goto :goto_2

    .line 174
    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_4
    return-void
.end method

.method public setAuthenticationConductor(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 3
    .param p1, "conductor"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "Attempting setAuthenticationConductor when we already have one. Unsupported. Ignoring."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    if-nez p1, :cond_2

    .line 238
    const-string v1, "Attempting to setAuthenticationConductor with a null conductor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    if-eq v1, p1, :cond_0

    .line 244
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductor:Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    .line 246
    instance-of v1, p1, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    if-eqz v1, :cond_5

    .line 248
    const-string v1, "Setting the generic auth conductor as our conductor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;

    invoke-direct {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    .line 259
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 261
    .local v0, "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_4

    .line 263
    check-cast v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    .end local v0    # "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    goto :goto_2

    .line 252
    :cond_5
    instance-of v1, p1, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    if-eqz v1, :cond_3

    .line 254
    const-string v1, "Setting the migration auth conductor as our conductor."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;

    invoke-direct {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticationConductorHandler:Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    goto :goto_1
.end method

.method public setAutoRefreshFlag(Z)V
    .locals 3
    .param p1, "refresh"    # Z

    .prologue
    .line 480
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_configuration:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-virtual {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->setAutoRefresh(Z)V

    .line 481
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_authenticators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 483
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    check-cast v0, Lcom/ea/nimble/identity/AuthenticatorBase;

    .end local v0    # "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->enableAutoRefresh(Z)V

    goto :goto_0

    .line 485
    :cond_0
    return-void
.end method

.method setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 7
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    const/4 v6, 0x0

    .line 283
    if-nez p1, :cond_0

    .line 285
    const-string v4, "Failed to set mainAuthenticator with new authenticator because given authenticator is null."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    if-ne p1, v4, :cond_1

    .line 293
    const-string v4, "Skipping setMainAuthenticator because the given authenticator is the same as the previous one."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting mainAuthenticator to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 303
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v1, "authObj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "authId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->saveMainAuthenticator(Ljava/lang/String;)V

    .line 306
    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_mainAuthenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-interface {v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v3

    .line 307
    .local v3, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string v4, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v4, "nimble.notification.identity.main.authenticator.change"

    invoke-static {v4, v2}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 313
    .end local v2    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_2
    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setState(Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;)V
    .locals 2
    .param p1, "state"    # Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    if-eq v0, p1, :cond_0

    .line 454
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl;->m_state:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .line 455
    const-string v0, "nimble.notification.identity.update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    :cond_0
    return-void
.end method

.method switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .param p2, "newAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p3, "currentAuthenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    const/4 v4, 0x0

    .line 689
    if-nez p1, :cond_0

    .line 691
    const-string v2, "Requested account switching without callback. No way to notify caller. Aborting..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    .end local p3    # "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :goto_0
    return-void

    .line 694
    .restart local p3    # "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    if-nez p3, :cond_1

    .line 696
    const-string v1, "Attempted to switchAuthenticators but source authenticator was null"

    .line 697
    .local v1, "errorString":Ljava/lang/String;
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 698
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-interface {p1, v4, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 701
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_1
    if-nez p2, :cond_2

    .line 703
    const-string v1, "Attempted to switchAuthenticators but target authenticator was null"

    .line 704
    .restart local v1    # "errorString":Ljava/lang/String;
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 705
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    invoke-interface {p1, v4, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 708
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 710
    const-string v1, "Attempted to switch from one authenticator to itself. Your from and your to authenticators must be different."

    .line 711
    .restart local v1    # "errorString":Ljava/lang/String;
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 712
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    invoke-interface {p1, v4, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 717
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 719
    invoke-interface {p3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anonymous"

    if-ne v2, v3, :cond_4

    .line 722
    check-cast p3, Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .end local p3    # "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-virtual {p3, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->logoutInternal(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    .line 726
    .restart local p3    # "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_4
    invoke-interface {p1, p2, v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
