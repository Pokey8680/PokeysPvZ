.class public Lorg/restlet/engine/io/PipeStream;
.super Ljava/lang/Object;
.source "PipeStream.java"


# static fields
.field private static final QUEUE_TIMEOUT:J = 0x5L


# instance fields
.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/engine/io/PipeStream;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/restlet/engine/io/PipeStream;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/restlet/engine/io/PipeStream;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/restlet/engine/io/PipeStream;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lorg/restlet/engine/io/PipeStream$1;

    invoke-direct {v0, p0}, Lorg/restlet/engine/io/PipeStream$1;-><init>(Lorg/restlet/engine/io/PipeStream;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/restlet/engine/io/PipeStream$2;

    invoke-direct {v0, p0}, Lorg/restlet/engine/io/PipeStream$2;-><init>(Lorg/restlet/engine/io/PipeStream;)V

    return-object v0
.end method
