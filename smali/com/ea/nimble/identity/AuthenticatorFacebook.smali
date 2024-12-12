.class Lcom/ea/nimble/identity/AuthenticatorFacebook;
.super Lcom/ea/nimble/identity/AuthenticatorBase;
.source "AuthenticatorFacebook.java"


# static fields
.field private static final PID_TYPE:Ljava/lang/String; = "mobile_facebook"

.field private static final URL_TEMPLATE_FACEBOOK_IMAGE_URL:Ljava/lang/String; = "https://graph.facebook.com/%s/picture?type=normal"

.field private static final URL_TEMPLATE_FACEBOOK_LOGIN:Ljava/lang/String; = "%s/connect/auth?mobile_login_type=mobile_game_facebook&client_id=%s&response_type=code&display=mobilegame/login&fb_token=%s&redirect_uri=nucleus:rest"


# instance fields
.field private m_overrideBirthday:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;-><init>()V

    .line 65
    const-string v0, "AuthenticatorFacebook"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/identity/AuthenticatorFacebook;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/identity/AuthenticatorFacebook;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->exchangeFacebookAccessTokenForAuthCode(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized exchangeFacebookAccessTokenForAuthCode(Ljava/lang/String;)V
    .locals 7
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    const/4 v1, 0x0

    .line 231
    .local v1, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 232
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/connect/auth?mobile_login_type=mobile_game_facebook&client_id=%s&response_type=code&display=mobilegame/login&fb_token=%s&redirect_uri=nucleus:rest"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getConnectServerUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "url":Ljava/net/URL;
    .local v2, "url":Ljava/net/URL;
    move-object v1, v2

    .line 235
    .end local v0    # "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;

    invoke-direct {v5, p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook$2;-><init>(Lcom/ea/nimble/identity/AuthenticatorFacebook;)V

    invoke-interface {v3, v1, v4, v5}, Lcom/ea/nimble/INetwork;->sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 234
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static initialize()V
    .locals 4

    .prologue
    .line 54
    const-string v1, "AuthenticatorFacebook"

    const-string v2, "Initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGVS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorFacebook;

    invoke-direct {v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;-><init>()V

    .line 56
    .local v0, "authenticator":Lcom/ea/nimble/identity/AuthenticatorFacebook;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private loginFacebook(Lcom/ea/nimble/IFacebook;Ljava/util/List;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 1
    .param p1, "facebook"    # Lcom/ea/nimble/IFacebook;
    .param p3, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/IFacebook;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    .local p2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 181
    :try_start_0
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 182
    if-eqz p3, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook$1;-><init>(Lcom/ea/nimble/identity/AuthenticatorFacebook;)V

    invoke-interface {p1, p2, v0}, Lcom/ea/nimble/IFacebook;->login(Ljava/util/List;Lcom/ea/nimble/IFacebook$FacebookCallback;)V

    .line 224
    return-void

    .line 186
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method autoLogin()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v2, "Facebook Authenticator AutoLogin"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_autoLoginAttempt:Z

    .line 314
    const-string v1, "com.ea.nimble.facebook"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IFacebook;

    .line 315
    .local v0, "facebook":Lcom/ea/nimble/IFacebook;
    if-nez v0, :cond_0

    .line 317
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    const-string v3, "Cannot auto login with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 333
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-interface {v0}, Lcom/ea/nimble/IFacebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    monitor-enter p0

    .line 326
    :try_start_0
    invoke-interface {v0}, Lcom/ea/nimble/IFacebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->exchangeFacebookAccessTokenForAuthCode(Ljava/lang/String;)V

    .line 327
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 331
    :cond_1
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    const-string v3, "Cannot auto login with FacebookAuthenticator since Facebook SDK doesn\'t have any session existing"

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeAuthentication(Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method protected cancelAuthentication()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_state:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_authenticateRequest:Lcom/ea/nimble/NetworkConnectionHandle;

    if-nez v0, :cond_0

    .line 399
    invoke-super {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    .line 402
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-super {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;->cancelAuthentication()V

    goto :goto_0
.end method

.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "facebook"

    return-object v0
.end method

.method public login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 8
    .param p1, "loginParams"    # Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
    .param p2, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    const/4 v7, 0x0

    .line 109
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v5, "Facebook Authenticator Login"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const-string v4, "com.ea.nimble.facebook"

    invoke-static {v4}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IFacebook;

    .line 112
    .local v1, "facebook":Lcom/ea/nimble/IFacebook;
    if-nez v1, :cond_1

    .line 114
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v5, "Cannot login with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    if-eqz p2, :cond_0

    .line 117
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v5, "Cannot login with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    invoke-direct {v0, v4, v5}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 118
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 169
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-eqz p1, :cond_6

    .line 127
    instance-of v4, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 129
    check-cast v2, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;

    .line 130
    .local v2, "fbLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;->getFacebookPermissions()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v1, v4, p2}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->loginFacebook(Lcom/ea/nimble/IFacebook;Ljava/util/List;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0

    .line 132
    .end local v2    # "fbLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookClientLoginParams;
    :cond_2
    instance-of v4, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;

    if-eqz v4, :cond_5

    move-object v3, p1

    .line 134
    check-cast v3, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;

    .line 135
    .local v3, "fbTokenParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->getFacebookAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    if-eqz p2, :cond_0

    .line 139
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v4, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v5, "Invalid Facebook access token for Facebook token"

    invoke-direct {v0, v4, v5}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 140
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 144
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :cond_3
    monitor-enter p0

    .line 146
    :try_start_0
    sget-object v4, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v4}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 147
    if-eqz p2, :cond_4

    .line 149
    iget-object v4, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_4
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->getFacebookAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->getExpiryDate()Ljava/util/Date;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/ea/nimble/IFacebook;->refreshSession(Ljava/lang/String;Ljava/util/Date;)V

    .line 153
    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->getFacebookAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->exchangeFacebookAccessTokenForAuthCode(Ljava/lang/String;)V

    .line 154
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 158
    .end local v3    # "fbTokenParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;
    :cond_5
    if-eqz p2, :cond_0

    .line 160
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v5, "Unrecognized login parameters"

    invoke-direct {v0, v4, v5}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 161
    .local v0, "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 167
    .end local v0    # "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, p2}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->loginFacebook(Lcom/ea/nimble/IFacebook;Ljava/util/List;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    goto :goto_0
.end method

.method public logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    const/4 v5, 0x0

    .line 270
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v3, "Facebook Authenticator is logging out"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    const-string v2, "com.ea.nimble.facebook"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/IFacebook;

    .line 274
    .local v1, "facebook":Lcom/ea/nimble/IFacebook;
    if-nez v1, :cond_1

    .line 276
    iget-object v2, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v3, "Cannot logout with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v3, "Cannot logout with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    invoke-direct {v0, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 279
    .local v0, "error":Lcom/ea/nimble/Error;
    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 302
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->cancelAuthentication()V

    .line 293
    invoke-interface {v1}, Lcom/ea/nimble/IFacebook;->logout()V

    .line 301
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "mobile_facebook"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    .line 339
    return-void
.end method

.method public restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v1, "com.ea.nimble.facebook"

    invoke-static {v1}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IFacebook;

    .line 78
    .local v0, "facebook":Lcom/ea/nimble/IFacebook;
    if-nez v0, :cond_0

    .line 80
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v2, "FacebookAuthenticator is disabled since there is no NimbleFacebook component"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->TAG:Ljava/lang/String;

    const-string v2, "To enable FacebookAuthenticator, please ensure the NimbleFacebook jar is correctly linked"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 85
    :cond_0
    invoke-super {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorBase;->restoreAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 86
    return-void
.end method

.method protected setup()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_overrideBirthday:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected updateUserProfile()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 344
    const-string v6, "com.ea.nimble.facebook"

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v3

    check-cast v3, Lcom/ea/nimble/IFacebook;

    .line 345
    .local v3, "facebook":Lcom/ea/nimble/IFacebook;
    if-nez v3, :cond_1

    .line 347
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    const-string v8, "Cannot auto login with FacebookAuthenticator since it is disabled for no NimbleFacebook component"

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v12}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    invoke-interface {v3}, Lcom/ea/nimble/IFacebook;->getGraphUser()Ljava/util/Map;

    move-result-object v4

    .line 353
    .local v4, "profile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    if-nez v6, :cond_4

    .line 355
    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-direct {v5}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;-><init>()V

    .line 361
    .local v5, "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :goto_1
    if-eqz v4, :cond_0

    .line 363
    const-string v6, "id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setUserId(Ljava/lang/String;)V

    .line 364
    const-string v6, "name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDisplayName(Ljava/lang/String;)V

    .line 365
    const-string v6, "username"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setUserName(Ljava/lang/String;)V

    .line 366
    const-string v6, "https://graph.facebook.com/%s/picture?type=normal"

    new-array v7, v12, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setAvatarUri(Ljava/lang/String;)V

    .line 367
    const-string v6, "birthday"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    .local v0, "birthday":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 372
    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_overrideBirthday:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 374
    :cond_2
    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_overrideBirthday:Ljava/lang/String;

    .line 375
    invoke-virtual {v5, v0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setDateOfBirth(Ljava/lang/String;)V

    .line 379
    :cond_3
    const-string v6, "email"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setEmail(Ljava/lang/String;)V

    .line 380
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getExpiryInterval()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    add-long/2addr v6, v8

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 381
    .local v1, "expiryTime":Ljava/util/Date;
    invoke-virtual {v5, v1}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->setExpiryTime(Ljava/util/Date;)V

    .line 382
    monitor-enter p0

    .line 384
    :try_start_0
    iput-object v5, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    .line 385
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v12}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->closeUserInfoUpdate(Lcom/ea/nimble/Error;Z)V

    .line 388
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "authenticatorId"

    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorFacebook;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v6, "nimble.notification.identity.authenticator.user.info.update"

    invoke-static {v6, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 359
    .end local v0    # "birthday":Ljava/lang/String;
    .end local v1    # "expiryTime":Ljava/util/Date;
    .end local v2    # "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :cond_4
    iget-object v6, p0, Lcom/ea/nimble/identity/AuthenticatorFacebook;->m_userInfo:Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    move-result-object v5

    .restart local v5    # "userInfo":Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    goto/16 :goto_1

    .line 385
    .restart local v0    # "birthday":Ljava/lang/String;
    .restart local v1    # "expiryTime":Ljava/util/Date;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
