.class Lcom/ea/nimble/pushtng/PushNotificationImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushtng/PushNotificationImpl;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushtng/PushNotificationImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushtng/PushNotificationImpl;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$1;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/ea/nimble/pushtng/PushNotificationImpl$1;->this$0:Lcom/ea/nimble/pushtng/PushNotificationImpl;

    invoke-static {v0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->access$000(Lcom/ea/nimble/pushtng/PushNotificationImpl;)V

    .line 63
    :cond_0
    return-void
.end method
