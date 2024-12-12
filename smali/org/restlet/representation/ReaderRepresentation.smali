.class public Lorg/restlet/representation/ReaderRepresentation;
.super Lorg/restlet/representation/CharacterRepresentation;
.source "ReaderRepresentation.java"


# instance fields
.field private volatile reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/ReaderRepresentation;-><init>(Ljava/io/Reader;Lorg/restlet/data/MediaType;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/restlet/data/MediaType;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 74
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/restlet/representation/ReaderRepresentation;-><init>(Ljava/io/Reader;Lorg/restlet/data/MediaType;J)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/restlet/data/MediaType;J)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "expectedSize"    # J

    .prologue
    .line 89
    invoke-direct {p0, p2}, Lorg/restlet/representation/CharacterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 90
    invoke-virtual {p0, p3, p4}, Lorg/restlet/representation/ReaderRepresentation;->setSize(J)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/restlet/representation/ReaderRepresentation;->setTransient(Z)V

    .line 92
    invoke-virtual {p0, p1}, Lorg/restlet/representation/ReaderRepresentation;->setReader(Ljava/io/Reader;)V

    .line 93
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
    .line 97
    iget-object v0, p0, Lorg/restlet/representation/ReaderRepresentation;->reader:Ljava/io/Reader;

    .line 98
    .local v0, "result":Ljava/io/Reader;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/representation/ReaderRepresentation;->setReader(Ljava/io/Reader;)V

    .line 99
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/restlet/representation/ReaderRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/ReaderRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 116
    iget-object v1, p0, Lorg/restlet/representation/ReaderRepresentation;->reader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/restlet/representation/ReaderRepresentation;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/restlet/representation/ReaderRepresentation;->reader:Ljava/io/Reader;

    .line 127
    :cond_0
    invoke-super {p0}, Lorg/restlet/representation/CharacterRepresentation;->release()V

    .line 128
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error while releasing the representation."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/restlet/representation/ReaderRepresentation;->reader:Ljava/io/Reader;

    .line 138
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/restlet/representation/ReaderRepresentation;->setAvailable(Z)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

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
    .line 143
    invoke-virtual {p0}, Lorg/restlet/representation/ReaderRepresentation;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)V

    .line 144
    return-void
.end method
