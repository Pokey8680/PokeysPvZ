.class public Lorg/restlet/representation/StringRepresentation;
.super Lorg/restlet/representation/CharacterRepresentation;
.source "StringRepresentation.java"


# instance fields
.field private volatile text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    sget-object v0, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/Language;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "language"    # Lorg/restlet/data/Language;

    .prologue
    .line 93
    sget-object v0, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "language"    # Lorg/restlet/data/Language;

    .prologue
    .line 122
    sget-object v0, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;Lorg/restlet/data/CharacterSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;Lorg/restlet/data/Language;Lorg/restlet/data/CharacterSet;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "language"    # Lorg/restlet/data/Language;
    .param p4, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 139
    invoke-direct {p0, p2}, Lorg/restlet/representation/CharacterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 140
    invoke-virtual {p0, p2}, Lorg/restlet/representation/StringRepresentation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 141
    if-eqz p3, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-virtual {p0, p4}, Lorg/restlet/representation/StringRepresentation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 146
    invoke-virtual {p0, p1}, Lorg/restlet/representation/StringRepresentation;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 69
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    sget-object v1, Lorg/restlet/data/MediaType;->TEXT_PLAIN:Lorg/restlet/data/MediaType;

    invoke-direct {p0, v0, v1}, Lorg/restlet/representation/StringRepresentation;-><init>(Ljava/lang/CharSequence;Lorg/restlet/data/MediaType;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v0, Lorg/restlet/data/CharacterSet;->ISO_8859_1:Lorg/restlet/data/CharacterSet;

    .line 162
    .local v0, "charset":Lorg/restlet/data/CharacterSet;
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 164
    .local v1, "result":Ljava/io/ByteArrayInputStream;
    return-object v1

    .line 160
    .end local v0    # "charset":Lorg/restlet/data/CharacterSet;
    .end local v1    # "result":Ljava/io/ByteArrayInputStream;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/restlet/representation/StringRepresentation;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/StringRepresentation;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/StringRepresentation;->setText(Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Lorg/restlet/representation/CharacterRepresentation;->release()V

    .line 179
    return-void
.end method

.method public setCharacterSet(Lorg/restlet/data/CharacterSet;)V
    .locals 0
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lorg/restlet/representation/CharacterRepresentation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 184
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->updateSize()V

    .line 185
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/restlet/representation/StringRepresentation;->text:Ljava/lang/CharSequence;

    .line 195
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->updateSize()V

    .line 196
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lorg/restlet/representation/StringRepresentation;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateSize()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 217
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lorg/restlet/representation/StringRepresentation;->setSize(J)V

    .line 232
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lorg/restlet/representation/StringRepresentation;->setSize(J)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to update size"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-virtual {p0, v4, v5}, Lorg/restlet/representation/StringRepresentation;->setSize(J)V

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-virtual {p0, v4, v5}, Lorg/restlet/representation/StringRepresentation;->setSize(J)V

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/restlet/representation/StringRepresentation;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 240
    :cond_0
    return-void
.end method
