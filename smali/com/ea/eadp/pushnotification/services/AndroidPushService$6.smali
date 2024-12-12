.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;
.super Ljava/util/TimerTask;
.source "AndroidPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;->onRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;


# direct methods
.method constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v1}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1300(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$6;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v2}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->getInAppNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method
