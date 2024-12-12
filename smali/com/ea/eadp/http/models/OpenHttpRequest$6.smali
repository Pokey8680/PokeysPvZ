.class Lcom/ea/eadp/http/models/OpenHttpRequest$6;
.super Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;->receive(Ljava/lang/Appendable;)Lcom/ea/eadp/http/models/OpenHttpRequest;
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

.field final synthetic val$appendable:Ljava/lang/Appendable;

.field final synthetic val$reader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Closeable;
    .param p3, "x1"    # Z

    .prologue
    .line 1968
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iput-object p4, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    invoke-direct {p0, p2, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1972
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    invoke-static {v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->access$100(Lcom/ea/eadp/http/models/OpenHttpRequest;)I

    move-result v2

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1974
    .local v0, "buffer":Ljava/nio/CharBuffer;
    :goto_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1975
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 1976
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->val$appendable:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1977
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 1979
    :cond_0
    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

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
    .line 1968
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$6;->run()Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method
