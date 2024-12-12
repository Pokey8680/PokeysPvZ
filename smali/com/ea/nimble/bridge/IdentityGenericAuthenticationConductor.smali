.class public Lcom/ea/nimble/bridge/IdentityGenericAuthenticationConductor;
.super Ljava/lang/Object;
.source "IdentityGenericAuthenticationConductor.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityGenericAuthenticationConductor;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/ea/nimble/bridge/IdentityGenericAuthenticationConductor;->m_id:I

    .line 14
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityGenericAuthenticationConductor;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 32
    return-void
.end method

.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;)V
    .locals 3
    .param p1, "resolver"    # Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;

    .prologue
    .line 19
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityGenericAuthenticationConductor;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public handleLogout(Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;)V
    .locals 4
    .param p1, "resolver"    # Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;

    .prologue
    .line 25
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityGenericAuthenticationConductor;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 26
    return-void
.end method
