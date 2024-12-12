.class Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;
.super Ljava/lang/Object;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostTask"
.end annotation


# instance fields
.field private m_packageEventsOnExpiry:Z

.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V
    .locals 1
    .param p2, "packageEventsOnExpiry"    # Z

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;->m_packageEventsOnExpiry:Z

    .line 116
    iput-boolean p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;->m_packageEventsOnExpiry:Z

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    iget-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;->m_packageEventsOnExpiry:Z

    invoke-static {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->access$000(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V

    .line 123
    return-void
.end method
