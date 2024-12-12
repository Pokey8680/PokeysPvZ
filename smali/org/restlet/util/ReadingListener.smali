.class public abstract Lorg/restlet/util/ReadingListener;
.super Ljava/lang/Object;
.source "ReadingListener.java"

# interfaces
.implements Lorg/restlet/util/SelectionListener;


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final byteChannel:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 1
    .param p1, "byteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/restlet/util/ReadingListener;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "byteChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 70
    iput-object p1, p0, Lorg/restlet/util/ReadingListener;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    sget v0, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {p0, p1, v0}, Lorg/restlet/util/ReadingListener;-><init>(Lorg/restlet/representation/Representation;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;I)V
    .locals 1
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/restlet/util/ReadingListener;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 111
    return-void
.end method


# virtual methods
.method protected abstract onContent(Ljava/nio/ByteBuffer;)V
.end method

.method protected onEnd()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected onError(Ljava/io/IOException;)V
    .locals 3
    .param p1, "ioe"    # Ljava/io/IOException;

    .prologue
    .line 136
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public final onSelected(Lorg/restlet/util/SelectionRegistration;)V
    .locals 5
    .param p1, "selectionRegistration"    # Lorg/restlet/util/SelectionRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    iget-object v3, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    iget-object v2, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    iget-object v2, p0, Lorg/restlet/util/ReadingListener;->byteChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 152
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 153
    iget-object v2, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 154
    iget-object v2, p0, Lorg/restlet/util/ReadingListener;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Lorg/restlet/util/ReadingListener;->onContent(Ljava/nio/ByteBuffer;)V

    .line 161
    :goto_0
    monitor-exit v3

    .line 165
    .end local v1    # "result":I
    :goto_1
    return-void

    .line 155
    .restart local v1    # "result":I
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lorg/restlet/util/ReadingListener;->onEnd()V

    goto :goto_0

    .line 161
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/restlet/util/ReadingListener;->onError(Ljava/io/IOException;)V

    goto :goto_1

    .line 158
    .end local v0    # "ioe":Ljava/io/IOException;
    .restart local v1    # "result":I
    :cond_1
    :try_start_3
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v4, "NIO selection detected with no content available"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
