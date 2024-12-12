.class Lcom/ea/nimble/SynergyNetworkImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SynergyNetworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/SynergyNetworkImpl;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyNetworkImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/SynergyNetworkImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/SynergyNetworkImpl;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v1, "result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {v1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/SynergyNetworkConnection;

    .line 62
    .local v0, "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v3, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    const-string v4, "Failed to retrieve Environment data from Synergy"

    invoke-direct {v2, v3, v4}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    goto :goto_0

    .line 67
    .end local v0    # "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {v1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/SynergyNetworkConnection;

    .line 69
    .restart local v0    # "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    invoke-virtual {v0}, Lcom/ea/nimble/SynergyNetworkConnection;->start()V

    goto :goto_1

    .line 72
    .end local v0    # "connection":Lcom/ea/nimble/SynergyNetworkConnection;
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkImpl$1;->this$0:Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-static {v1}, Lcom/ea/nimble/SynergyNetworkImpl;->access$000(Lcom/ea/nimble/SynergyNetworkImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method
