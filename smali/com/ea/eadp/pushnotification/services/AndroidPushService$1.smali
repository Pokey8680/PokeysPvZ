.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;
.super Ljava/util/TimerTask;
.source "AndroidPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;->startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

.field final synthetic val$clientToken:Ljava/lang/String;

.field final synthetic val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;


# direct methods
.method constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    iput-object p3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->val$clientToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v1}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;->val$clientToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->getInAppNotifications(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method
