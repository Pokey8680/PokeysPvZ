.class Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;
.super Ljava/lang/Object;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->clearCustomSessionData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    invoke-static {v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->clearCustomSessionData()V

    .line 143
    return-void
.end method