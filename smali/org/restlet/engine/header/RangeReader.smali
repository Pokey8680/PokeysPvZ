.class public Lorg/restlet/engine/header/RangeReader;
.super Ljava/lang/Object;
.source "RangeReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static read(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "rangeHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Range;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Range;>;"
    const-string v6, "bytes="

    .line 93
    .local v6, "prefix":Ljava/lang/String;
    if-eqz p0, :cond_3

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 96
    const-string v10, ","

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v0

    if-ge v1, v10, :cond_3

    .line 98
    aget-object v10, v0, v1

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 99
    .local v9, "value":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 100
    .local v2, "index":J
    const-wide/16 v4, 0x0

    .line 101
    .local v4, "length":J
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 102
    const-wide/16 v2, -0x1

    .line 103
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 115
    :cond_0
    :goto_1
    new-instance v10, Lorg/restlet/data/Range;

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/restlet/data/Range;-><init>(JJ)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 105
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 107
    const-wide/16 v4, -0x1

    goto :goto_1

    .line 109
    :cond_2
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "tab":[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 111
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 112
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v10, v2

    const-wide/16 v12, 0x1

    add-long v4, v10, v12

    goto :goto_1

    .line 119
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":J
    .end local v4    # "length":J
    .end local v8    # "tab":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_3
    return-object v7
.end method

.method public static update(Ljava/lang/String;Lorg/restlet/representation/Representation;)V
    .locals 14
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 58
    const-string v4, "bytes "

    .line 59
    .local v4, "prefix":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 62
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, "index":I
    const-string v8, "/"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 65
    .local v3, "index1":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_0

    .line 66
    if-nez v2, :cond_2

    const-wide/16 v6, -0x1

    .line 68
    .local v6, "startIndex":J
    :goto_0
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 71
    .local v0, "endIndex":J
    new-instance v8, Lorg/restlet/data/Range;

    sub-long v10, v0, v6

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-direct {v8, v6, v7, v10, v11}, Lorg/restlet/data/Range;-><init>(JJ)V

    invoke-virtual {p1, v8}, Lorg/restlet/representation/Representation;->setRange(Lorg/restlet/data/Range;)V

    .line 75
    .end local v0    # "endIndex":J
    .end local v6    # "startIndex":J
    :cond_0
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "strLength":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 77
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Lorg/restlet/representation/Representation;->setSize(J)V

    .line 80
    .end local v2    # "index":I
    .end local v3    # "index1":I
    .end local v5    # "strLength":Ljava/lang/String;
    :cond_1
    return-void

    .line 66
    .restart local v2    # "index":I
    .restart local v3    # "index1":I
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0
.end method
