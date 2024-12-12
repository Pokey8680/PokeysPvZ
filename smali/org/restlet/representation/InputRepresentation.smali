.class public Lorg/restlet/representation/InputRepresentation;
.super Lorg/restlet/representation/StreamRepresentation;
.source "InputRepresentation.java"


# instance fields
.field private volatile stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 75
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;J)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;J)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p3, "expectedSize"    # J

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lorg/restlet/representation/StreamRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 91
    invoke-virtual {p0, p3, p4}, Lorg/restlet/representation/InputRepresentation;->setSize(J)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/restlet/representation/InputRepresentation;->setTransient(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lorg/restlet/representation/InputRepresentation;->setStream(Ljava/io/InputStream;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v1, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v2, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-eq v1, v2, :cond_0

    .line 99
    iget-object v0, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    .line 100
    .local v0, "result":Ljava/io/InputStream;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/restlet/representation/InputRepresentation;->setStream(Ljava/io/InputStream;)V

    .line 104
    .end local v0    # "result":Ljava/io/InputStream;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/restlet/representation/InputRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/representation/InputRepresentation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->toString(Ljava/io/InputStream;Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    .line 132
    :cond_0
    invoke-super {p0}, Lorg/restlet/representation/StreamRepresentation;->release()V

    .line 133
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error while releasing the representation."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/restlet/representation/InputRepresentation;->stream:Ljava/io/InputStream;

    .line 143
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/restlet/representation/InputRepresentation;->setAvailable(Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/restlet/representation/InputRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 149
    return-void
.end method
