.class public Lorg/restlet/engine/io/NioUtils;
.super Ljava/lang/Object;
.source "NioUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    return-void
.end method

.method public static copy(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)I
    .locals 6
    .param p0, "sourceBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "targetBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "maxCopied"    # J

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 80
    .local v1, "maxBuffer":I
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-nez v3, :cond_0

    move v2, v1

    .line 84
    .local v2, "result":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    .end local v2    # "result":I
    :cond_0
    long-to-int v3, p2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 88
    .restart local v0    # "i":I
    .restart local v2    # "result":I
    :cond_1
    return v2
.end method

.method public static copy(Ljava/nio/channels/FileChannel;Ljava/nio/channels/WritableByteChannel;)V
    .locals 10
    .param p0, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "position":J
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 104
    .local v4, "count":J
    const-wide/16 v8, 0x0

    .line 105
    .local v8, "written":J
    const/4 v0, 0x0

    .line 107
    .local v0, "selectableChannel":Ljava/nio/channels/SelectableChannel;
    instance-of v1, p1, Ljava/nio/channels/SelectableChannel;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 111
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 112
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/restlet/engine/io/NioUtils;->waitForState(Ljava/nio/channels/SelectableChannel;I)V

    move-object v1, p0

    move-object v6, p1

    .line 113
    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v8

    .line 114
    add-long/2addr v2, v8

    .line 115
    sub-long/2addr v4, v8

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "readableChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Lorg/restlet/engine/io/NbChannelInputStream;

    invoke-direct {v0, p0}, Lorg/restlet/engine/io/NbChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static copy(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/WritableByteChannel;)V
    .locals 2
    .param p0, "readableChannel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Lorg/restlet/engine/io/NbChannelInputStream;

    invoke-direct {v0, p0}, Lorg/restlet/engine/io/NbChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    new-instance v1, Lorg/restlet/engine/io/NbChannelOutputStream;

    invoke-direct {v1, p1}, Lorg/restlet/engine/io/NbChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static getChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "result":Ljava/nio/channels/ReadableByteChannel;
    instance-of v1, p0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_1

    .line 166
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "inputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 167
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    if-eqz p0, :cond_0

    .line 168
    new-instance v0, Lorg/restlet/engine/io/InputStreamChannel;

    .end local v0    # "result":Ljava/nio/channels/ReadableByteChannel;
    invoke-direct {v0, p0}, Lorg/restlet/engine/io/InputStreamChannel;-><init>(Ljava/io/InputStream;)V

    .restart local v0    # "result":Ljava/nio/channels/ReadableByteChannel;
    goto :goto_0
.end method

