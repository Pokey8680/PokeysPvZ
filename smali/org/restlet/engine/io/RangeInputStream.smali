.class public Lorg/restlet/engine/io/RangeInputStream;
.super Ljava/io/FilterInputStream;
.source "RangeInputStream.java"


# instance fields
.field private volatile availableSize:I

.field private final endIndex:J

.field private volatile position:J

.field private volatile range:Lorg/restlet/data/Range;

.field private final startIndex:J

.field private volatile totalSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLorg/restlet/data/Range;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "totalSize"    # J
    .param p4, "range"    # Lorg/restlet/data/Range;

    .prologue
    const-wide/16 v4, 0x1

    const-wide/16 v2, -0x1

    .line 80
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    iput-object p4, p0, Lorg/restlet/engine/io/RangeInputStream;->range:Lorg/restlet/data/Range;

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    .line 83
    iput-wide p2, p0, Lorg/restlet/engine/io/RangeInputStream;->totalSize:J

    .line 84
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    .line 86
    cmp-long v0, p2, v2

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 91
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    .line 124
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t determine the start and end index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 98
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 99
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 102
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 107
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 108
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 109
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    sub-long v0, p2, v0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 112
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 116
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 117
    iput-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0

    .line 119
    :cond_6
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    .line 120
    invoke-virtual {p4}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    return v0
.end method

.method public declared-synchronized mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/io/RangeInputStream;->range:Lorg/restlet/data/Range;

    invoke-virtual {v0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 134
    iget-wide v0, p0, Lorg/restlet/engine/io/RangeInputStream;->totalSize:J

    iget-object v2, p0, Lorg/restlet/engine/io/RangeInputStream;->range:Lorg/restlet/data/Range;

    invoke-virtual {v2}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/restlet/engine/io/RangeInputStream;->range:Lorg/restlet/data/Range;

    invoke-virtual {v0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 142
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 144
    .local v0, "result":I
    :goto_0
    if-eq v0, v6, :cond_0

    iget-object v1, p0, Lorg/restlet/engine/io/RangeInputStream;->range:Lorg/restlet/data/Range;

    iget-wide v2, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->totalSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/restlet/data/Range;->isIncluded(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 148
    :cond_0
    if-eq v0, v6, :cond_1

    iget v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    if-lez v1, :cond_1

    .line 149
    iget v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    .line 152
    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    :goto_0
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    iget-wide v6, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 159
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->startIndex:J

    iget-wide v6, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/restlet/engine/io/RangeInputStream;->skip(J)J

    move-result-wide v2

    .line 161
    .local v2, "skipped":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 162
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Cannot skip ahead in FilterInputStream"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    goto :goto_0

    .line 168
    .end local v2    # "skipped":J
    :cond_1
    const/4 v0, -0x1

    .line 170
    .local v0, "result":I
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 172
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    iget-wide v6, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 174
    const/4 v0, -0x1

    .line 187
    .end local p3    # "len":I
    :goto_1
    if-lez v0, :cond_2

    .line 189
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    .line 192
    :cond_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    if-lez v1, :cond_3

    .line 193
    iget v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/restlet/engine/io/RangeInputStream;->availableSize:I

    .line 196
    :cond_3
    return v0

    .line 178
    .restart local p3    # "len":I
    :cond_4
    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iget-wide v6, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    iget-wide v4, p0, Lorg/restlet/engine/io/RangeInputStream;->endIndex:J

    iget-wide v6, p0, Lorg/restlet/engine/io/RangeInputStream;->position:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-int p3, v4

    .end local p3    # "len":I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    goto :goto_1

    .line 184
    .restart local p3    # "len":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    goto :goto_1
.end method
