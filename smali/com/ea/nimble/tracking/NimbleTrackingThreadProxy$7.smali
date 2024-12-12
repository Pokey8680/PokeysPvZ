.class Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->setEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    iput-boolean p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;->val$enable:Z

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->setEnable(Z)V

    .line 100
    return-void
.end method
