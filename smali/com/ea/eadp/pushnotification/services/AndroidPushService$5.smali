.class Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;
.super Ljava/lang/Object;
.source "AndroidPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/pushnotification/services/AndroidPushService;->getInAppNotifications(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

.field final synthetic val$clientToken:Ljava/lang/String;

.field final synthetic val$userAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/eadp/pushnotification/services/AndroidPushService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->val$userAlias:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->val$clientToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 301
    const/4 v5, 0x0

    .line 303
    .local v5, "responseCode":I
    :try_start_0
    const-string v6, "%s/games/%s/users/%s/inapp"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$400(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v9}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$500(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->val$userAlias:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "resourceString":Ljava/lang/String;
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$600(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/http/services/HttpService;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/ea/eadp/http/services/HttpService;->getResource(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    move-result-object v2

    .line 305
    .local v2, "request":Lcom/ea/eadp/http/models/HttpRequest;
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->val$clientToken:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 306
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->val$clientToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/ea/eadp/http/models/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;

    .line 308
    :cond_0
    invoke-interface {v2}, Lcom/ea/eadp/http/models/HttpRequest;->get()Lcom/ea/eadp/http/models/HttpResponse;

    move-result-object v4

    .line 309
    .local v4, "response":Lcom/ea/eadp/http/models/HttpResponse;
    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getCode()I

    move-result v5

    .line 310
    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    const/16 v6, 0x12c

    if-ge v5, v6, :cond_2

    .line 311
    const-string v6, "PushManager"

    const-string v7, "Get In-App Notification request successful!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v6, "PushManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 315
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onGetInAppSuccess(ILjava/lang/String;)V

    .line 334
    .end local v2    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v3    # "resourceString":Ljava/lang/String;
    .end local v4    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :cond_1
    :goto_0
    return-void

    .line 318
    .restart local v2    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .restart local v3    # "resourceString":Ljava/lang/String;
    .restart local v4    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :cond_2
    const-string v6, "Get In-App Notification request failed! Status: %s, Message: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "msg":Ljava/lang/String;
    const-string v6, "PushManager"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v6, "PushManager"

    const-string v7, "response: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v4}, Lcom/ea/eadp/http/models/HttpResponse;->getBody()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 323
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "request":Lcom/ea/eadp/http/models/HttpRequest;
    .end local v3    # "resourceString":Ljava/lang/String;
    .end local v4    # "response":Lcom/ea/eadp/http/models/HttpResponse;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "In-App Notification request failed with Exception: %s"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "msg":Ljava/lang/String;
    const-string v6, "PushManager"

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 331
    iget-object v6, p0, Lcom/ea/eadp/pushnotification/services/AndroidPushService$5;->this$0:Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-static {v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;->access$1000(Lcom/ea/eadp/pushnotification/services/AndroidPushService;)Lcom/ea/eadp/pushnotification/listeners/IPushListener;

    move-result-object v6

    invoke-interface {v6, v5, v1}, Lcom/ea/eadp/pushnotification/listeners/IPushListener;->onConnectionError(ILjava/lang/String;)V

    goto :goto_0
.end method
