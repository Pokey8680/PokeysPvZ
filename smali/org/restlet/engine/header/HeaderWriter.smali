.class public abstract Lorg/restlet/engine/header/HeaderWriter;
.super Ljava/io/StringWriter;
.source "HeaderWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/io/StringWriter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/io/StringWriter;
    .locals 1
    .param p1, "x0"    # C

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lorg/restlet/engine/header/HeaderWriter;
    .locals 0
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-super {p0, p1}, Ljava/io/StringWriter;->append(C)Ljava/io/StringWriter;

    .line 56
    return-object p0
.end method

.method public append(I)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-super {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 79
    return-object p0
.end method

.method public abstract append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation
.end method

.method public append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 91
    const/4 v0, 0x1

    .line 93
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/HeaderWriter;->canWrite(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 101
    :goto_1
    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/header/HeaderWriter;->appendValueSeparator()Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_1

    .line 106
    .end local v0    # "first":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object p0
.end method

.method public append([C)Lorg/restlet/engine/header/HeaderWriter;
    .locals 4
    .param p1, "cs"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    if-eqz p1, :cond_0

    .line 68
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 69
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object p0
.end method

.method public appendComment(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 155
    .local v0, "c":C
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isCommentText(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 152
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->appendQuotedPair(C)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_1

    .line 162
    .end local v0    # "c":C
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v2

    return-object v2
.end method

.method public appendExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 194
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 195
    const-string v0, "="

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 197
    invoke-static {p2}, Lorg/restlet/engine/header/HeaderUtils;->isToken(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 205
    :cond_0
    :goto_0
    return-object p0

    .line 200
    :cond_1
    invoke-virtual {p0, p2}, Lorg/restlet/engine/header/HeaderWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method

.method public appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/NamedValue",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    .local p1, "extension":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/restlet/engine/header/HeaderWriter;->appendExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object p0

    .line 177
    .end local p0    # "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    :cond_0
    return-object p0
.end method

.method public appendParameterSeparator()Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendProduct(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 229
    if-eqz p2, :cond_0

    .line 230
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/restlet/engine/header/HeaderWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    .line 233
    :cond_0
    return-object p0
.end method

.method public appendQuotedPair(C)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "character"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const/16 v3, 0x22

    .line 255
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 256
    invoke-virtual {p0, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 262
    .local v0, "c":C
    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isQuotedText(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->appendQuotedPair(C)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_1

    .line 269
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {p0, v3}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    .line 272
    .end local v1    # "i":I
    :cond_2
    return-object p0
.end method

.method public appendSpace()Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(C)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-static {p1}, Lorg/restlet/engine/header/HeaderUtils;->isToken(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected character found in token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendUriEncoded(Ljava/lang/CharSequence;Lorg/restlet/data/CharacterSet;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/restlet/data/CharacterSet;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/restlet/data/Reference;->encode(Ljava/lang/String;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public appendValueSeparator()Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    const-string v0, ", "

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/HeaderWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method protected canWrite(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lorg/restlet/engine/header/HeaderWriter;, "Lorg/restlet/engine/header/HeaderWriter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
