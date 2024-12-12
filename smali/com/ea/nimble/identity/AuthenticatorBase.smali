.class public abstract Lcom/ea/nimble/identity/AuthenticatorBase;
.super Lcom/ea/nimble/Component;
.source "AuthenticatorBase.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/AuthenticatorBase$INimbleIdentityInternalServiceRequestCallback;
    }
.end annotation


# static fields
.field private static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"

.field private static final DATA_CONTENT_TYPE_KEY:Ljava/lang/String; = "Content-type"

.field private static final DATA_CONTENT_TYPE_VALUE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final DATA_TEMPLATE_LOGIN_WITH_OAUTH_CODE:Ljava/lang/String; = "grant_type=authorization_code&code=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

.field private static final DATA_TEMPLATE_LOGIN_WITH_REFRESH_TOKEN:Ljava/lang/String; = "grant_type=refresh_token&refresh_token=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

.field private static final DEFAULT_RETRY_INTERVAL:D = 60.0

.field private static final EXPIRY_MARGIN_FOR_TIMER:D = 5.0

.field public static final NIMBLE_IDENTITY_PERSISTENCE_TOKEN_SUFFIX:Ljava/lang/String; = "nimble_identity_access_token"

.field private static final REQUEST_HEADER_PERSONA_INFO_EXTRA_FLAG:Ljava/lang/String; = "X-Expand-Results"

.field private static final REQUEST_HEADER_PID_INFO_EXTRA_FLAG:Ljava/lang/String; = "X-Include-Underage"

.field private static final REQUEST_HEADER_REFRESH_TOKEN_EXTRA_FLAG:Ljava/lang/String; = "X-Include-RT-Time"

.field private static final REQUEST_HEADER_TRUE_VALUE:Ljava/lang/String; = "true"

.field private static final URL_TEMPALTE_GET_IDENTITY_INFO_FOR_FRIENDS:Ljava/lang/String; = "/proxy/identity/pids/personaextref/bulk"

.field private static final URL_TEMPLATE_GET_PERSONA_INFO:Ljava/lang/String; = "%s/proxy/identity/pids/me/personas"

.field private static final URL_TEMPLATE_GET_PID_INFO:Ljava/lang/String; = "%s/proxy/identity/pids/me"

.field private static final URL_TEMPLATE_LOGIN:Ljava/lang/String; = "%s/connect/token"

.field private static final URL_TEMPLATE_LOGOUT:Ljava/lang/String; = "%s/connect/clearsid?client_id=%s&access_token=%s"

.field private static final URL_TEMPLATE_REQUEST_SERVER_AUTHENTICATION_OAUTH_CODE:Ljava/lang/String; = "%s/connect/auth?client_id=%s&response_type=code&access_token=%s&redirect_uri=nucleus:rest"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected m_authenticateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field protected m_autoLoginAttempt:Z

.field protected m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_personaCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_personaRefreshTimer:Lcom/ea/nimble/Timer;

.field private m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field private m_personas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/identity/NimbleIdentityPersona;",
            ">;"
        }
    .end annotation
.end field

.field private m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

.field private m_pidInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

.field private m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

.field protected m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field private m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

.field private m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

.field protected m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

