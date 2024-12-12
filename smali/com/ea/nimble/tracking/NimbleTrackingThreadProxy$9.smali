.class Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
