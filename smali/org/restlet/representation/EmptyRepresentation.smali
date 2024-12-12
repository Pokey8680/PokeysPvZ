.class public Lorg/restlet/representation/EmptyRepresentation;
.super Lorg/restlet/representation/Representation;
.source "EmptyRepresentation.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/restlet/representation/Representation;-><init>()V

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/restlet/representation/EmptyRepresentation;->setAvailable(Z)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/restlet/representation/EmptyRepresentation;->setTransient(Z)V

    .line 56
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/restlet/representation/EmptyRepresentation;->setSize(J)V

    .line 57
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public write(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public write(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0
    .param p1, "writableChannel"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method
