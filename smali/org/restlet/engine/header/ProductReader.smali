.class public Lorg/restlet/engine/header/ProductReader;
.super Ljava/lang/Object;
.source "ProductReader.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static read(Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p0, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Product;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Product;>;"
    if-eqz p0, :cond_d

    .line 62
    const/4 v9, 0x0

    .line 63
    .local v9, "token":Ljava/lang/String;
    const/4 v11, 0x0

    .line 64
    .local v11, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, "comment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 66
    .local v8, "tab":[C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v10, "tokenBuilder":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 68
    .local v12, "versionBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 69
    .local v2, "commentBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 70
    .local v3, "index":I
    const/4 v5, 0x1

    .line 71
    .local v5, "insideToken":Z
    const/4 v6, 0x0

    .line 72
    .local v6, "insideVersion":Z
    const/4 v4, 0x0

    .line 74
    .local v4, "insideComment":Z
    const/4 v3, 0x0

    :goto_0
    array-length v13, v8

    if-ge v3, v13, :cond_c

    .line 75
    aget-char v0, v8, v3

    .line 76
    .local v0, "c":C
    if-eqz v5, :cond_6

    .line 77
    const/16 v13, 0x61

    if-lt v0, v13, :cond_0

    const/16 v13, 0x7a

    if-le v0, v13, :cond_2

    :cond_0
    const/16 v13, 0x41

    if-lt v0, v13, :cond_1

    const/16 v13, 0x5a

    if-le v0, v13, :cond_2

    :cond_1
    const/16 v13, 0x20

    if-ne v0, v13, :cond_4

    .line 79
    :cond_2
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 82
    const/4 v5, 0x0

    .line 83
    const/16 v13, 0x2f

    if-ne v0, v13, :cond_5

    .line 84
    const/4 v6, 0x1

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12    # "versionBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v12    # "versionBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 86
    :cond_5
    const/16 v13, 0x28

    if-ne v0, v13, :cond_3

    .line 87
    const/4 v4, 0x1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 92
    :cond_6
    if-eqz v6, :cond_8

    .line 93
    const/16 v13, 0x20

    if-eq v0, v13, :cond_7

    .line 94
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 96
    :cond_7
    const/4 v6, 0x0

    .line 97
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 100
    :cond_8
    const/16 v13, 0x28

    if-ne v0, v13, :cond_9

    .line 101
    const/4 v4, 0x1

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 104
    :cond_9
    if-eqz v4, :cond_b

    .line 105
    const/16 v13, 0x29

    if-ne v0, v13, :cond_a

    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v13, Lorg/restlet/data/Product;

    invoke-direct {v13, v9, v11, v1}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v5, 0x1

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 113
    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 116
    :cond_b
    new-instance v13, Lorg/restlet/data/Product;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v11, v14}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v5, 0x1

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .restart local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    .end local v0    # "c":C
    :cond_c
    if-eqz v4, :cond_e

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v13, Lorg/restlet/data/Product;

    invoke-direct {v13, v9, v11, v1}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v1    # "comment":Ljava/lang/String;
    .end local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "index":I
    .end local v4    # "insideComment":Z
    .end local v5    # "insideToken":Z
    .end local v6    # "insideVersion":Z
    .end local v8    # "tab":[C
    .end local v9    # "token":Ljava/lang/String;
    .end local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "version":Ljava/lang/String;
    .end local v12    # "versionBuilder":Ljava/lang/StringBuilder;
    :cond_d
    :goto_2
    return-object v7

    .line 130
    .restart local v1    # "comment":Ljava/lang/String;
    .restart local v2    # "commentBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "index":I
    .restart local v4    # "insideComment":Z
    .restart local v5    # "insideToken":Z
    .restart local v6    # "insideVersion":Z
    .restart local v8    # "tab":[C
    .restart local v9    # "token":Ljava/lang/String;
    .restart local v10    # "tokenBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "version":Ljava/lang/String;
    .restart local v12    # "versionBuilder":Ljava/lang/StringBuilder;
    :cond_e
    if-eqz v6, :cond_f

    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 132
    new-instance v13, Lorg/restlet/data/Product;

    const/4 v14, 0x0

    invoke-direct {v13, v9, v11, v14}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_f
    if-eqz v5, :cond_d

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_d

    .line 135
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 136
    new-instance v13, Lorg/restlet/data/Product;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v9, v14, v15}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
