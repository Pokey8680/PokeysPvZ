.class public Lorg/restlet/engine/io/NbChannelOutputStream;
.super Ljava/io/OutputStream;
.source "NbChannelOutputStream.java"


# instance fields
.field private final bb:Ljava/nio/ByteBuffer;

.field private final channel:Ljava/nio/channels/WritableByteChannel;

.field private final selectableChannel:Ljava/nio/channels/SelectableChannel;

.field private volatile selectionKey:Ljava/nio/channels/SelectionKey;

.field private volatile selector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    sget v0, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    .line 75
    instance-of v0, p1, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    iput-object v0, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    .line 81
    :goto_0
    iput-object p1, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    .line 82
    iput-object v1, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    .line 83
    return-void

    .line 78
    :cond_0
    iput-object v1, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    goto :goto_0
.end method

.method private doWrite()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 91
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "attempts":I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->channel:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 98
    .local v1, "bytesWritten":I
    add-int/lit8 v0, v0, 0x1

    .line 100
    if-gez v1, :cond_1

    .line 101
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Unexpected negative number of bytes written. End of file detected."

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v1    # "bytesWritten":I
    :catch_0
    move-exception v2

    .line 135
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write to the non-blocking channel. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    iget-object v4, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    iget-object v5, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-static {v4, v5}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    throw v3

    .line 103
    .restart local v1    # "bytesWritten":I
    :cond_1
    if-nez v1, :cond_5

    .line 104
    :try_start_2
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    if-eqz v3, :cond_0

    .line 105
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    if-nez v3, :cond_2

    .line 106
    invoke-static {}, Lorg/restlet/engine/io/SelectorFactory;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    .line 109
    :cond_2
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    if-nez v3, :cond_3

    .line 110
    if-le v0, v6, :cond_0

    .line 111
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to obtain a selector. Selector factory returned null."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_3
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectableChannel:Ljava/nio/channels/SelectableChannel;

    iget-object v4, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectionKey:Ljava/nio/channels/SelectionKey;

    .line 120
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    sget v4, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/Selector;->select(J)I

    move-result v3

    if-nez v3, :cond_4

    .line 121
    if-le v0, v6, :cond_0

    .line 122
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to select the channel to write to it. Selection timed out."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 131
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 139
    .end local v1    # "bytesWritten":I
    :cond_6
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 140
    iget-object v3, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selector:Ljava/nio/channels/Selector;

    iget-object v4, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->selectionKey:Ljava/nio/channels/SelectionKey;

    invoke-static {v3, v4}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    .line 146
    return-void

    .line 143
    .end local v0    # "attempts":I
    :cond_7
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to write. Null byte buffer or channel detected."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    iget-object v0, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    invoke-direct {p0}, Lorg/restlet/engine/io/NbChannelOutputStream;->doWrite()V

    .line 166
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 151
    sub-int v2, p3, v0

    sget v3, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    if-le v2, v3, :cond_0

    sget v1, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    .line 153
    .local v1, "size":I
    :goto_1
    iget-object v2, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    iget-object v2, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v2, p0, Lorg/restlet/engine/io/NbChannelOutputStream;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 156
    invoke-direct {p0}, Lorg/restlet/engine/io/NbChannelOutputStream;->doWrite()V

    .line 150
    sget v2, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 151
    .end local v1    # "size":I
    :cond_0
    sub-int v1, p3, v0

    goto :goto_1

    .line 158
    :cond_1
    return-void
.end method
