.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartupRequestsFinishedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .param p2, "x1"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;

    .prologue
    .line 903
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 908
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nimble.environment.notification.startup_requests_finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 920
    :cond_0
    return-void
.end method
