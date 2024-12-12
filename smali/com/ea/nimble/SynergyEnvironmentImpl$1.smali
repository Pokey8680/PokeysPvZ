.class Lcom/ea/nimble/SynergyEnvironmentImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SynergyEnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyEnvironmentImpl;->startSynergyEnvironmentUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyEnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyEnvironmentImpl;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nimble.notification.networkStatusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    .line 450
    const-string v0, "Network restored. Starting Synergy environment update."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$000(Lcom/ea/nimble/SynergyEnvironmentImpl;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$002(Lcom/ea/nimble/SynergyEnvironmentImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 457
    iget-object v0, p0, Lcom/ea/nimble/SynergyEnvironmentImpl$1;->this$0:Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-static {v0}, Lcom/ea/nimble/SynergyEnvironmentImpl;->access$100(Lcom/ea/nimble/SynergyEnvironmentImpl;)V

    .line 459
    :cond_0
    return-void
.end method
