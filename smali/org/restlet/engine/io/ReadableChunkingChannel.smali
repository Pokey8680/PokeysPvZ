.class public Lorg/restlet/engine/io/ReadableChunkingChannel;
.super Lorg/restlet/engine/io/WrapperChannel;
.source "ReadableChunkingChannel.java"

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
.field private final chunkSizeLength:I

.field private lastChunkWritten:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .locals 1
    .param p1, "source"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "maxBufferSize"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/restlet/engine/io/WrapperChannel;-><init>(Ljava/nio/channels/Channel;)V

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->chunkSizeLength:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->lastChunkWritten:Z

    .line 72
    return-void
.end method

.method private fillChunkSizeString(ILjava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "chunkDataSize"    # I
    .param p2, "targetBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "result":I
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "chunkDataSizeString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->chunkSizeLength:I

    if-ge v1, v3, :cond_0

    .line 91
    const/16 v3, 0x30

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 96
    const/16 v3, 0xd

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 98
    add-int/lit8 v2, v2, 0x2

    .line 99
    return v2
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "result":I
    const/4 v4, 0x1

    .line 115
    .local v4, "tryAgain":Z
    :goto_0
    if-eqz v4, :cond_7

    .line 116
    iget-boolean v5, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->lastChunkWritten:Z

    if-eqz v5, :cond_0

    .line 117
    const/4 v3, -0x1

    .line 118
    const/4 v4, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 121
    .local v1, "chunkStart":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget v6, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->chunkSizeLength:I

    sub-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x4

    .line 123
    .local v2, "maxChunkDataSize":I
    const/4 v0, 0x0

    .line 125
    .local v0, "chunkDataSize":I
    if-lez v2, :cond_6

    .line 127
    iget v5, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->chunkSizeLength:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Position in destination buffer before chunking | Limit | MaxChunkDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 137
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/io/ReadableChunkingChannel;->getWrappedChannel()Ljava/nio/channels/Channel;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v5, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 140
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 141
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/io/ReadableChunkingChannel;->lastChunkWritten:Z

    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    const/4 v5, 0x0

    invoke-direct {p0, v5, p1}, Lorg/restlet/engine/io/ReadableChunkingChannel;->fillChunkSizeString(ILjava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v3, v5

    .line 149
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 151
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 152
    :cond_2
    if-lez v0, :cond_5

    .line 153
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    invoke-direct {p0, v0, p1}, Lorg/restlet/engine/io/ReadableChunkingChannel;->fillChunkSizeString(ILjava/nio/ByteBuffer;)I

    .line 161
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old chunking position in destination buffer | Limit | MaxChunkDataSize | ChunkDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New chunking position in destination buffer | Limit | MaxChunkDataSize | ChunkDataSize : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 187
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    goto/16 :goto_0

    .line 190
    :cond_5
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 195
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 200
    .end local v0    # "chunkDataSize":I
    .end local v1    # "chunkStart":I
    .end local v2    # "maxChunkDataSize":I
    :cond_7
    return v3
.end method
