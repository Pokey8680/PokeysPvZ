.class Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "PushNotificationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

.field final synthetic val$regId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;->this$0:Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl;

    iput-object p2, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;->val$regId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, "bundleExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "result"

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "GCM - received notification that environment is online. Sending token to synergy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lcom/ea/nimble/pushnotificationgoogle/PushNotificationImpl$5;->val$regId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ea/nimble/pushnotificationgoogle/PushNotification;->registerTokenWithSynergy(Landroid/content/Context;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
