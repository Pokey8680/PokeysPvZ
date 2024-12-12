.class public Lorg/restlet/engine/header/ContentTypeReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "ContentTypeReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/engine/header/ContentType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private createContentType(Ljava/lang/StringBuilder;Lorg/restlet/util/Series;)Lorg/restlet/engine/header/ContentType;
    .locals 5
    .param p1, "mediaType"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)",
            "Lorg/restlet/engine/header/ContentType;"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v1, 0x0

    .line 74
    .local v1, "characterSet":Lorg/restlet/data/CharacterSet;
    if-eqz p2, :cond_1

    .line 75
    const-string v2, "charset"

    invoke-virtual {p2, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    const-string v2, "charset"

    invoke-virtual {p2, v2}, Lorg/restlet/util/Series;->removeAll(Ljava/lang/String;)Z

    .line 79
    new-instance v1, Lorg/restlet/data/CharacterSet;

    .end local v1    # "characterSet":Lorg/restlet/data/CharacterSet;
    invoke-direct {v1, v0}, Lorg/restlet/data/CharacterSet;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v1    # "characterSet":Lorg/restlet/data/CharacterSet;
    :cond_0
    new-instance v2, Lorg/restlet/engine/header/ContentType;

    new-instance v3, Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lorg/restlet/data/MediaType;-><init>(Ljava/lang/String;Lorg/restlet/util/Series;)V

    invoke-direct {v2, v3, v1}, Lorg/restlet/engine/header/ContentType;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)V

    .line 86
    .end local v0    # "charSet":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/restlet/engine/header/ContentType;

    new-instance v3, Lorg/restlet/data/MediaType;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/MediaType;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/restlet/engine/header/ContentType;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/restlet/engine/header/ContentTypeReader;->readValue()Lorg/restlet/engine/header/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/engine/header/ContentType;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v14, 0x0

    .line 93
    .local v14, "result":Lorg/restlet/engine/header/ContentType;
    const/4 v11, 0x1

    .line 94
    .local v11, "readingMediaType":Z
    const/4 v12, 0x0

    .line 95
    .local v12, "readingParamName":Z
    const/4 v13, 0x0

    .line 97
    .local v13, "readingParamValue":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v2, "mediaTypeBuffer":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 99
    .local v7, "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 101
    .local v8, "paramValueBuffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 102
    .local v9, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/header/ContentTypeReader;->readRawValue()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "nextValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 105
    .local v4, "nextIndex":I
    if-eqz v6, :cond_1c

    .line 106
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "nextIndex":I
    .local v5, "nextIndex":I
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "nextChar":I
    move v4, v5

    .line 108
    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    :goto_0
    if-nez v14, :cond_1c

    .line 109
    if-eqz v11, :cond_5

    .line 110
    const/4 v15, -0x1

    if-ne v3, v15, :cond_1

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_0

    .line 114
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lorg/restlet/engine/header/ContentTypeReader;->createContentType(Ljava/lang/StringBuilder;Lorg/restlet/util/Series;)Lorg/restlet/engine/header/ContentType;

    move-result-object v14

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .restart local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v4, v15, :cond_1b

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "nextChar":I
    move v4, v5

    .end local v5    # "nextIndex":I
    .restart local v3    # "nextChar":I
    .restart local v4    # "nextIndex":I
    :goto_2
    goto :goto_0

    .line 119
    :cond_1
    const/16 v15, 0x3b

    if-ne v3, v15, :cond_3

    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 123
    const/4 v11, 0x0

    .line 124
    const/4 v12, 0x1

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .restart local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    new-instance v9, Lorg/restlet/util/Series;

    .end local v9    # "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const-class v15, Lorg/restlet/data/Parameter;

    invoke-direct {v9, v15}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .restart local v9    # "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    goto :goto_1

    .line 128
    :cond_2
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Empty mediaType name detected."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 131
    :cond_3
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 133
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 134
    int-to-char v15, v3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 136
    :cond_4
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-char v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " character isn\'t allowed in a media type name."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 141
    :cond_5
    if-eqz v12, :cond_e

    .line 142
    const/16 v15, 0x3d

    if-ne v3, v15, :cond_7

    .line 143
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_6

    .line 145
    const/4 v12, 0x0

    .line 146
    const/4 v13, 0x1

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8    # "paramValueBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v8    # "paramValueBuffer":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 149
    :cond_6
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Empty parameter name detected."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 152
    :cond_7
    const/4 v15, -0x1

    if-ne v3, v15, :cond_a

    .line 153
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 155
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lorg/restlet/engine/header/ContentTypeReader;->createContentType(Ljava/lang/StringBuilder;Lorg/restlet/util/Series;)Lorg/restlet/engine/header/ContentType;

    move-result-object v14

    goto/16 :goto_1

    .line 159
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_9

    .line 160
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lorg/restlet/engine/header/ContentTypeReader;->createContentType(Ljava/lang/StringBuilder;Lorg/restlet/util/Series;)Lorg/restlet/engine/header/ContentType;

    move-result-object v14

    goto/16 :goto_1

    .line 163
    :cond_9
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Empty parameter name detected."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 166
    :cond_a
    const/16 v15, 0x3b

    if-ne v3, v15, :cond_b

    .line 168
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .restart local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 171
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 172
    :cond_b
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-eqz v15, :cond_0

    .line 175
    :cond_c
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 176
    int-to-char v15, v3

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 178
    :cond_d
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-char v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" character isn\'t allowed in a media type parameter name."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 183
    :cond_e
    if-eqz v13, :cond_0

    .line 184
    const/4 v15, -0x1

    if-ne v3, v15, :cond_10

    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_f

    .line 187
    invoke-static {v7, v8}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 189
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9}, Lorg/restlet/engine/header/ContentTypeReader;->createContentType(Ljava/lang/StringBuilder;Lorg/restlet/util/Series;)Lorg/restlet/engine/header/ContentType;

    move-result-object v14

    goto/16 :goto_1

    .line 192
    :cond_f
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Empty parameter value detected"

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 195
    :cond_10
    const/16 v15, 0x3b

    if-ne v3, v15, :cond_11

    .line 197
    invoke-static {v7, v8}, Lorg/restlet/data/Parameter;->create(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/restlet/data/Parameter;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .restart local v7    # "paramNameBuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 201
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 202
    :cond_11
    const/16 v15, 0x22

    if-ne v3, v15, :cond_19

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-nez v15, :cond_19

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "done":Z
    const/4 v10, 0x0

    .local v10, "quotedPair":Z
    move v5, v4

    .line 208
    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    :goto_3
    if-nez v1, :cond_18

    const/4 v15, -0x1

    if-eq v3, v15, :cond_18

    .line 209
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v5, v15, :cond_12

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 212
    :goto_4
    if-eqz v10, :cond_14

    .line 214
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 215
    int-to-char v15, v3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    const/4 v10, 0x0

    move v5, v4

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    goto :goto_3

    .line 209
    :cond_12
    const/4 v3, -0x1

    move v4, v5

    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    goto :goto_4

    .line 218
    :cond_13
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid character \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-char v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" detected in quoted string. Please check your value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 223
    :cond_14
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 225
    const/4 v1, 0x1

    move v5, v4

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    goto :goto_3

    .line 226
    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    :cond_15
    const/16 v15, 0x5c

    if-ne v3, v15, :cond_16

    .line 228
    const/4 v10, 0x1

    move v5, v4

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    goto :goto_3

    .line 229
    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    :cond_16
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isText(I)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 230
    int-to-char v15, v3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    goto :goto_3

    .line 232
    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    :cond_17
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid character \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-char v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" detected in quoted string. Please check your value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .end local v4    # "nextIndex":I
    .restart local v5    # "nextIndex":I
    :cond_18
    move v4, v5

    .line 238
    .end local v5    # "nextIndex":I
    .restart local v4    # "nextIndex":I
    goto/16 :goto_1

    .end local v1    # "done":Z
    .end local v10    # "quotedPair":Z
    :cond_19
    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 239
    int-to-char v15, v3

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 241
    :cond_1a
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    int-to-char v0, v3

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\" character isn\'t allowed in a media type parameter value."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 248
    :cond_1b
    const/4 v3, -0x1

    goto/16 :goto_2

    .line 253
    .end local v3    # "nextChar":I
    :cond_1c
    return-object v14
.end method