.field private m_userInfoCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 66
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .line 68
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-direct {v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    .line 85
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$2;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    .line 92
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$3;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    .line 99
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$4;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    .line 109
    const-string v0, "AuthenticatorBase"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$5;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$5;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$6;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$6;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onTokenRefreshTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onUserProfileRefreshTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityToken;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->onTokenResponse(Lcom/ea/nimble/NetworkConnectionHandle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Lcom/ea/nimble/Error;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closePidInfoUpdate(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/NimbleIdentityPidInfo;)Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/Error;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Lcom/ea/nimble/Error;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->closePersonaUpdate(Lcom/ea/nimble/Error;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onPidInfoRefreshTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onPersonaRefreshTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onNetworkChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->onConfigurationChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;
    .param p1, "x1"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ea/nimble/identity/AuthenticatorBase;)Lcom/ea/nimble/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ea/nimble/identity/AuthenticatorBase;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorBase;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V

    return-void
.end method

.method private closePersonaUpdate(Lcom/ea/nimble/Error;)V
    .locals 10
    .param p1, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v8, 0x0

    .line 1286
    if-nez p1, :cond_2

    .line 1288
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Updating persona information succeed!"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1296
    :goto_0
    monitor-enter p0

    .line 1298
    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 1299
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v2

    .line 1300
    .local v2, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v6, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v3, v6, :cond_1

    .line 1305
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1307
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    sub-double v4, v6, v8

    .line 1309
    .local v4, "refreshTime":D
    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_0

    .line 1314
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 1324
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1329
    .end local v4    # "refreshTime":D
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    .line 1330
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaCallbacks:Ljava/util/ArrayList;

    .line 1331
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .line 1335
    .local v0, "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    .line 1292
    .end local v0    # "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    .end local v2    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    :cond_2
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Fail to get persona from Identity server for error %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v3, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1322
    .restart local v2    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v4

    .restart local v4    # "refreshTime":D
    goto :goto_1

    .line 1331
    .end local v2    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v4    # "refreshTime":D
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1337
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    .restart local v2    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    :cond_4
    return-void
.end method

.method private closePidInfoUpdate(Lcom/ea/nimble/Error;)V
    .locals 8
    .param p1, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v7, 0x0

    .line 1095
    if-nez p1, :cond_1

    .line 1097
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v5, "Updating pid information succeed!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    :goto_0
    monitor-enter p0

    .line 1106
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 1107
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_0

    .line 1109
    if-nez p1, :cond_2

    .line 1111
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    sub-double v2, v4, v6

    .line 1112
    .local v2, "refreshTime":D
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1120
    .end local v2    # "refreshTime":D
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    .line 1121
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    .line 1122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .line 1125
    .local v0, "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    .line 1101
    .end local v0    # "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    :cond_1
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get pid information from Identity server for error %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1116
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_1

    .line 1122
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1127
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    :cond_3
    return-void
.end method

.method private declared-synchronized environmentCheck()Lcom/ea/nimble/Error;
    .locals 4

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v1, v2, :cond_1

    .line 772
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_0

    .line 774
    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 776
    :cond_0
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    const-string v3, "Idenitity cannot work without network."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :goto_0
    monitor-exit p0

    return-object v1

    .line 780
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 781
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 784
    :cond_2
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    const-string v3, "Identity is still in initialization and not ready for operation."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 770
    .end local v0    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 788
    .restart local v0    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v1

    if-nez v1, :cond_4

    .line 790
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    const-string v3, "No authentication conductor has been set yet."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 793
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPidInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1738
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 1739
    .local v1, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_0

    .line 1741
    const-string v2, "pidInfo"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 1742
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v2, :cond_1

    .line 1744
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Restored existing pidInfo (pid = %s) for %s authenticator from persistence."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1746
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1747
    .local v0, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    const-string v2, "nimble.notification.identity.authenticator.pid.info.update"

    invoke-static {v2, v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 1756
    .end local v0    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1752
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "The previous Exception in Persistence while getting NimbleIdentityPidInfo can be safely ignored. A cached value for pidInfo does not exist or was stored in an older format. This value will instead be retrieved from the server."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1773
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 1774
    .local v1, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_0

    .line 1776
    const-string v2, "loggedIn"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1777
    .local v0, "loggedIn":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1779
    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .line 1780
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Loaded state: OFFLINE"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1786
    .end local v0    # "loggedIn":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 1784
    :cond_0
    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .line 1785
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Loaded state: NONE"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadToken()V
    .locals 4

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 1715
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v0, :cond_0

    .line 1717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    .line 1723
    :goto_0
    return-void

    .line 1721
    :cond_0
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityToken;

    iput-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    .line 1722
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onConfigurationChange()V
    .locals 3

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Identity resumes after configuration changed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1630
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    .line 1631
    return-void
.end method

.method private onNetworkChange()V
    .locals 3

    .prologue
    .line 1605
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Identity resumes after network recovered."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1608
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume()V

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_2

    .line 1614
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    .line 1616
    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_0

    .line 1618
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    goto :goto_0
.end method

.method private onPersonaRefreshTimer()V
    .locals 1

    .prologue
    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 1698
    return-void
.end method

.method private onPidInfoRefreshTimer()V
    .locals 1

    .prologue
    .line 1691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 1692
    return-void
.end method

.method private onTokenRefreshTimer()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1678
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V

    .line 1679
    return-void
.end method

.method private onTokenResponse(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 7
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 1638
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityUtility;->parseBodyJSONData(Lcom/ea/nimble/NetworkConnectionHandle;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/ea/nimble/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1646
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-direct {v2, v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;-><init>(Ljava/util/Map;)V

    .line 1648
    .local v2, "token":Lcom/ea/nimble/identity/NimbleIdentityToken;
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1650
    :cond_0
    new-instance v3, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to parse token from server response data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 1672
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "token":Lcom/ea/nimble/identity/NimbleIdentityToken;
    :goto_0
    return-void

    .line 1640
    :catch_0
    move-exception v0

    .line 1642
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 1654
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .restart local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "token":Lcom/ea/nimble/identity/NimbleIdentityToken;
    :cond_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    new-instance v4, Lcom/ea/nimble/identity/AuthenticatorBase$18;

    invoke-direct {v4, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$18;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    monitor-enter p0

    .line 1666
    :try_start_1
    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    .line 1667
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveToken()V

    .line 1668
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updateUserProfile()V

    .line 1669
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePidInfo()V

    .line 1670
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    .line 1671
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onUserProfileRefreshTimer()V
    .locals 1

    .prologue
    .line 1685
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 1686
    return-void
.end method

.method private declared-synchronized prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 798
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v0

    .line 799
    .local v0, "error":Lcom/ea/nimble/Error;
    if-eqz v0, :cond_1

    .line 801
    if-eqz p1, :cond_0

    .line 803
    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 812
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshTokenExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 815
    :cond_2
    if-eqz p1, :cond_3

    .line 817
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v1, v2, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 798
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 825
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 828
    if-eqz p1, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 835
    :cond_5
    if-eqz p1, :cond_6

    .line 837
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_6
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized refreshToken()V
    .locals 13

    .prologue
    .line 902
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v10, "Refreshing token to get access token."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    iget-object v9, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v9}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 905
    iget-object v9, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v9}, Lcom/ea/nimble/Timer;->cancel()V

    .line 907
    :cond_0
    sget-object v9, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v9}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 908
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v1

    .line 909
    .local v1, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    const/4 v7, 0x0

    .line 910
    .local v7, "url":Ljava/net/URL;
    const-string v9, "grant_type=refresh_token&refresh_token=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v12}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 911
    .local v4, "dataString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 914
    .local v2, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v8, Ljava/net/URL;

    const-string v9, "%s/connect/token"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    .end local v7    # "url":Ljava/net/URL;
    .local v8, "url":Ljava/net/URL;
    :try_start_2
    const-string v9, "UTF-8"

    invoke-virtual {v4, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 916
    .local v0, "buffer":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v9, v0

    invoke-direct {v3, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 917
    .end local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .local v3, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .line 920
    .end local v0    # "buffer":[B
    .end local v8    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :goto_0
    :try_start_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 921
    .local v5, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "Content-type"

    const-string v10, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v9, "X-Include-RT-Time"

    const-string v10, "true"

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    new-instance v6, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v6, v7}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 925
    .local v6, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v9, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v9, v6, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 926
    iput-object v5, v6, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 927
    iput-object v2, v6, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 928
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    .line 930
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v9

    new-instance v10, Lcom/ea/nimble/identity/AuthenticatorBase$13;

    invoke-direct {v10, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$13;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v9, v6, v10}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v9

    iput-object v9, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 945
    monitor-exit p0

    return-void

    .line 902
    .end local v1    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "dataString":Ljava/lang/String;
    .end local v5    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "request":Lcom/ea/nimble/HttpRequest;
    .end local v7    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 919
    .restart local v1    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .restart local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "dataString":Ljava/lang/String;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v9

    goto :goto_0

    .end local v7    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    .end local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v0    # "buffer":[B
    .restart local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v7, v8

    .end local v8    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method private declared-synchronized refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v0

    .line 365
    .local v0, "error":Lcom/ea/nimble/Error;
    if-eqz v0, :cond_1

    .line 367
    if-eqz p1, :cond_0

    .line 369
    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 374
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Ready to refresh user profile"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v1}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v1}, Lcom/ea/nimble/Timer;->cancel()V

    .line 380
    :cond_2
    if-eqz p1, :cond_3

    .line 382
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_3
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updateUserProfile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Skipping autoLogin for state NONE"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    if-eqz p1, :cond_1

    .line 246
    :try_start_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->environmentCheck()Lcom/ea/nimble/Error;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Authenticator %s resume failing - environment not ready."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 256
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_3

    .line 258
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Skipping autoLogin for state GOING"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 271
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 272
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    .line 273
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getUserInfo()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    goto :goto_0

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getRefreshTokenExpiryTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 279
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshToken()V

    goto :goto_0

    .line 283
    :cond_5
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private savePidInfo()V
    .locals 6

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 1728
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_0

    .line 1730
    const-string v1, "pidInfo"

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1731
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 1732
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v2, "Saved current pidInfo (pid = %s) for %s authenticator to persistence."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1734
    :cond_0
    return-void
.end method

.method private saveState()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1760
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 1761
    .local v1, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_1

    .line 1763
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_2

    :cond_0
    move v0, v3

    .line 1765
    .local v0, "loggedIn":Z
    :goto_0
    const-string v4, "loggedIn"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1766
    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 1767
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v5, "Saved loggedIn value to persistence as %s for state %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    aput-object v2, v6, v3

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    .end local v0    # "loggedIn":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1763
    goto :goto_0
.end method

.method private saveToken()V
    .locals 4

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 1703
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v0, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1708
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Saving token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    const-string v1, "token"

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method private updatePersonas()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1341
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v5, :cond_0

    .line 1343
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Persona update in progress, skipping"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1416
    :goto_0
    return-void

    .line 1346
    :cond_0
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Updating persona info"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    const/4 v3, 0x0

    .line 1351
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "%s/proxy/identity/pids/me/personas"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 1354
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_1
    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    .local v0, "authorization":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1356
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Authorization"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    const-string v5, "X-Expand-Results"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    new-instance v2, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v2, v3}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 1360
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v5, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v5, v2, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1361
    iput-object v1, v2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 1363
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    new-instance v6, Lcom/ea/nimble/identity/AuthenticatorBase$16;

    invoke-direct {v6, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$16;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v5, v2, v6}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    .line 1353
    .end local v0    # "authorization":Ljava/lang/String;
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private updatePidInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1194
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v5, :cond_0

    .line 1196
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Pid info update in progress, skipping"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1282
    :goto_0
    return-void

    .line 1199
    :cond_0
    iget-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v6, "Updating pid info"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1201
    const/4 v3, 0x0

    .line 1204
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "%s/proxy/identity/pids/me"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    move-object v3, v4

    .line 1207
    .end local v4    # "url":Ljava/net/URL;
    .restart local v3    # "url":Ljava/net/URL;
    :goto_1
    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "authorization":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1209
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Authorization"

    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v5, "X-Include-Underage"

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    new-instance v2, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v2, v3}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 1213
    .local v2, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v5, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v5, v2, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1214
    iput-object v1, v2, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 1216
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    new-instance v6, Lcom/ea/nimble/identity/AuthenticatorBase$15;

    invoke-direct {v6, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$15;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v5, v2, v6}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    .line 1206
    .end local v0    # "authorization":Ljava/lang/String;
    .end local v1    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method abstract autoLogin()V
.end method

.method protected cancelAuthentication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    .line 952
    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    .line 957
    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_3

    .line 962
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    .line 965
    iput-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 967
    :cond_2
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 969
    :cond_3
    return-void
.end method

.method protected declared-synchronized cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 21
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 1466
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v16, v0

    sget-object v17, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1468
    const/4 v14, 0x0

    .line 1471
    .local v14, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v5

    .line 1472
    .local v5, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    new-instance v15, Ljava/net/URL;

    const-string v16, "%s/connect/clearsid?client_id=%s&access_token=%s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v14    # "url":Ljava/net/URL;
    .local v15, "url":Ljava/net/URL;
    move-object v14, v15

    .line 1475
    .end local v5    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v15    # "url":Ljava/net/URL;
    .restart local v14    # "url":Ljava/net/URL;
    :goto_0
    :try_start_2
    new-instance v12, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v12, v14}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 1476
    .local v12, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v16, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    move-object/from16 v0, v16

    iput-object v0, v12, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1477
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v16

    new-instance v17, Lcom/ea/nimble/identity/AuthenticatorBase$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/AuthenticatorBase$17;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v12, v1}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1504
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1508
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1514
    :cond_2
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    .line 1527
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveToken()V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v10

    .line 1530
    .local v10, "pidLoggingOut":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    const/4 v11, 0x1

    .line 1531
    .local v11, "pidUpdate":Z
    :goto_2
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    const/4 v9, 0x1

    .line 1533
    .local v9, "personasUpdate":Z
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    .line 1536
    sget-object v16, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Logout of authenticator "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1541
    if-eqz v11, :cond_3

    .line 1543
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1544
    .local v6, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "authenticatorId"

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    const-string v16, "nimble.notification.identity.authenticator.pid.info.update"

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 1547
    .end local v6    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v9, :cond_4

    .line 1549
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1550
    .restart local v6    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "authenticatorId"

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const-string v16, "nimble.notification.identity.authenticator.persona.info.update"

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 1555
    .end local v6    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v16, "com.ea.nimble.tracking"

    invoke-static/range {v16 .. v16}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v3

    .line 1556
    .local v3, "component":Lcom/ea/nimble/Component;
    if-eqz v3, :cond_5

    if-eqz v10, :cond_5

    .line 1558
    move-object v0, v3

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    move-object v13, v0

    .line 1559
    .local v13, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1561
    .local v8, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v16, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1564
    .local v7, "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string v16, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-static {v7}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string v16, "NIMBLESTANDARD::IDENTITY_LOGOUT"

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v8}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1570
    .end local v7    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_5
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v4

    .line 1571
    .local v4, "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    if-eqz v4, :cond_6

    .line 1573
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1597
    .end local v3    # "component":Lcom/ea/nimble/Component;
    .end local v4    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .end local v9    # "personasUpdate":Z
    .end local v10    # "pidLoggingOut":Ljava/lang/String;
    .end local v11    # "pidUpdate":Z
    .end local v12    # "request":Lcom/ea/nimble/HttpRequest;
    .end local v14    # "url":Ljava/net/URL;
    :cond_6
    :goto_4
    monitor-exit p0

    return-void

    .line 1529
    .restart local v12    # "request":Lcom/ea/nimble/HttpRequest;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1530
    .restart local v10    # "pidLoggingOut":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1532
    .restart local v11    # "pidUpdate":Z
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1576
    .end local v10    # "pidLoggingOut":Ljava/lang/String;
    .end local v11    # "pidUpdate":Z
    .end local v12    # "request":Lcom/ea/nimble/HttpRequest;
    .end local v14    # "url":Ljava/net/URL;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v16, v0

    sget-object v17, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1578
    sget-object v16, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "Logout of authenticator %s while state was going. Premature interruption. Check for failure."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    if-eqz p1, :cond_b

    .line 1584
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 1587
    :cond_b
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v4

    .line 1588
    .restart local v4    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    if-eqz v4, :cond_6

    .line 1590
    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1466
    .end local v4    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 1595
    :cond_c
    :try_start_4
    sget-object v16, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 1474
    .restart local v14    # "url":Ljava/net/URL;
    :catch_0
    move-exception v16

    goto/16 :goto_0
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 290
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    return-void
.end method

.method protected closeAuthentication(Lcom/ea/nimble/Error;)V
    .locals 21
    .param p1, "error"    # Lcom/ea/nimble/Error;

    .prologue
    .line 974
    monitor-enter p0

    .line 976
    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 977
    if-nez p1, :cond_7

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "Authentication succeed!"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\n\n\nAuthentication succeeded for %s\n\n\n"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    const-string v16, "com.ea.nimble.tracking"

    invoke-static/range {v16 .. v16}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v4

    .line 984
    .local v4, "component":Lcom/ea/nimble/Component;
    if-eqz v4, :cond_2

    .line 986
    move-object v0, v4

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    move-object v13, v0

    .line 987
    .local v13, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 990
    .local v10, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 991
    .local v9, "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getPidMapInternal()Ljava/util/HashMap;

    move-result-object v12

    .line 992
    .local v12, "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 994
    .local v7, "key":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 996
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v9, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1048
    .end local v4    # "component":Lcom/ea/nimble/Component;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :catchall_0
    move-exception v16

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 1000
    .restart local v4    # "component":Lcom/ea/nimble/Component;
    .restart local v9    # "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_1
    :try_start_1
    const-string v16, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-static {v9}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1003
    .local v8, "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v11

    .line 1004
    .local v11, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    if-eqz v11, :cond_5

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v11}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    :goto_1
    const-string v16, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-static {v8}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v16, "NIMBLESTANDARD::IDENTITY_LOGIN"

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v10}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1017
    .end local v8    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .end local v12    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_2
    sget-object v16, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    sub-double v14, v16, v18

    .line 1021
    .local v14, "refreshTime":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v14, v15, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1024
    .end local v14    # "refreshTime":D
    :cond_3
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v6

    .line 1025
    .local v6, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    if-eqz v6, :cond_4

    .line 1027
    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticationConductor()Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;

    move-result-object v5

    .line 1028
    .local v5, "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    if-eqz v5, :cond_6

    .line 1030
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_autoLoginAttempt:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v5, v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V

    .line 1046
    .end local v4    # "component":Lcom/ea/nimble/Component;
    .end local v5    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .end local v6    # "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    .line 1047
    .local v3, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateCallbacks:Ljava/util/ArrayList;

    .line 1048
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ea/nimble/identity/AuthenticatorBase;->m_autoLoginAttempt:Z

    .line 1052
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .line 1054
    .local v2, "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_3

    .line 1010
    .end local v2    # "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .end local v3    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    .restart local v4    # "component":Lcom/ea/nimble/Component;
    .restart local v8    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .restart local v12    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1034
    .end local v8    # "newAuthObj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "newPidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .end local v12    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    .restart local v5    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .restart local v6    # "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "\n\n\n@@@@@@@@@@@@@@@@Attempting to login with no conductor registered!~!!!!!@@@@@@@@@@@@@\n\n\n"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1041
    .end local v4    # "component":Lcom/ea/nimble/Component;
    .end local v5    # "conductorHandler":Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;
    .end local v6    # "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "Authentication failed with error %s."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v16 .. v18}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1056
    .restart local v3    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    :cond_8
    return-void
