.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1044
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nimble.notification.networkStatusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 1055
    :cond_0
    return-void
.end method
