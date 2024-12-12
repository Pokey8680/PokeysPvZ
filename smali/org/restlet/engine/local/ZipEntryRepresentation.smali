.class public Lorg/restlet/engine/local/ZipEntryRepresentation;
.super Lorg/restlet/representation/StreamRepresentation;
.source "ZipEntryRepresentation.java"


# instance fields
.field protected final entry:Ljava/util/zip/ZipEntry;

.field protected final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p3, "entry"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/restlet/representation/StreamRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 77
    iput-object p2, p0, Lorg/restlet/engine/local/ZipEntryRepresentation;->zipFile:Ljava/util/zip/ZipFile;

    .line 78
    iput-object p3, p0, Lorg/restlet/engine/local/ZipEntryRepresentation;->entry:Ljava/util/zip/ZipEntry;

    .line 79
    new-instance v0, Lorg/restlet/data/Disposition;

    invoke-direct {v0}, Lorg/restlet/data/Disposition;-><init>()V

    .line 80
    .local v0, "disposition":Lorg/restlet/data/Disposition;
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Disposition;->setFilename(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Lorg/restlet/engine/local/ZipEntryRepresentation;->setDisposition(Lorg/restlet/data/Disposition;)V

    .line 82
    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/local/ZipEntryRepresentation;->setSize(J)V

    .line 83
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v1}, Lorg/restlet/engine/local/ZipEntryRepresentation;->setModificationDate(Ljava/util/Date;)V

    .line 84
    return-void
.end method


# virtual methods
.method public getStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/restlet/engine/local/ZipEntryRepresentation;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lorg/restlet/engine/local/ZipEntryRepresentation;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/restlet/engine/local/ZipEntryRepresentation;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

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
    .line 101
    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipEntryRepresentation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 102
    return-void
.end method
