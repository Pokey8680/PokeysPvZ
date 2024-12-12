.class public Lorg/restlet/data/Range;
.super Ljava/lang/Object;
.source "Range.java"


# static fields
.field public static final INDEX_FIRST:J = 0x0L

.field public static final INDEX_LAST:J = -0x1L

.field public static final SIZE_MAX:J = -0x1L


# instance fields
.field private volatile index:J

.field private volatile size:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/restlet/data/Range;-><init>(JJ)V

    .line 78
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/restlet/data/Range;-><init>(JJ)V

    .line 89
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "index"    # J
    .param p3, "size"    # J

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Lorg/restlet/data/Range;->index:J

    .line 101
    iput-wide p3, p0, Lorg/restlet/data/Range;->size:J

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    instance-of v0, p1, Lorg/restlet/data/Range;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/restlet/data/Range;

    invoke-virtual {v0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    check-cast p1, Lorg/restlet/data/Range;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lorg/restlet/data/Range;->index:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/restlet/data/Range;->size:J

    return-wide v0
.end method

.method public isIncluded(JJ)Z
    .locals 9
    .param p1, "position"    # J
    .param p3, "totalSize"    # J

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 150
    const-wide/16 v4, 0x0

    cmp-long v3, v4, p1

    if-gtz v3, :cond_1

    cmp-long v3, p1, p3

    if-gez v3, :cond_1

    move v0, v1

    .line 152
    :goto_0
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v4

    sub-long v4, p3, v4

    cmp-long v3, p1, v4

    if-ltz v3, :cond_2

    move v0, v1

    .line 164
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_0

    :cond_2
    move v0, v2

    .line 153
    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-ltz v3, :cond_4

    move v0, v1

    .line 159
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-gez v3, :cond_5

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_4
    move v0, v2

    .line 157
    goto :goto_2

    :cond_5
    move v0, v2

    .line 160
    goto :goto_3
.end method

.method public setIndex(J)V
    .locals 1
    .param p1, "index"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lorg/restlet/data/Range;->index:J

    .line 178
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 188
    iput-wide p1, p0, Lorg/restlet/data/Range;->size:J

    .line 189
    return-void
.end method
