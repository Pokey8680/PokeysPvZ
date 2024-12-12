.class Lcom/ea/eadp/http/models/OpenHttpRequest$8;
.super Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/ea/eadp/http/models/OpenHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation",
        "<",
        "Lcom/ea/eadp/http/models/OpenHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

.field final synthetic val$input:Ljava/io/InputStream;

.field final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Closeable;
    .param p3, "x1"    # Z

    .prologue
    .line 2579
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iput-object p4, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->val$input:Ljava/io/InputStream;

    iput-object p5, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2583
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-static {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$100(Lcom/ea/eadp/http/models/OpenHttpRequest;)I

    move-result v2

    new-array v0, v2, [B

    .line 2585
    .local v0, "buffer":[B
    :goto_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->val$input:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2586
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->val$output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 2587
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$214(Lcom/ea/eadp/http/models/OpenHttpRequest;J)J

    .line 2588
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-static {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$400(Lcom/ea/eadp/http/models/OpenHttpRequest;)Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-static {v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$200(Lcom/ea/eadp/http/models/OpenHttpRequest;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-static {v3}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$300(Lcom/ea/eadp/http/models/OpenHttpRequest;)J

    move-result-wide v6

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/ea/eadp/http/models/OpenHttpRequest$UploadProgress;->onUpload(JJ)V

    goto :goto_0

    .line 2590
    :cond_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2579
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$8;->run()Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method
