.class Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityMigrationAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 5
    .param p1, "conductor"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    .end local p1    # "conductor":Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    .line 21
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentity;->getComponent()Lcom/ea/nimble/identity/INimbleIdentity;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/identity/INimbleIdentity;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object v1

    .line 22
    .local v1, "authenticators":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 28
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v3, v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->handlePendingMigration()Z

    .line 61
    return-void

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 35
    .local v0, "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 37
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    goto :goto_0
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 7
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "bAutoLogin"    # Z

    .prologue
    .line 66
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    .line 70
    .local v0, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v2

    .line 72
    .local v2, "mainAuth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-nez v2, :cond_1

    .line 74
    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-ne p1, v2, :cond_2

    .line 81
    const-string v3, "Error. Attempted to handle login on a authenticator: %s which is already mainAuthenticator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->handlePendingMigration()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;

    invoke-direct {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 93
    .local v1, "loginResolver":Lcom/ea/nimble/identity/NimbleIdentityMigrationLoginResolver;
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    invoke-interface {v3, v1}, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;)V

    goto :goto_0
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 5
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p1, :cond_1

    .line 101
    const-string v2, "Given a null authenticator as part of logout proess."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "anonymous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    .line 109
    .local v1, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v0

    .line 111
    .local v0, "anonymousAuthenticator":Lcom/ea/nimble/identity/AuthenticatorBase;
    if-nez v0, :cond_2

    .line 113
    const-string v2, "Unable to set Anonymous Authenticator as main authenticator as part of logout process."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {v1, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 121
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-eq v2, v3, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->autoLogin()V

    goto :goto_0
.end method

.method public handlePendingMigration()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 131
    const-string v1, "com.ea.nimble.identity"

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v8

    .line 132
    .local v8, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v8, :cond_0

    .line 134
    const-string v1, "Attempted to check pending migration status but persistence was not available. Failing."

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v11

    .line 168
    :goto_0
    return v1

    .line 137
    :cond_0
    const-string v1, "nimble.notification.identity.migraiton"

    invoke-virtual {v8, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;

    .line 139
    .local v7, "migrationObj":Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;
    if-nez v7, :cond_1

    .line 141
    const-string v1, "No pending migration object found in persistence!"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v11

    .line 142
    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v6

    .line 147
    .local v6, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    iget-object v1, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v9

    .line 148
    .local v9, "source":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v9}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_2

    invoke-interface {v9}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v11

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    iget-object v1, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorBaseById(Ljava/lang/String;)Lcom/ea/nimble/identity/AuthenticatorBase;

    move-result-object v10

    .line 155
    .local v10, "target":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v10}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    if-ne v1, v2, :cond_4

    invoke-interface {v10}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v1, v11

    .line 157
    goto :goto_0

    .line 160
    :cond_5
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;

    iget-object v1, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_migrationGUID:Ljava/lang/String;

    iget-object v2, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    iget-object v3, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    iget-object v4, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    iget-object v5, v7, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, "pendingResolver":Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;
    const-string v1, "Sending request to game to handle pending migration"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;

    invoke-interface {v1, v0}, Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;->handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;)V

    .line 168
    const/4 v1, 0x1

    goto :goto_0
.end method
