.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;


# direct methods
.method constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 142
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    const-string v6, "PushManager"

    const-string v7, "Attempt to register device with GCM"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$200(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "regId":Ljava/lang/String;
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v6, v5}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setRegistrationIdentifier(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabled(Z)V

    .line 149
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabledReason(Ljava/lang/String;)V

    .line 150
    const-string v6, "PushManager"

    const-string v7, "Device registered on GCM. Registration id: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .local v0, "androidApiLevel":I
    const/16 v6, 0xe

    if-lt v0, v6, :cond_0

    .line 155
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$300(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 156
    .local v1, "application":Landroid/app/Application;
    new-instance v6, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;

    invoke-direct {v6}, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;-><init>()V

    invoke-virtual {v1, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .end local v0    # "androidApiLevel":I
    .end local v1    # "application":Landroid/app/Application;
    .end local v5    # "regId":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v6, v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->registerDevice(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    .line 173
    return-void

    .line 158
    .restart local v5    # "regId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 159
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "PushManager"

    const-string v7, "Failed to register activity lifecycle callbacks: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 161
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "regId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Failed to get registration ID from GCM: %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "errMsg":Ljava/lang/String;
    const-string v6, "PushManager"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v6, v11}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabled(Z)V

    .line 165
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    const-string v7, "client_register_failure"

    invoke-virtual {v6, v7}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabledReason(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "errMsg":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v6, v11}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabled(Z)V

    .line 170
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$2;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    const-string v7, "client_register_failure"

    invoke-virtual {v6, v7}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setDisabledReason(Ljava/lang/String;)V

    goto :goto_0
.end method
