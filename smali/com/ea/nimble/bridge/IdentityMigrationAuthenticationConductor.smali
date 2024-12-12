.class public Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;
.super Ljava/lang/Object;
.source "IdentityMigrationAuthenticationConductor.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;


# instance fields
.field private m_id:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;->m_id:I

    .line 15
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;->m_id:I

    invoke-static {v0}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeFinalize(I)V

    .line 39
    return-void
.end method

.method public handleLogin(Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;)V
    .locals 3
    .param p1, "resolver"    # Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;

    .prologue
    .line 20
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;->m_id:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public handleLogout()V
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;->m_id:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;)V
    .locals 4
    .param p1, "resolver"    # Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;

    .prologue
    .line 32
    iget v0, p0, Lcom/ea/nimble/bridge/IdentityMigrationAuthenticationConductor;->m_id:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ea/nimble/bridge/BaseNativeCallback;->nativeCallback(I[Ljava/lang/Object;)V

    .line 33
    return-void
.end method
