.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "NimbleTrackingSynergyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;

    invoke-direct {v1, p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
