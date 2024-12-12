.class Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;
.super Ljava/lang/Object;
.source "NimbleIdentityGenericAuthenticationConductorHandler.java"

# interfaces
.implements Lcom/ea/nimble/identity/NimbleIdentityAuthenticationConductorHandler;


# instance fields
.field private loginResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

.field private logoutResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

.field private m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
    .locals 0
    .param p1, "conductor"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    check-cast p1, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    .end local p1    # "conductor":Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    .line 13
    return-void
.end method


# virtual methods
.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Z)V
    .locals 2
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    .param p2, "bAutoLogin"    # Z

    .prologue
    .line 22
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->loginResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

    .line 24
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->loginResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;

    invoke-interface {v0, v1}, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;->handleLogin(Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;)V

    .line 25
    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 2
    .param p1, "auth"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 31
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

    invoke-direct {v0, p1}, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;-><init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->logoutResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

    .line 32
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->m_conductor:Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericAuthenticationConductorHandler;->logoutResolver:Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;

    invoke-interface {v0, v1}, Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;->handleLogout(Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;)V

    .line 33
    return-void
.end method
