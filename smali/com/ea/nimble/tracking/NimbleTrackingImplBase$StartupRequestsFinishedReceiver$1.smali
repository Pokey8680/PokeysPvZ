.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;
.super Ljava/lang/Object;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->access$300(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V

    .line 917
    return-void
.end method
