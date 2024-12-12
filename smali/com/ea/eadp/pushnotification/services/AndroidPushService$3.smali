.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;->registerDevice(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
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
    .line 191
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 194
    const-string v9, "PushManager"

    const-string v10, "Attempt to register device with EADP push notification service"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v8, 0x0

    .line 199
    .local v8, "responseCode":I
    :try_start_0
    const-string v9, "%s/games/%s/devices"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v12}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v12}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$500(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "resourceString":Ljava/lang/String;
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$600(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/http/services/HttpService;

    move-result-object v9

    invoke-interface {v9, v5}, Lcom/ea/eadp/http/services/HttpService;->getResource(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    move-result-object v4

    .line 201
    .local v4, "request":Lcom/ea/eadp/http/models/HttpRequest;
    const-string v9, "Authorization"

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$700(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lcom/ea/eadp/http/models/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    .line 202
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$800(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->setAppId(Ljava/lang/String;)V

    .line 204
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 205
    .local v2, "gson":Lcom/google/gson/GsonBuilder;
    const-class v9, Ljava/util/TimeZone;

    new-instance v10, Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;

    iget-object v11, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/ea/eadp/pushnotification/services/AndroidPushService$TimeZoneSerializer;-><init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/services/AndroidPushService$1;)V

    invoke-virtual {v2, v9, v10}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 206
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v9

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v9, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/ea/eadp/http/models/HttpRequest;->setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    .line 209
    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpRequest;->post()Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v6

    .line 210
    .local v6, "response":Lcom/ea/eadp/http/models/HttpResponse;
    invoke-interface {v6}, Lcom/ea/eadp/http/models/HttpResponse;->getCode()I

    move-result v8

    .line 211
    invoke-interface {v6}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, "responseBody":Ljava/lang/String;
    const/16 v9, 0xc8

    if-lt v8, v9, :cond_1

    const/16 v9, 0x12c

    if-ge v8, v9, :cond_1

    .line 213
    const-string v9, "PushManager"

    const-string v10, "Registration request successful!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v9, "PushManager"

    const-string v10, "response: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v9, "PushManager"

    const-string v10, "Device registration with server complete. Registered id: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-virtual {v13}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getRegistrationIdentifier()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 229
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    invoke-interface {v9, v8, v7}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onRegistrationSuccess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-static {v9, v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    .line 241
    .end local v2    # "gson":Lcom/google/gson/GsonBuilder;
    .end local v4    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v5    # "resourceString":Ljava/lang/String;
    .end local v6    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    .end local v7    # "responseBody":Ljava/lang/String;
    :goto_0
    return-void

    .line 216
    .restart local v2    # "gson":Lcom/google/gson/GsonBuilder;
    .restart local v4    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .restart local v5    # "resourceString":Ljava/lang/String;
    .restart local v6    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    .restart local v7    # "responseBody":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "Registration request failed! Status: %s, Message: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-interface {v6}, Lcom/ea/eadp/http/models/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "msg":Ljava/lang/String;
    const-string v9, "PushManager"

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v9, "PushManager"

    const-string v10, "response: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 221
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    invoke-interface {v9, v8, v3}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :cond_2
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-static {v9, v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    goto :goto_0

    .line 231
    .end local v2    # "gson":Lcom/google/gson/GsonBuilder;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v5    # "resourceString":Ljava/lang/String;
    .end local v6    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    .end local v7    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "Failed to register device with Exception: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "errMsg":Ljava/lang/String;
    const-string v9, "PushManager"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 236
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v9

    invoke-interface {v9, v8, v1}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :cond_3
    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-static {v9, v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errMsg":Ljava/lang/String;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iget-object v11, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$3;->val$config:Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    invoke-static {v10, v11}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1100(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V

    throw v9
.end method
