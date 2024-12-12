.class public Lorg/restlet/engine/io/ReadableSizedSelectionChannel;
.super Lorg/restlet/engine/io/ReadableBufferedChannel;
.source "ReadableSizedSelectionChannel.java"


# instance fields
.field private volatile availableSize:J


# direct methods
.method public constructor <init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;JLorg/restlet/engine/io/WakeupListener;)V
    .locals 0
    .param p1, "completionListener"    # Lorg/restlet/engine/io/CompletionListener;
    .param p2, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p3, "source"    # Lorg/restlet/engine/io/ReadableSelectionChannel;
    .param p4, "availableSize"    # J
    .param p6, "wakeupListener"    # Lorg/restlet/engine/io/WakeupListener;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/restlet/engine/io/ReadableBufferedChannel;-><init>(Lorg/restlet/engine/io/CompletionListener;Lorg/restlet/engine/io/Buffer;Lorg/restlet/engine/io/ReadableSelectionChannel;Lorg/restlet/engine/io/WakeupListener;)V

    .line 72
    iput-wide p4, p0, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->availableSize:J

    .line 73
    return-void
.end method


# virtual methods
.method protected getAvailableSize()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->availableSize:J

    return-wide v0
.end method

.method public varargs onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I
    .locals 8
    .param p1, "buffer"    # Lorg/restlet/engine/io/Buffer;
    .param p2, "maxDrained"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->getAvailableSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 90
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->getAvailableSize()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-super {p0, p1, v1, p3}, Lorg/restlet/engine/io/ReadableBufferedChannel;->onDrain(Lorg/restlet/engine/io/Buffer;I[Ljava/lang/Object;)I

    move-result v0

    .line 95
    :goto_0
    if-lez v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->getAvailableSize()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->setAvailableSize(J)V

    .line 98
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
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

    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->getAvailableSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->getAvailableSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 105
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Channel fully read."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_1
    return v0

    .line 92
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->setEndReached(Z)V

    goto :goto_1
.end method

.method protected setAvailableSize(J)V
    .locals 5
    .param p1, "availableSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iput-wide p1, p0, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->availableSize:J

    .line 125
    iget-wide v0, p0, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->availableSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/restlet/engine/io/ReadableSizedSelectionChannel;->setEndReached(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
