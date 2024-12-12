.class public Lcom/ea/nimble/identity/NimbleIdentityPlainAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityPlainAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 0
    .param p1, "conductor"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;

    .end local p1    # "conductor":Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPlainAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;

    .line 15
    return-void
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 4
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "bAutoLogin"    # Z

    .prologue
    .line 22
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anonymous"

    if-ne v0, v1, :cond_0

    .line 23
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getMainAuthenticator()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->setMainAuthenticator(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 28
    :cond_0
    const-string v0, "New authenticator %s being LogIn handled by Plain authenticator."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 4
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 36
    const-string v0, "New authenticator %s being LogOut handled by Plain authenticator."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method
