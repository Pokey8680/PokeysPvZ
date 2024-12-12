.class public interface abstract Lcom/ea/nimble/IApplicationLifecycle;
.super Ljava/lang/Object;
.source "IApplicationLifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;,
        Lcom/ea/nimble/IApplicationLifecycle$ActivityEventHandler;,
        Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;,
        Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleHandler;,
        Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    }
.end annotation


# virtual methods
.method public abstract handleBackPressed()Z
.end method

.method public abstract notifyActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityDestroy(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityPause(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityRestart(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityResume(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityRetainNonConfigurationInstance()V
.end method

.method public abstract notifyActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityStart(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityStop(Landroid/app/Activity;)V
.end method

.method public abstract notifyActivityWindowFocusChanged(ZLandroid/app/Activity;)V
.end method

.method public abstract registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
.end method

.method public abstract registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
.end method

.method public abstract registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
.end method

.method public abstract unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
.end method

.method public abstract unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
.end method

.method public abstract unregisterApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
.end method
