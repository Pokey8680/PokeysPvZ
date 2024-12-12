.class Lorg/restlet/engine/io/PipeStream$2;
.super Ljava/io/OutputStream;
.source "PipeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/PipeStream;->getOutputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/io/PipeStream;


# direct methods
.method constructor <init>(Lorg/restlet/engine/io/PipeStream;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/restlet/engine/io/PipeStream$2;->this$0:Lorg/restlet/engine/io/PipeStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lorg/restlet/engine/io/PipeStream$2;->this$0:Lorg/restlet/engine/io/PipeStream;

    invoke-static {v1}, Lorg/restlet/engine/io/PipeStream;->access$000(Lorg/restlet/engine/io/PipeStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Timeout while writing to the queue-based output stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interruption occurred while writing in the queue"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/restlet/engine/io/PipeStream$2;->this$0:Lorg/restlet/engine/io/PipeStream;

    invoke-static {v1}, Lorg/restlet/engine/io/PipeStream;->access$000(Lorg/restlet/engine/io/PipeStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Timeout while writing to the queue-based output stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Interruption occurred while writing in the queue"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