.end method

.method protected closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V
    .locals 8
    .param p1, "error"    # Lcom/ea/nimble/Error;
    .param p2, "createTimer"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1060
    if-nez p1, :cond_1

    .line 1062
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v5, "Updating user profile succeed!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1069
    :goto_0
    monitor-enter p0

    .line 1071
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getAutoRefresh()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v4, v5, :cond_0

    .line 1073
    if-nez p1, :cond_2

    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1075
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    sub-double v2, v4, v6

    .line 1076
    .local v2, "refreshTime":D
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1084
    .end local v2    # "refreshTime":D
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    .line 1085
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfoCallbacks:Ljava/util/ArrayList;

    .line 1086
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .line 1089
    .local v0, "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_2

    .line 1066
    .end local v0    # "callback":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .end local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    :cond_1
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v5, "Fail to get user profile for error %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1080
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_1

    .line 1086
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1091
    .restart local v1    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;>;"
    :cond_3
    return-void
.end method

.method protected completeMigration()V
    .locals 3

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "AuthenticatorBase complete migration called - has no implementation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1807
    return-void
.end method

.method declared-synchronized enableAutoRefresh(Z)V
    .locals 10
    .param p1, "autoRefresh"    # Z

    .prologue
    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    .line 1420
    monitor-enter p0

    if-eqz p1, :cond_5

    .line 1422
    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, v3, :cond_1

    .line 1462
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1426
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v2, :cond_2

    .line 1428
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    sub-double v0, v2, v6

    .line 1429
    .local v0, "refreshTime":D
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1431
    .end local v0    # "refreshTime":D
    :cond_2
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1433
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    sub-double v0, v2, v6

    .line 1434
    .restart local v0    # "refreshTime":D
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userProfileRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1436
    .end local v0    # "refreshTime":D
    :cond_3
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v2, :cond_4

    .line 1438
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    sub-double v0, v2, v6

    .line 1439
    .restart local v0    # "refreshTime":D
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 1441
    .end local v0    # "refreshTime":D
    :cond_4
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1443
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v2, v8

    sub-double v0, v2, v6

    .line 1444
    .restart local v0    # "refreshTime":D
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1420
    .end local v0    # "refreshTime":D
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1449
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1451
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_tokenRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1453
    :cond_6
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1455
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfoRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->cancel()V

    .line 1457
    :cond_7
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personaRefreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v2}, Lcom/ea/nimble/Timer;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method protected exchangeAuthCodeToToken(Ljava/lang/String;)V
    .locals 6
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 844
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v3, "Use oauth code to get token."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 846
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    const-string v2, "grant_type=authorization_code&code=%s&client_id=%s&client_secret=%s&redirect_uri=nucleus:rest"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->exchangeDataForToken(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method protected exchangeDataForToken(Ljava/lang/String;)V
    .locals 12
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 867
    const/4 v5, 0x0

    .line 868
    .local v5, "url":Ljava/net/URL;
    const/4 v1, 0x0

    .line 871
    .local v1, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v8, "%s/connect/token"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 872
    .local v7, "urlString":Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    :try_start_1
    const-string v8, "UTF-8"

    invoke-virtual {p1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 874
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v8, v0

    invoke-direct {v2, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 875
    .end local v1    # "data":Ljava/io/ByteArrayOutputStream;
    .local v2, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .end local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 878
    .end local v0    # "buffer":[B
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlString":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 879
    .local v3, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "Content-type"

    const-string v9, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v8, "X-Include-RT-Time"

    const-string v9, "true"

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    new-instance v4, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v4, v5}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 883
    .local v4, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v8, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v8, v4, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 884
    iput-object v3, v4, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 885
    iput-object v1, v4, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 887
    monitor-enter p0

    .line 889
    :try_start_3
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v8

    new-instance v9, Lcom/ea/nimble/identity/AuthenticatorBase$12;

    invoke-direct {v9, p0}, Lcom/ea/nimble/identity/AuthenticatorBase$12;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    invoke-interface {v8, v4, v9}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v8

    iput-object v8, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 897
    monitor-exit p0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 877
    .end local v3    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "request":Lcom/ea/nimble/HttpRequest;
    :catch_0
    move-exception v8

    goto :goto_0

    .end local v5    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_0

    .end local v1    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v0    # "buffer":[B
    .restart local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_2
    move-exception v8

    move-object v1, v2

    .end local v2    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_0
.end method

.method getAccessToken()Lcom/ea/nimble/identity/NimbleIdentityToken;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ea.nimble.identity.authenticator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaByNamespace(Ljava/lang/String;J)Lcom/ea/nimble/identity/NimbleIdentityPersona;
    .locals 10
    .param p1, "namespaceName"    # Ljava/lang/String;
    .param p2, "personaId"    # J

    .prologue
    const/4 v2, 0x0

    .line 548
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    move-result-object v1

    .line 550
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    if-eqz v1, :cond_2

    .line 552
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    .line 554
    .local v0, "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getPersonaId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    .end local v0    # "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    :goto_0
    return-object v0

    .line 562
    .restart local v0    # "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    :cond_1
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v4, "Try to get persona with persona id %d, but namespace %s doesn\'t match the asked for %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 563
    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getPersonaId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    .line 562
    invoke-static {v3, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    .line 564
    goto :goto_0

    .end local v0    # "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    :cond_2
    move-object v0, v2

    .line 570
    goto :goto_0
.end method

.method public getPersonaByNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona;
    .locals 4
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getPersonas()Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    if-eqz v1, :cond_1

    .line 589
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    .line 591
    .local v0, "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getNamespaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    .end local v0    # "persona":Lcom/ea/nimble/identity/NimbleIdentityPersona;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/NimbleIdentityPersona;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    monitor-enter p0

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    .line 475
    .local v0, "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_personas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityPersona;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->updatePersonas()V

    .line 480
    :cond_1
    monitor-exit p0

    .line 481
    return-object v0

    .line 480
    .end local v0    # "personas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/identity/NimbleIdentityPersona;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 398
    .local v0, "pidInfo":Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    :cond_0
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    .line 403
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 407
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_3
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->savePidInfo()V

    .line 410
    return-object v0

    .line 407
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    return-object v0
.end method

.method public getUserInfo()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    .locals 3

    .prologue
    .line 309
    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    .line 312
    .local v0, "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshUserProfile(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_pidInfo:Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 320
    :cond_3
    monitor-exit p0

    .line 321
    return-object v0

    .line 320
    .end local v0    # "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Refreshing persona info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$9;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$9;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 534
    return-void
.end method

.method public refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Refreshing pid Info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$8;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$8;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 461
    return-void
.end method

.method public refreshUserInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 337
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$7;

    invoke-direct {v0, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$7;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 360
    return-void
.end method

.method public requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;

    .prologue
    const/4 v2, 0x0

    .line 701
    if-nez p1, :cond_0

    .line 703
    const-string v1, "requestAccessToken API called without a callback. Aborting token refresh"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    :goto_0
    return-void

    .line 707
    :cond_0
    const-string v1, "requestAccessToken API called, proceeding with token refresh"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    if-eqz v1, :cond_3

    .line 711
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v2, "No tokens found for your authenticator"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 714
    .local v0, "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    const-string v1, ""

    const-string v2, ""

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 717
    .end local v0    # "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessTokenExpiryTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 720
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, p0, v1, v2, v3}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 725
    :cond_2
    new-instance v1, Lcom/ea/nimble/identity/AuthenticatorBase$11;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase$11;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V

    invoke-direct {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    .line 744
    :cond_3
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v2, "No tokens found for your authenticator"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 745
    .restart local v0    # "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    const-string v1, ""

    const-string v2, ""

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;->AccessTokenCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method public requestAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
    .locals 4
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;

    .prologue
    const/4 v3, 0x0

    .line 615
    if-nez p3, :cond_0

    .line 617
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Request server authentication oAuth code without callback, no way to get result"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v1, "Request server authentication oauth code for serverId %s and scope %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorBase$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ea/nimble/identity/AuthenticatorBase$10;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->prepare(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0
.end method

.method protected requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 17
    .param p1, "pidType"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p2, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_0

    .line 1133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->TAG:Ljava/lang/String;

    const-string v14, "requestIdentityForFriends called with no way to notify caller"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1180
    :goto_0
    return-void

    .line 1136
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1137
    .local v7, "postDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "pidType"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    const-string v13, "clientId"

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    const-string v13, "values"

    move-object/from16 v0, p2

    invoke-virtual {v7, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-static {v7}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1141
    .local v8, "postDataString":Ljava/lang/String;
    monitor-enter p0

    .line 1143
    const/4 v10, 0x0

    .line 1144
    .local v10, "url":Ljava/net/URL;
    const/4 v4, 0x0

    .line 1147
    .local v4, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v13, "%s%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getProxyServerUrl()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string v16, "/proxy/identity/pids/personaextref/bulk"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1148
    .local v12, "urlString":Ljava/lang/String;
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    .end local v10    # "url":Ljava/net/URL;
    .local v11, "url":Ljava/net/URL;
    :try_start_1
    const-string v13, "UTF-8"

    invoke-virtual {v8, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1150
    .local v3, "buffer":[B
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    array-length v13, v3

    invoke-direct {v5, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1151
    .end local v4    # "data":Ljava/io/ByteArrayOutputStream;
    .local v5, "data":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v5

    .end local v5    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .line 1154
    .end local v3    # "buffer":[B
    .end local v11    # "url":Ljava/net/URL;
    .end local v12    # "urlString":Ljava/lang/String;
    .restart local v10    # "url":Ljava/net/URL;
    :goto_1
    :try_start_3
    const-string v13, "%s %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getType()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_token:Lcom/ea/nimble/identity/NimbleIdentityToken;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ea/nimble/identity/NimbleIdentityToken;->getAccessToken()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1155
    .local v2, "authorization":Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1156
    .local v6, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "Authorization"

    invoke-virtual {v6, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string v13, "Content-Type"

    const-string v14, "text/plain;charset=UTF-8"

    invoke-virtual {v6, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    new-instance v9, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v9, v10}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 1159
    .local v9, "request":Lcom/ea/nimble/HttpRequest;
    sget-object v13, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    iput-object v13, v9, Lcom/ea/nimble/HttpRequest;->method:Lcom/ea/nimble/IHttpRequest$Method;

    .line 1160
    iput-object v6, v9, Lcom/ea/nimble/HttpRequest;->headers:Ljava/util/HashMap;

    .line 1161
    iput-object v4, v9, Lcom/ea/nimble/HttpRequest;->data:Ljava/io/ByteArrayOutputStream;

    .line 1163
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v13

    new-instance v14, Lcom/ea/nimble/identity/AuthenticatorBase$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v14, v0, v1}, Lcom/ea/nimble/identity/AuthenticatorBase$14;-><init>(Lcom/ea/nimble/identity/AuthenticatorBase;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    invoke-interface {v13, v9, v14}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    .line 1179
    monitor-exit p0

    goto/16 :goto_0

    .end local v2    # "authorization":Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "request":Lcom/ea/nimble/HttpRequest;
    :catchall_0
    move-exception v13

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "urlString":Ljava/lang/String;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_2

    .end local v4    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v3    # "buffer":[B
    .restart local v5    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_2
    move-exception v13

    move-object v4, v5

    .end local v5    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_2

    .line 1153
    .end local v3    # "buffer":[B
    .end local v12    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1

    .end local v10    # "url":Ljava/net/URL;
    .restart local v11    # "url":Ljava/net/URL;
    .restart local v12    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_1

    .end local v4    # "data":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v3    # "buffer":[B
    .restart local v5    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "url":Ljava/net/URL;
    :catch_2
    move-exception v13

    move-object v4, v5

    .end local v5    # "data":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "data":Ljava/io/ByteArrayOutputStream;
    move-object v10, v11

    .end local v11    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    goto :goto_1
.end method

.method public requestIdentityForFriends(Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support identity information for friends"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadState()V

    .line 205
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v0, v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadToken()V

    .line 208
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->loadPidInfo()V

    .line 212
    :cond_0
    const-string v0, "nimble.notification.networkStatusChanged"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_networkChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 214
    const-string v0, "nimble.notification.identity.configuration.change"

    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_identityConfigChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 220
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 234
    return-void
.end method

.method setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V
    .locals 3
    .param p1, "state"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq p1, v1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    .line 162
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->saveState()V

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string v1, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "nimble.notification.identity.authentication.update"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    .line 168
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    .line 227
    return-void
.end method

.method protected updateUserProfile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1188
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setExpiryTime(Ljava/util/Date;)V

    .line 1189
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V

    .line 1190
    return-void
.end method
