.class public abstract Lorg/restlet/representation/WriterRepresentation;
.super Lorg/restlet/representation/CharacterRepresentation;
.source "WriterRepresentation.java"


# direct methods
.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/restlet/representation/CharacterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;J)V
    .locals 0
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "expectedSize"    # J

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/restlet/representation/CharacterRepresentation;-><init>(Lorg/restlet/data/MediaType;)V

    .line 74
    invoke-virtual {p0, p2, p3}, Lorg/restlet/representation/WriterRepresentation;->setSize(J)V

    .line 75
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lorg/restlet/engine/io/BioUtils;->getReader(Lorg/restlet/representation/WriterRepresentation;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method
