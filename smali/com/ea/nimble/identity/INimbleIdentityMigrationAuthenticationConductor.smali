.class public interface abstract Lcom/ea/nimble/identity/INimbleIdentityMigrationAuthenticationConductor;
.super Ljava/lang/Object;
.source "INimbleIdentityMigrationAuthenticationConductor.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;


# virtual methods
.method public abstract handleLogin(Lcom/ea/nimble/identity/INimbleIdentityMigrationLoginResolver;)V
.end method

.method public abstract handleLogout()V
.end method

.method public abstract handlePendingMigration(Lcom/ea/nimble/identity/INimbleIdentityPendingMigrationResolver;)V
.end method
