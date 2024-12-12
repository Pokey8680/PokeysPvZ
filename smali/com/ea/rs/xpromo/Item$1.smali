.class Lcom/ea/rs/xpromo/Item$1;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/rs/xpromo/Item;->downloadIconToBuffer(Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/rs/xpromo/Item;

.field private final synthetic val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

.field private final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/rs/xpromo/Item;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ea/rs/xpromo/Item$1;->this$0:Lcom/ea/rs/xpromo/Item;

    iput-object p2, p0, Lcom/ea/rs/xpromo/Item$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/rs/xpromo/Item$1;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 6
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 142
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v2

    .line 143
    .local v2, "error":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_0

    .line 147
    :try_start_0
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    .line 148
    .local v3, "stream":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 149
    .local v0, "data":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 150
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$1;->this$0:Lcom/ea/rs/xpromo/Item;

    iget-object v4, v4, Lcom/ea/rs/xpromo/Item;->m_iconData:Ljava/util/Map;

    iget-object v5, p0, Lcom/ea/rs/xpromo/Item$1;->val$key:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$1;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v4, v0}, Lcom/ea/rs/xpromo/Item$IconCallback;->onDownloadToBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "data":[B
    .end local v3    # "stream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$1;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v4, v1}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/ea/rs/xpromo/Item$1;->val$callback:Lcom/ea/rs/xpromo/Item$IconCallback;

    invoke-interface {v4, v2}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