.method public static getChannel(Lorg/restlet/representation/Representation;)Ljava/nio/channels/ReadableByteChannel;
    .locals 7
    .param p0, "representation"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 200
    .local v2, "result":Ljava/nio/channels/ReadableByteChannel;
    sget-object v4, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v5, Lorg/restlet/engine/Edition;->GAE:Lorg/restlet/engine/Edition;

    if-eq v4, v5, :cond_1

    .line 201
    invoke-static {}, Ljava/nio/channels/Pipe;->open()Ljava/nio/channels/Pipe;

    move-result-object v1

    .line 205
    .local v1, "pipe":Ljava/nio/channels/Pipe;
    new-instance v3, Lorg/restlet/engine/io/NioUtils$1;

    invoke-direct {v3, v1, p0}, Lorg/restlet/engine/io/NioUtils$1;-><init>(Ljava/nio/channels/Pipe;Lorg/restlet/representation/Representation;)V

    .line 230
    .local v3, "task":Ljava/lang/Runnable;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 233
    .local v0, "application":Lorg/restlet/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 234
    invoke-virtual {v0}, Lorg/restlet/Application;->getTaskService()Lorg/restlet/service/TaskService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/restlet/service/TaskService;->execute(Ljava/lang/Runnable;)V

    .line 240
    :goto_0
    invoke-virtual {v1}, Ljava/nio/channels/Pipe;->source()Ljava/nio/channels/Pipe$SourceChannel;

    move-result-object v2

    .line 246
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "pipe":Ljava/nio/channels/Pipe;
    .end local v3    # "task":Ljava/lang/Runnable;
    :goto_1
    return-object v2

    .line 236
    .restart local v0    # "application":Lorg/restlet/Application;
    .restart local v1    # "pipe":Ljava/nio/channels/Pipe;
    .restart local v3    # "task":Ljava/lang/Runnable;
    :cond_0
    const-string v4, "Restlet-NioUtils"

    invoke-static {v3, v4}, Lorg/restlet/engine/Engine;->createThreadWithLocalVariables(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 242
    .end local v0    # "application":Lorg/restlet/Application;
    .end local v1    # "pipe":Ljava/nio/channels/Pipe;
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "The GAE edition is unable to return a channel for a representation given its write(WritableByteChannel) method."

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .locals 1
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .locals 1
    .param p0, "readableChannel"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, "result":Ljava/io/InputStream;
    if-eqz p0, :cond_0

    .line 260
    new-instance v0, Lorg/restlet/engine/io/NbChannelInputStream;

    .end local v0    # "result":Ljava/io/InputStream;
    invoke-direct {v0, p0}, Lorg/restlet/engine/io/NbChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 263
    .restart local v0    # "result":Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method public static getStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    .line 275
    invoke-static {p0}, Lorg/restlet/engine/io/NioUtils;->isBlocking(Ljava/nio/channels/Channel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/restlet/engine/io/NbChannelOutputStream;

    invoke-direct {v0, p0}, Lorg/restlet/engine/io/NbChannelOutputStream;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0
.end method

.method public static isBlocking(Ljava/nio/channels/Channel;)Z
    .locals 3
    .param p0, "channel"    # Ljava/nio/channels/Channel;

    .prologue
    .line 289
    const/4 v0, 0x1

    .line 291
    .local v0, "result":Z
    instance-of v2, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 292
    check-cast v1, Ljava/nio/channels/SelectableChannel;

    .line 293
    .local v1, "selectableChannel":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v1}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    .line 296
    .end local v1    # "selectableChannel":Ljava/nio/channels/SelectableChannel;
    :cond_0
    return v0
.end method

.method public static release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    .locals 0
    .param p0, "selector"    # Ljava/nio/channels/Selector;
    .param p1, "selectionKey"    # Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 314
    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 317
    invoke-static {p0}, Lorg/restlet/engine/io/SelectorFactory;->returnSelector(Ljava/nio/channels/Selector;)V

    .line 321
    :cond_0
    return-void
.end method

.method public static waitForState(Ljava/nio/channels/SelectableChannel;I)V
    .locals 6
    .param p0, "selectableChannel"    # Ljava/nio/channels/SelectableChannel;
    .param p1, "operations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    if-eqz p0, :cond_1

    .line 335
    const/4 v2, 0x0

    .line 336
    .local v2, "selector":Ljava/nio/channels/Selector;
    const/4 v1, 0x0

    .line 337
    .local v1, "selectionKey":Ljava/nio/channels/SelectionKey;
    const/4 v0, 0x0

    .line 340
    .local v0, "selected":I
    :try_start_0
    invoke-static {}, Lorg/restlet/engine/io/SelectorFactory;->getSelector()Ljava/nio/channels/Selector;

    move-result-object v2

    .line 342
    :goto_0
    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v1

    .line 345
    sget v3, Lorg/restlet/engine/io/IoUtils;->TIMEOUT_MS:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {v2, v1}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    .line 351
    .end local v0    # "selected":I
    .end local v1    # "selectionKey":Ljava/nio/channels/SelectionKey;
    .end local v2    # "selector":Ljava/nio/channels/Selector;
    :cond_1
    return-void

    .line 348
    .restart local v0    # "selected":I
    .restart local v1    # "selectionKey":Ljava/nio/channels/SelectionKey;
    .restart local v2    # "selector":Ljava/nio/channels/Selector;
    :catchall_0
    move-exception v3

    invoke-static {v2, v1}, Lorg/restlet/engine/io/NioUtils;->release(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V

    throw v3
.end method
