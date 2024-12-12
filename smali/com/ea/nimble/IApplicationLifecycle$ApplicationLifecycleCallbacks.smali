.class public interface abstract Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
.super Ljava/lang/Object;
.source "IApplicationLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IApplicationLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationLifecycleCallbacks"
.end annotation


# virtual methods
.method public abstract onApplicationLaunch(Landroid/content/Intent;)V
.end method

.method public abstract onApplicationQuit()V
.end method

.method public abstract onApplicationResume()V
.end method

.method public abstract onApplicationSuspend()V
.end method
