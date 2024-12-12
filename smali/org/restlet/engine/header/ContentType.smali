.class public Lorg/restlet/engine/header/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private volatile characterSet:Lorg/restlet/data/CharacterSet;

.field private volatile mediaType:Lorg/restlet/data/MediaType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    :try_start_0
    new-instance v1, Lorg/restlet/engine/header/ContentTypeReader;

    invoke-direct {v1, p1}, Lorg/restlet/engine/header/ContentTypeReader;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "ctr":Lorg/restlet/engine/header/ContentTypeReader;
    invoke-virtual {v1}, Lorg/restlet/engine/header/ContentTypeReader;->readValue()Lorg/restlet/engine/header/ContentType;

    move-result-object v0

    .line 150
    .local v0, "ct":Lorg/restlet/engine/header/ContentType;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lorg/restlet/engine/header/ContentType;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/engine/header/ContentType;->mediaType:Lorg/restlet/data/MediaType;

    .line 152
    invoke-virtual {v0}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v3

    iput-object v3, p0, Lorg/restlet/engine/header/ContentType;->characterSet:Lorg/restlet/data/CharacterSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    return-void

    .line 154
    .end local v0    # "ct":Lorg/restlet/engine/header/ContentType;
    .end local v1    # "ctr":Lorg/restlet/engine/header/ContentTypeReader;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Content Type could not be read."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/restlet/engine/header/ContentType;->mediaType:Lorg/restlet/data/MediaType;

    .line 126
    iput-object p2, p0, Lorg/restlet/engine/header/ContentType;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 2
    .param p1, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 136
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/header/ContentType;-><init>(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)V

    .line 137
    return-void
.end method

.method public static readCharacterSet(Ljava/lang/String;)Lorg/restlet/data/CharacterSet;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lorg/restlet/engine/header/ContentType;

    invoke-direct {v0, p0}, Lorg/restlet/engine/header/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    return-object v0
.end method

.method public static readMediaType(Ljava/lang/String;)Lorg/restlet/data/MediaType;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lorg/restlet/engine/header/ContentType;

    invoke-direct {v0, p0}, Lorg/restlet/engine/header/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/restlet/engine/header/ContentType;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public static writeHeader(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;
    .locals 3
    .param p0, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p1, "characterSet"    # Lorg/restlet/data/CharacterSet;

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/restlet/data/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/data/MediaType;->getParameters()Lorg/restlet/util/Series;

    move-result-object v1

    const-string v2, "charset"

    invoke-virtual {v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static writeHeader(Lorg/restlet/representation/Representation;)Ljava/lang/String;
    .locals 2
    .param p0, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/header/ContentType;->writeHeader(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCharacterSet()Lorg/restlet/data/CharacterSet;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/restlet/engine/header/ContentType;->characterSet:Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getMediaType()Lorg/restlet/data/MediaType;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/restlet/engine/header/ContentType;->mediaType:Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/restlet/engine/header/ContentType;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/header/ContentType;->writeHeader(Lorg/restlet/data/MediaType;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
