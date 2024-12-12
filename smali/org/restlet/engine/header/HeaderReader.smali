.class public Lorg/restlet/engine/header/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final header:Ljava/lang/String;

.field private volatile index:I

.field private volatile mark:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 269
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lorg/restlet/engine/header/HeaderReader;->header:Ljava/lang/String;

    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    .line 272
    iget v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    iput v0, p0, Lorg/restlet/engine/header/HeaderReader;->mark:I

    .line 273
    return-void

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final createNamedValue(Ljava/lang/Class;Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NV::",
            "Lorg/restlet/util/NamedValue",
            "<",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/lang/Class",
            "<TNV;>;",
            "Ljava/lang/String;",
            ")TNV;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TNV;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/restlet/engine/header/HeaderReader;->createNamedValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    move-result-object v0

    return-object v0
.end method

.method private static createNamedValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NV::",
            "Lorg/restlet/util/NamedValue",
            "<",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/lang/Class",
            "<TNV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TNV;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TNV;>;"
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to create named value"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readDate(Ljava/lang/String;Z)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "cookie"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1036:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/restlet/engine/util/DateUtils;->FORMAT_RFC_1123:Ljava/util/List;

    invoke-static {p0, v0}, Lorg/restlet/engine/util/DateUtils;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public static readHeader(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Lorg/restlet/engine/header/Header;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 194
    const/4 v1, 0x0

    .line 197
    .local v1, "result":Lorg/restlet/engine/header/Header;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 199
    .local v0, "next":I
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 202
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 203
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid end of headers. Line feed missing after the carriage return."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_0
    new-instance v1, Lorg/restlet/engine/header/Header;

    .end local v1    # "result":Lorg/restlet/engine/header/Header;
    invoke-direct {v1}, Lorg/restlet/engine/header/Header;-><init>()V

    .line 210
    .restart local v1    # "result":Lorg/restlet/engine/header/Header;
    :goto_0
    if-eq v0, v3, :cond_1

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_1

    .line 211
    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    if-ne v0, v3, :cond_2

    .line 216
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to parse the header name. End of stream reached too early."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/header/Header;->setName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 224
    :goto_1
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    .line 230
    :cond_3
    :goto_2
    if-eq v0, v3, :cond_4

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 231
    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_2

    .line 235
    :cond_4
    if-ne v0, v3, :cond_5

    .line 236
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to parse the header value. End of stream reached too early."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 242
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 243
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/restlet/engine/header/Header;->setValue(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 251
    :cond_6
    return-object v1

    .line 246
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to parse the HTTP header value. The carriage return must be followed by a line feed."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static readHeader(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/Header;
    .locals 7
    .param p0, "header"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 137
    .local v3, "result":Lorg/restlet/engine/header/Header;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "start":I
    const/4 v0, 0x0

    .line 141
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 143
    .local v2, "next":I
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 146
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 147
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid end of headers. Line feed missing after the carriage return."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :cond_0
    new-instance v3, Lorg/restlet/engine/header/Header;

    .end local v3    # "result":Lorg/restlet/engine/header/Header;
    invoke-direct {v3}, Lorg/restlet/engine/header/Header;-><init>()V

    .restart local v3    # "result":Lorg/restlet/engine/header/Header;
    move v0, v1

    .line 154
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    const/16 v5, 0x3a

    if-eq v2, v5, :cond_1

    .line 155
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v0, v5, :cond_2

    .line 159
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unable to parse the header name. End of line reached too early."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-interface {p0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/engine/header/Header;->setName(Ljava/lang/String;)V

    .line 164
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v0, v1

    .line 166
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :goto_1
    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_1

    .line 171
    :cond_3
    add-int/lit8 v4, v0, -0x1

    .line 174
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/engine/header/Header;->setValue(Ljava/lang/String;)V

    .line 179
    .end local v0    # "index":I
    .end local v2    # "next":I
    .end local v4    # "start":I
    :cond_4
    return-object v3
.end method


# virtual methods
.method public addValues(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 285
    const/4 v0, 0x1

    .line 287
    .local v0, "cont":Z
    :cond_0
    iget v1, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    .line 290
    .local v1, "i":I
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readValue()Ljava/lang/Object;

    move-result-object v3

    .line 291
    .local v3, "nextValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v3, p1}, Lorg/restlet/engine/header/HeaderReader;->canAdd(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipValueSeparator()Z

    .line 298
    iget v4, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 299
    const/4 v0, 0x0

    .line 305
    :cond_2
    if-nez v0, :cond_0

    .line 310
    .end local v0    # "cont":Z
    .end local v1    # "i":I
    .end local v3    # "nextValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 300
    .restart local v0    # "cont":Z
    .restart local v1    # "i":I
    .restart local v3    # "nextValue":Ljava/lang/Object;, "TV;"
    :cond_3
    iget v4, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    if-ne v1, v4, :cond_2

    .line 302
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The reading of one header initiates an infinite loop"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "cont":Z
    .end local v1    # "i":I
    .end local v3    # "nextValue":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 307
    .local v2, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Unable to read a header"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected canAdd(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/Collection",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz p1, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final createParameter(Ljava/lang/String;)Lorg/restlet/data/Parameter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/engine/header/HeaderReader;->createParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Parameter;

    move-result-object v0

    return-object v0
.end method

.method protected createParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/data/Parameter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    new-instance v0, Lorg/restlet/data/Parameter;

    invoke-direct {v0, p1, p2}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 358
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    iget v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    iput v0, p0, Lorg/restlet/engine/header/HeaderReader;->mark:I

    .line 359
    return-void
.end method

.method public peek()I
    .locals 3

    .prologue
    .line 367
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, -0x1

    .line 369
    .local v0, "result":I
    iget v1, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 370
    iget-object v1, p0, Lorg/restlet/engine/header/HeaderReader;->header:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 373
    :cond_0
    return v0
.end method

.method public read()I
    .locals 4

    .prologue
    .line 382
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, -0x1

    .line 384
    .local v0, "result":I
    iget v1, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    if-ltz v1, :cond_0

    .line 385
    iget-object v1, p0, Lorg/restlet/engine/header/HeaderReader;->header:Ljava/lang/String;

    iget v2, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 387
    iget v1, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    iget-object v2, p0, Lorg/restlet/engine/header/HeaderReader;->header:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 388
    const/4 v1, -0x1

    iput v1, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    .line 392
    :cond_0
    return v0
.end method

.method public readActualNamedValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v1, 0x0

    .line 405
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 408
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->peek()I

    move-result v0

    .line 410
    .local v0, "nextChar":I
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readQuotedString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :cond_0
    :goto_0
    return-object v1

    .line 412
    :cond_1
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public readComment()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/16 v6, 0x29

    const/16 v5, 0x28

    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 430
    .local v1, "next":I
    if-ne v1, v5, :cond_5

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    if-nez v2, :cond_6

    .line 434
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 436
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isCommentText(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isQuoteCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 441
    :cond_1
    if-ne v1, v5, :cond_2

    .line 443
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 444
    :cond_2
    if-ne v1, v6, :cond_3

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 447
    :cond_3
    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 448
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected end of comment. Please check your value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_4
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" detected in comment. Please check your value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A comment must start with a parenthesis"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_6
    return-object v2
.end method

.method public readDigits()Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    .line 471
    .local v0, "next":I
    :goto_0
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readNamedValue(Ljava/lang/Class;)Lorg/restlet/util/NamedValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NV::",
            "Lorg/restlet/util/NamedValue",
            "<",
            "Ljava/lang/String;",
            ">;>(",
            "Ljava/lang/Class",
            "<TNV;>;)TNV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TNV;>;"
    const/4 v2, 0x0

    .line 493
    .local v2, "result":Lorg/restlet/util/NamedValue;, "TNV;"
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readToken()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 496
    .local v1, "nextChar":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 497
    const/16 v3, 0x3d

    if-ne v1, v3, :cond_0

    .line 499
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->readActualNamedValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lorg/restlet/engine/header/HeaderReader;->createNamedValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    move-result-object v2

    .line 511
    :goto_0
    return-object v2

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    .line 504
    invoke-static {p1, v0}, Lorg/restlet/engine/header/HeaderReader;->createNamedValue(Ljava/lang/Class;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    move-result-object v2

    goto :goto_0

    .line 507
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Parameter or extension has no name. Please check your value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readParameter()Lorg/restlet/data/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const-class v0, Lorg/restlet/data/Parameter;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderReader;->readNamedValue(Ljava/lang/Class;)Lorg/restlet/util/NamedValue;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Parameter;

    return-object v0
.end method

.method public readQuotedString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v2, 0x0

    .line 532
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 535
    .local v1, "next":I
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    if-nez v2, :cond_5

    .line 539
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 541
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isQuotedText(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 543
    :cond_0
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isQuoteCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isDoubleQuote(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 549
    :cond_2
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 550
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unexpected end of quoted string. Please check your value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 553
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" detected in quoted string. Please check your value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 560
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A quoted string must start with a double quote"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 564
    .restart local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_5
    return-object v2
.end method

.method public readRawText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 574
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v1, 0x0

    .line 575
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    .line 577
    .local v0, "next":I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    if-nez v1, :cond_0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    goto :goto_0

    .line 587
    :cond_1
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 588
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    .line 591
    :cond_3
    if-nez v1, :cond_4

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public readRawValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 606
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 609
    const/4 v2, 0x0

    .line 610
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    .line 612
    .local v1, "next":I
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 613
    if-nez v2, :cond_0

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    goto :goto_0

    .line 622
    :cond_1
    if-eqz v2, :cond_2

    .line 623
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 624
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/restlet/engine/header/HeaderUtils;->isLinearWhiteSpace(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 625
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 624
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 630
    .end local v0    # "i":I
    :cond_2
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    .line 634
    :cond_3
    if-nez v2, :cond_4

    const/4 v3, 0x0

    :goto_2
    return-object v3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public readToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 643
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    .line 646
    .local v0, "next":I
    :goto_0
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isTokenChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v0

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    .line 654
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public readValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 673
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 674
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderReader;->addValues(Ljava/util/Collection;)V

    .line 675
    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 683
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    iget v0, p0, Lorg/restlet/engine/header/HeaderReader;->mark:I

    iput v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    .line 684
    return-void
.end method

.method public skipParameterSeparator()Z
    .locals 2

    .prologue
    .line 693
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, 0x0

    .line 696
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 699
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSemiColon(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v0, 0x1

    .line 703
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 709
    :goto_0
    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    goto :goto_0
.end method

.method public skipSpaces()Z
    .locals 3

    .prologue
    .line 718
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v1, 0x0

    .line 719
    .local v1, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->peek()I

    move-result v0

    .line 721
    .local v0, "next":I
    :goto_0
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isLinearWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 722
    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isLinearWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 723
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    .line 724
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->peek()I

    move-result v0

    goto :goto_0

    .line 722
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 727
    :cond_2
    return v1
.end method

.method public skipValueSeparator()Z
    .locals 2

    .prologue
    .line 737
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    const/4 v0, 0x0

    .line 740
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 743
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->read()I

    move-result v1

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isComma(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    const/4 v0, 0x1

    .line 747
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->skipSpaces()Z

    .line 753
    :goto_0
    return v0

    .line 750
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderReader;->unread()V

    goto :goto_0
.end method

.method public unread()V
    .locals 1

    .prologue
    .line 760
    .local p0, "this":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<TV;>;"
    iget v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    if-lez v0, :cond_0

    .line 761
    iget v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/restlet/engine/header/HeaderReader;->index:I

    .line 763
    :cond_0
    return-void
.end method
