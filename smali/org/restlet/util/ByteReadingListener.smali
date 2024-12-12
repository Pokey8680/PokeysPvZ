.class public abstract Lorg/restlet/util/ByteReadingListener;
.super Lorg/restlet/util/ReadingListener;
.source "ByteReadingListener.java"


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/restlet/util/ReadingListener;-><init>(Lorg/restlet/representation/Representation;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;I)V
    .locals 0
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/restlet/util/ReadingListener;-><init>(Lorg/restlet/representation/Representation;I)V

    .line 75
    return-void
.end method


# virtual methods
.method protected abstract onContent(Ljava/io/InputStream;)V
.end method

.method protected final onContent(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 84
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p0, v0}, Lorg/restlet/util/ByteReadingListener;->onContent(Ljava/io/InputStream;)V

    .line 86
    return-void
.end method
