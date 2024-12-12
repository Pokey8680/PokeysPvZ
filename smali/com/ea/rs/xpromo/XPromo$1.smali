.class Lcom/ea/rs/xpromo/XPromo$1;
.super Landroid/content/BroadcastReceiver;
.source "XPromo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/rs/xpromo/XPromo;->checkAndUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/rs/xpromo/XPromo;


# direct methods
.method constructor <init>(Lcom/ea/rs/xpromo/XPromo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ea/rs/xpromo/XPromo$1;->this$0:Lcom/ea/rs/xpromo/XPromo;

    .line 157
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nimble.notification.networkStatusChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo$1;->this$0:Lcom/ea/rs/xpromo/XPromo;

    invoke-static {v0}, Lcom/ea/rs/xpromo/XPromo;->access$0(Lcom/ea/rs/xpromo/XPromo;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo$1;->this$0:Lcom/ea/rs/xpromo/XPromo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/rs/xpromo/XPromo;->access$1(Lcom/ea/rs/xpromo/XPromo;Landroid/content/BroadcastReceiver;)V

    .line 167
    iget-object v0, p0, Lcom/ea/rs/xpromo/XPromo$1;->this$0:Lcom/ea/rs/xpromo/XPromo;

    invoke-static {v0}, Lcom/ea/rs/xpromo/XPromo;->access$2(Lcom/ea/rs/xpromo/XPromo;)V

    .line 169
    :cond_0
    return-void
.end method
