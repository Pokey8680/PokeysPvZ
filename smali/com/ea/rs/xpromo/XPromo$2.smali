.class Lcom/ea/rs/xpromo/XPromo$2;
.super Ljava/lang/Object;
.source "XPromo.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


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
    iput-object p1, p0, Lcom/ea/rs/xpromo/XPromo$2;->this$0:Lcom/ea/rs/xpromo/XPromo;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 207
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v1

    .line 210
    .local v1, "response":Lcom/ea/nimble/IHttpResponse;
    :try_start_0
    iget-object v2, p0, Lcom/ea/rs/xpromo/XPromo$2;->this$0:Lcom/ea/rs/xpromo/XPromo;

    new-instance v3, Lcom/ea/rs/xpromo/Container;

    invoke-interface {v1}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ea/rs/xpromo/Container;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lcom/ea/rs/xpromo/XPromo;->access$3(Lcom/ea/rs/xpromo/XPromo;Lcom/ea/rs/xpromo/Container;)V

    .line 211
    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    iget-object v3, p0, Lcom/ea/rs/xpromo/XPromo$2;->this$0:Lcom/ea/rs/xpromo/XPromo;

    invoke-static {v3}, Lcom/ea/rs/xpromo/XPromo;->access$4(Lcom/ea/rs/xpromo/XPromo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/rs/xpromo/XPromo$2;->this$0:Lcom/ea/rs/xpromo/XPromo;

    invoke-static {v4}, Lcom/ea/rs/xpromo/XPromo;->access$5(Lcom/ea/rs/xpromo/XPromo;)Lcom/ea/rs/xpromo/Container;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ea/rs/xpromo/XPromoUtility;->saveToPersistence(Lcom/ea/nimble/Persistence$Storage;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 212
    const-string v2, "Items updated."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    const-string v2, "com.ea.notification.xpromo.items.refreshed"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v1    # "response":Lcom/ea/nimble/IHttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 215
    .restart local v1    # "response":Lcom/ea/nimble/IHttpResponse;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v3, "Server"

    const-string v4, "Error parsing json data."

    invoke-static {v2, v3, v4}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "Error parsing json data."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
