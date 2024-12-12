.class public Lorg/restlet/engine/header/RangeWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "RangeWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Range;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    new-instance v0, Lorg/restlet/engine/header/RangeWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/RangeWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/RangeWriter;->append(Ljava/util/List;)Lorg/restlet/engine/header/RangeWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/RangeWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/restlet/data/Range;J)Ljava/lang/String;
    .locals 11
    .param p0, "range"    # Lorg/restlet/data/Range;
    .param p1, "size"    # J

    .prologue
    const-wide/16 v8, 0x1

    const-wide/16 v6, -0x1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    .line 72
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    :goto_0
    cmp-long v1, p1, v6

    if-eqz v1, :cond_7

    .line 110
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 77
    :cond_1
    cmp-long v1, p1, v6

    if-eqz v1, :cond_2

    .line 78
    sub-long v2, p1, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The entity has an unknown size, can\'t determine the last byte position."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_6

    .line 86
    cmp-long v1, p1, v6

    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gtz v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sub-long v2, p1, v8

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of the range ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is higher than the size of the entity ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The entity has an unknown size, can\'t determine the last byte position."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The range provides no index and no size, it is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_7
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/restlet/data/Range;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/RangeWriter;->append(Lorg/restlet/data/Range;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Range;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 6
    .param p1, "range"    # Lorg/restlet/data/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Range;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/Range;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 145
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(J)Lorg/restlet/engine/header/HeaderWriter;

    .line 147
    const-string v0, "-"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RangeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 149
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(J)Lorg/restlet/engine/header/HeaderWriter;

    .line 160
    :cond_0
    :goto_0
    return-object p0

    .line 152
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 153
    const-string v0, "-"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/RangeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 155
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p1}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(J)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method

.method public append(Ljava/util/List;)Lorg/restlet/engine/header/RangeWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;)",
            "Lorg/restlet/engine/header/RangeWriter;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    return-object p0

    .line 130
    :cond_1
    const-string v1, "bytes="

    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 133
    if-lez v0, :cond_2

    .line 134
    const-string v1, ", "

    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 137
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Range;

    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/RangeWriter;->append(Lorg/restlet/data/Range;)Lorg/restlet/engine/header/HeaderWriter;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
