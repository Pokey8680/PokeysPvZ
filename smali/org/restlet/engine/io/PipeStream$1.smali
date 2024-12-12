.class Lorg/restlet/engine/io/PipeStream$1;
.super Ljava/io/InputStream;
.source "PipeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/io/PipeStream;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private endReached:Z

.field final synthetic this$0:Lorg/restlet/engine/io/PipeStream;


# direct methods
.method constructor <init>(Lorg/restlet/engine/io/PipeStream;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Lorg/restlet/engine/io/PipeStream$1;->this$0:Lorg/restlet/engine/io/PipeStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/PipeStream$1;->endReached:Z

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 75
    :try_start_0
    iget-boolean v3, p0, Lorg/restlet/engine/io/PipeStream$1;->endReached:Z

    if-eqz v3, :cond_0

    .line 87
    :goto_0
    return v2

    .line 79
    :cond_0
    iget-object v3, p0, Lorg/restlet/engine/io/PipeStream$1;->this$0:Lorg/restlet/engine/io/PipeStream;

    invoke-static {v3}, Lorg/restlet/engine/io/PipeStream;->access$000(Lorg/restlet/engine/io/PipeStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 81
    .local v1, "value":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/restlet/engine/io/PipeStream$1;->endReached:Z

    .line 83
    if-nez v1, :cond_2

    .line 84
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout while reading from the queue-based input stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interruption occurred while writing in the queue"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 87
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method
