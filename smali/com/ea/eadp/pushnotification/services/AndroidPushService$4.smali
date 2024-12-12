.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;->sendTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

.field final synthetic val$pnType:Ljava/lang/String;

.field final synthetic val$pushId:Ljava/lang/String;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$pushId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$pnType:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 249
    const/4 v6, 0x0

    .line 251
    .local v6, "responseCode":I
    :try_start_0
    const-string v7, "%s/games/%s/events"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v10}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$500(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "resourceString":Ljava/lang/String;
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$600(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/http/services/HttpService;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/ea/eadp/http/services/HttpService;->getResource(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    move-result-object v3

    .line 254
    .local v3, "request":Lcom/ea/eadp/http/models/HttpRequest;
    new-instance v1, Lcom/ea/eadp/pushnotification/services/TrackingEvent;

    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$pushId:Ljava/lang/String;

    iget-object v8, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$pnType:Ljava/lang/String;

    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->val$state:Ljava/lang/String;

    iget-object v10, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    const-string v11, "deviceId"

    invoke-static {v10, v11}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1200(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/ea/eadp/pushnotification/services/TrackingEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v1, "event":Lcom/ea/eadp/pushnotification/services/TrackingEvent;
    const-string v7, "Authorization"

    iget-object v8, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v8}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$700(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/ea/eadp/http/models/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    .line 256
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/ea/eadp/http/models/HttpRequest;->setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    .line 259
    invoke-interface {v3}, Lcom/ea/eadp/http/models/HttpRequest;->post()Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v5

    .line 260
    .local v5, "response":Lcom/ea/eadp/http/models/HttpResponse;
    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getCode()I

    move-result v6

    .line 261
    const/16 v7, 0xc8

    if-lt v6, v7, :cond_1

    const/16 v7, 0x12c

    if-ge v6, v7, :cond_1

    .line 262
    const-string v7, "PushManager"

    const-string v8, "Tracking request successful!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v7, "PushManager"

    const-string v8, "response: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 266
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onTrackingSuccess(ILjava/lang/String;)V

    .line 285
    .end local v1    # "event":Lcom/ea/eadp/pushnotification/services/TrackingEvent;
    .end local v3    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v4    # "resourceString":Ljava/lang/String;
    .end local v5    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v1    # "event":Lcom/ea/eadp/pushnotification/services/TrackingEvent;
    .restart local v3    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .restart local v4    # "resourceString":Ljava/lang/String;
    .restart local v5    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :cond_1
    const-string v7, "Tracking request failed! Status: %s, Message: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "msg":Ljava/lang/String;
    const-string v7, "PushManager"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "PushManager"

    const-string v8, "response: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v5}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 274
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    invoke-interface {v7, v6, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v1    # "event":Lcom/ea/eadp/pushnotification/services/TrackingEvent;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v4    # "resourceString":Ljava/lang/String;
    .end local v5    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "Tracking request failed with Exception: %s"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "msg":Ljava/lang/String;
    const-string v7, "PushManager"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 282
    iget-object v7, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$4;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v7}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v7

    invoke-interface {v7, v6, v2}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    goto :goto_0
.end method
