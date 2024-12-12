.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;
.super Ljava/lang/Object;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

.field final synthetic val$sessionData:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

.field final synthetic val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    iput-object p3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;->val$sessionData:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 2
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;->val$threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2$1;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 1154
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    .line 1155
    return-void
.end method
