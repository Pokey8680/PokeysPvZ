.class public Lorg/restlet/engine/io/ReadableSizedChannel;
.super Lorg/restlet/engine/io/WrapperChannel;
.source "ReadableSizedChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/io/WrapperChannel",
        "<",
        "Ljava/nio/channels/ReadableByteChannel;",
        ">;",
        "Ljava/nio/channels/ReadableByteChannel;"
    }
.end annotation


# instance fields
.field private volatile availableSize:J

.field private volatile endDetected:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;J)V
    .locals 2
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "availableSize"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/WrapperChannel;-><init>(Ljava/nio/channels/Channel;)V

    .line 67
    iput-wide p2, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->availableSize:J

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->endDetected:Z

    .line 69
    return-void
.end method


# virtual methods
.method protected getAvailableSize()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->availableSize:J

    return-wide v0
.end method

.method protected isEndDetected()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->endDetected:Z

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 111
    :goto_0
    if-lez v0, :cond_4

    .line 112
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/io/ReadableSizedChannel;->setAvailableSize(J)V

    .line 114
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes (read | available) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getAvailableSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    .line 121
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Channel fully read."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 129
    :cond_2
    :goto_1
    return v0

    .line 108
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 125
    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/io/ReadableSizedChannel;->setEndDetected(Z)V

    goto :goto_1
.end method

.method protected setAvailableSize(J)V
    .locals 1
    .param p1, "availableSize"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->availableSize:J

    .line 141
    return-void
.end method

.method protected setEndDetected(Z)V
    .locals 2
    .param p1, "endDetected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->endDetected:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lorg/restlet/engine/io/ReadableSizedChannel;->endDetected:Z

    .line 153
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    instance-of v0, v0, Lorg/restlet/engine/io/CompletionListener;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/CompletionListener;

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedChannel;->isEndDetected()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/restlet/engine/io/CompletionListener;->onMessageCompleted(Z)V

    .line 158
    :cond_0
    return-void
.end method
