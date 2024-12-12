.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver$1;
.super Ljava/lang/Object;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    .prologue
    .line 958
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver$1;->this$1:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->access$400(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V

    .line 963
    return-void
.end method
