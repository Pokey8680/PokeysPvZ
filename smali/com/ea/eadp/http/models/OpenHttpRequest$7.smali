.class Lcom/ea/eadp/http/models/OpenHttpRequest$7;
.super Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;->receive(Ljava/io/Writer;)Lcom/ea/eadp/http/models/OpenHttpRequest;
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

.field final synthetic val$reader:Ljava/io/BufferedReader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Closeable;
    .param p3, "x1"    # Z

    .prologue
    .line 1993
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iput-object p4, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iput-object p5, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lcom/ea/eadp/http/models/OpenHttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public run()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->val$reader:Ljava/io/BufferedReader;

    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
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
    .line 1993
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$7;->run()Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method
