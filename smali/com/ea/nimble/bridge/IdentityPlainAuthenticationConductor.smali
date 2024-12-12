.class public Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;
.super Ljava/lang/Object;
.source "IdentityPlainAuthenticationConductor.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityPlainAuthenticationConductor;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    .line 12
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 30
    return-void
.end method

.method public handleLogin()V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public handleLogout()V
    .locals 4

    .prologue
    .line 23
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityPlainAuthenticationConductor;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 24
    return-void
.end method
