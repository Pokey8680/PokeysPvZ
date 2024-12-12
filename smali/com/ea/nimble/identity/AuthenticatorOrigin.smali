.class Lcom/ea/nimble/identity/AuthenticatorOrigin;
.super Lcom/ea/nimble/identity/AuthenticatorBase;
.source "AuthenticatorOrigin.java"


# static fields
.field private static final DATA_TEMPLATE_LOGIN_WITH_ORIGIN_PASSWORD:Ljava/lang/String; = "grant_type=password&client_id=%s&client_secret=%s&username=%s&password=%s&redirect_uri=nucleus:rest"

.field private static final PID_TYPE:Ljava/lang/String; = "mobile_origin"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ea/nimble/identity/AuthenticatorBase;-><init>()V

    .line 49
    const-string v0, "AuthenticatorOrigin"

    iput-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private static initialize()V
    .locals 4

    .prologue
    .line 38
    const-string v1, "AuthenticatorOrigin"

    const-string v2, "Initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/ea/nimble/identity/AuthenticatorOrigin;

    invoke-direct {v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;-><init>()V

    .line 40
    .local v0, "authenticator":Lcom/ea/nimble/identity/AuthenticatorOrigin;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->getComponentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private loginOrigin(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->getConfiguration()Lcom/ea/nimble/identity/NimbleIdentityConfig;

    move-result-object v0

    .line 135
    .local v0, "configuration":Lcom/ea/nimble/identity/NimbleIdentityConfig;
    const-string v2, "grant_type=password&client_id=%s&client_secret=%s&username=%s&password=%s&redirect_uri=nucleus:rest"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->getClientSecret()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "dataString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->exchangeDataForToken(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method autoLogin()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v2, "Cannot auto login for origin after session expired"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 155
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->closeAuthentication(Lcom/ea/nimble/Error;)V

    .line 156
    return-void
.end method

.method public getAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "origin"

    return-object v0
.end method

.method public login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5
    .param p1, "params"    # Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
    .param p2, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 73
    instance-of v3, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;

    if-eqz v3, :cond_4

    move-object v2, p1

    .line 75
    check-cast v2, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;

    .line 76
    .local v2, "originLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v4, "Invalid username/password for Origin login"

    invoke-direct {v0, v3, v4}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 81
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    .line 125
    .end local v0    # "error":Lcom/ea/nimble/Error;
    .end local v2    # "originLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
    :cond_1
    :goto_0
    return-void

    .line 85
    .restart local v2    # "originLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
    :cond_2
    monitor-enter p0

    .line 87
    :try_start_0
    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v3}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 88
    if-eqz p2, :cond_3

    .line 90
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_3
    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->loginOrigin(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 93
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 95
    .end local v2    # "originLoginParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
    :cond_4
    instance-of v3, p1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;

    if-eqz v3, :cond_7

    move-object v1, p1

    .line 97
    check-cast v1, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;

    .line 98
    .local v1, "originAuthCodeParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;
    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->getOauthCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    if-eqz p2, :cond_1

    .line 102
    new-instance v0, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v4, "Invalid auth code for Origin login"

    invoke-direct {v0, v3, v4}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 103
    .restart local v0    # "error":Lcom/ea/nimble/Error;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0

    .line 107
    .end local v0    # "error":Lcom/ea/nimble/Error;
    :cond_5
    monitor-enter p0

    .line 109
    :try_start_1
    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {p0, v3}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->setState(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;)V

    .line 110
    if-eqz p2, :cond_6

    .line 112
    iget-object v3, p0, Lcom/ea/nimble/identity/AuthenticatorOrigin;->m_authenticateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_6
    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;->getOauthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->exchangeAuthCodeToToken(Ljava/lang/String;)V

    .line 115
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 119
    .end local v1    # "originAuthCodeParams":Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginOAuthCodeLoginParams;
    :cond_7
    if-eqz p2, :cond_1

    .line 121
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError;

    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v4, "Unrecognized login parameters"

    invoke-direct {v0, v3, v4}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    .line 122
    .local v0, "error":Lcom/ea/nimble/identity/NimbleIdentityError;
    invoke-interface {p2, p0, v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;->onCallback(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method public logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->cancelAuthentication()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->cleanAtLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 149
    return-void
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
    .line 161
    .local p1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "mobile_origin"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/nimble/identity/AuthenticatorOrigin;->requestIdentityForFriends(Ljava/lang/String;Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V

    .line 162
    return-void
.end method
