.class public Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityPendingMigrationResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;


# instance fields
.field private m_GUID:Ljava/lang/String;

.field private m_currentAuthenticatorId:Ljava/lang/String;

.field private m_currentAuthenticatorPid:Ljava/lang/String;

.field private m_newAuthenticatorId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "newAuthId"    # Ljava/lang/String;
    .param p3, "newAuthPid"    # Ljava/lang/String;
    .param p4, "currAuthId"    # Ljava/lang/String;
    .param p5, "currAuthPid"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_GUID:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorPid:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getMigrationSourceAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getMigrationTargetAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public resume(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 38
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v2

    .line 40
    .local v2, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v1

    .line 41
    .local v1, "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_newAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 44
    .local v0, "authenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->getPid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_currentAuthenticatorPid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-virtual {v2, v1, v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->completeMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityPendingMigrationResolver;->m_GUID:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    goto :goto_0
.end method
