.class public interface abstract Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
.super Ljava/lang/Object;
.source "IApplicationLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IApplicationLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityEventCallbacks"
.end annotation


# virtual methods
.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method
