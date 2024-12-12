.class Lcom/ea/eadp/http/models/OpenHttpRequest$10;
.super Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;
.source "OpenHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/eadp/http/models/OpenHttpRequest;->send(Ljava/io/Reader;)Lcom/ea/eadp/http/models/OpenHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation",
        "<",
        "Lcom/ea/eadp/http/models/OpenHttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

.field final synthetic val$input:Ljava/io/Reader;

.field final synthetic val$writer:Ljava/io/Writer;


# direct methods
.method constructor <init>(Lcom/ea/eadp/http/models/OpenHttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/Flushable;

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iput-object p3, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->val$input:Ljava/io/Reader;

    iput-object p4, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lcom/ea/eadp/http/models/OpenHttpRequest$FlushOperation;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method protected run()Lcom/ea/eadp/http/models/OpenHttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2996
    iget-object v0, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->this$0:Lcom/ea/eadp/http/models/OpenHttpRequest;

    iget-object v1, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->val$input:Ljava/io/Reader;

    iget-object v2, p0, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->val$writer:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lcom/ea/eadp/http/models/OpenHttpRequest;->copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/eadp/http/models/OpenHttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2992
    invoke-virtual {p0}, Lcom/ea/eadp/http/models/OpenHttpRequest$10;->run()Lcom/ea/eadp/http/models/OpenHttpRequest;

    move-result-object v0

    return-object v0
.end method
