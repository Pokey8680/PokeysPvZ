.class Lcom/ea/nimble/identity/AuthenticatorAnonymous;
.super Lcom/ea/nimble/identity/AuthenticatorBase;
.source "AuthenticatorAnonymous.java"


# static fields
.field private static final ANONYMOUS_USER_NAME:Ljava/lang/String; = "Guest"

.field private static final INITIAL_RETRY_TIME:D = 1.0

.field private static final MAX_RETRY_TIME:D = 300.0

.field private static final PID_TYPE:Ljava/lang/String; = "mobile_upid"

.field private static final URL_TEMPLATE_ANONYMOUS_LOGIN:Ljava/lang/String; = "%s/connect/auth?mobile_login_type=mobile_game_UPID&mobile_UPIDToken=%s&client_id=%s&response_type=code&redirect_uri=nucleus:rest"

.field private static final URL_TEMPLATE_ANONYMOUS_UPIDTOKEN:Ljava/lang/String; = "%s/connect/upidtoken?client_id=%s"


# instance fields
.field private m_currentRetryTime:D

.field private m_retryTimer:Lcom/ea/nimble/Timer;

.field private m_upidToken:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    .line 56
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    .line 82
    const-string v0, "AuthenticatorAnonymous"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->onRetryTimerExpired()V

    return-void
.end method

.method static synthetic access$102(Lcom/ea/nimble/identity/AuthenticatorAnonymous;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->saveUpidToken()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V

    return-void
.end method

.method private declared-synchronized exchangeUpidTokenForAuthCode()V
    .locals 7

    .prologue
    .line 280
    monitor-enter p0

    const/4 v1, 0x0

    .line 283
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 284
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/connect/auth?mobile_login_type=mobile_game_UPID&mobile_UPIDToken=%s&client_id=%s&response_type=code&redirect_uri=nucleus:rest"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object v1, v2

    .line 287
    .end local v0    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;

    invoke-direct {v5, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$3;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-interface {v3, v1, v4, v5}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 286
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private declared-synchronized getUpidToken()V
    .locals 7

    .prologue
    .line 230
    monitor-enter p0

    const/4 v1, 0x0

    .line 233
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 234
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/connect/upidtoken?client_id=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object v1, v2

    .line 237
    .end local v0    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;

    invoke-direct {v5, p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous$2;-><init>(Lcom/ea/nimble/identity/AuthenticatorAnonymous;)V

    invoke-interface {v3, v1, v4, v5}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 236
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static initialize()V
    .locals 4

    .prologue
    .line 71
    const-string v1, "AuthenticatorAnonymous"

    const-string v2, "Initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;

    invoke-direct {v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;-><init>()V

    .line 73
    .local v0, "authenticator":Lcom/ea/nimble/identity/AuthenticatorAnonymous;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private loadUpidToken()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 321
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v0, :cond_1

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "UpidToken"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 331
    const-string v1, "upid_token"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .line 174
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Anonymous Login"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Found cached UPID token %s, use it for login"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->exchangeUpidTokenForAuthCode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Request a new User PID token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getUpidToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onRetryTimerExpired()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Retry timer expired. Attempting login now"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 221
    return-void
.end method

.method private saveUpidToken()V
    .locals 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 338
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    .line 345
    :cond_0
    const-string v1, "UpidToken"

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_upidToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 347
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 349
    :cond_1
    return-void
.end method


# virtual methods
.method autoLogin()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Anonymous authenticator Autologin."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_autoLoginAttempt:Z

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->login(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 169
    return-void
.end method

.method protected closeAuthentication(Lcom/ea/nimble/Error;)V
    .locals 7
    .param p1, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v6, 0x0

    .line 203
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_autoLoginAttempt:Z

    if-eqz v2, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    .line 207
    .local v0, "retryTime":D
    iget-wide v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    .line 208
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v3, "Auto login failed. Retrying in %.1f seconds"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2, v0, v1, v6}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 215
    .end local v0    # "retryTime":D
    :goto_0
    return-void

    .line 212
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    .line 213
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->cancel()V

    .line 214
    invoke-super {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method protected completeMigration()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Complete migration called for Anonymous authenticator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 360
    return-void
.end method

.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "anonymous"

    return-object v0
.end method

.method public login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4
    .param p1, "loginParams"    # Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
    .param p2, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 123
    const-string v1, "Anonymous authenticator is self-maintained, explicitly calling login on the anonymous authenticator does nothing."

    .line 124
    .local v1, "errorString":Ljava/lang/String;
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    if-eqz p2, :cond_0

    .line 127
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 128
    .local v0, "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 130
    .end local v0    # "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    :cond_0
    return-void
.end method

.method public logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 142
    const-string v1, "Anonymous authenticator is self-maintained, explicitly calling logout on the anonymous authenticator does nothing."

    .line 143
    .local v1, "errorString":Ljava/lang/String;
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-direct {v0, v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 145
    .local v0, "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    if-eqz p1, :cond_0

    .line 147
    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 149
    :cond_0
    return-void
.end method

.method logoutInternal(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Anonymous authenticator logout internal."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to logout the anonymous authenticator but it is the only one logged in. Aborting"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cancelAuthentication()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0
.end method

.method public requestIdentityForFriends(Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "mobile_upid"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    .line 198
    return-void
.end method

.method public restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    const-string v1, "Guest"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setUserName(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    const-string v1, "Guest"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDisplayName(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->loadUpidToken()V

    .line 99
    invoke-super {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 100
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->suspend()V

    .line 89
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_retryTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/identity/AuthenticatorAnonymous;->m_currentRetryTime:D

    .line 91
    return-void
.end method
