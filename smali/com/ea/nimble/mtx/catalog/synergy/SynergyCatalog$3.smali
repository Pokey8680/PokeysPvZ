.class Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;
.super Ljava/lang/Object;
.source "SynergyCatalog.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->loadBinaryDataForItems(Ljava/util/Collection;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

.field final synthetic val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    iput-object p2, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    iput-object p3, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 9
    .param p1, "connection"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    const/4 v8, 0x0

    .line 192
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v3

    .line 194
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x1000

    :try_start_0
    new-array v0, v6, [B

    .line 201
    .local v0, "buffer":[B
    :goto_0
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v3, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 203
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v2

    .line 210
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "Error reading binary data"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 214
    .local v1, "data":[B
    iget-object v6, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$item:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v6

    const-string v7, "binaryData"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v6, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-static {v6}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$106(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I

    .line 217
    iget-object v6, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->this$0:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-static {v6}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->access$100(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;)I

    move-result v6

    if-nez v6, :cond_0

    .line 219
    iget-object v6, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$3;->val$callback:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$CompletionCallback;->callback(Ljava/lang/Exception;)V

    .line 221
    :cond_0
    return-void

    .line 206
    .end local v1    # "data":[B
    .restart local v0    # "buffer":[B
    .restart local v5    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
