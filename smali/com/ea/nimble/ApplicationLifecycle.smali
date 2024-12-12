.class public Lcom/ea/nimble/ApplicationLifecycle;
.super Ljava/lang/Object;
.source "ApplicationLifecycle.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.applicationlifecycle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/IApplicationLifecycle;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getApplicationLifecycle()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    return-object v0
.end method

.method public static onActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    .line 19
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method public static onActivityDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityDestroy(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public static onActivityPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityPause(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public static onActivityRestart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityRestart(Landroid/app/Activity;)V

    .line 25
    return-void
.end method

.method public static onActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 1
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V

    .line 65
    return-void
.end method

.method public static onActivityResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityResume(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method public static onActivityRetainNonConfigurationInstance()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityRetainNonConfigurationInstance()V

    .line 84
    return-void
.end method

.method public static onActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p0, "outState"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityStart(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityStop(Landroid/app/Activity;)V

    .line 55
    return-void
.end method

.method public static onActivityWindowFocusChanged(ZLandroid/app/Activity;)V
    .locals 1
    .param p0, "hasFocus"    # Z
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IApplicationLifecycle;->notifyActivityWindowFocusChanged(ZLandroid/app/Activity;)V

    .line 70
    return-void
.end method

.method public static onBackPressed()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle;->handleBackPressed()Z

    move-result v0

    return v0
.end method
