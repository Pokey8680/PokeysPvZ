.class public Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;
.super Ljava/lang/Object;
.source "PushLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final LIFECYCLE_API_VERSION:I = 0xe

.field public static inForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 22
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 52
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 37
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 32
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 47
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 27
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    .line 42
    return-void
.end method
