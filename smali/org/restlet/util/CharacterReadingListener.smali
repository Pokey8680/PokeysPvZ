.class public abstract Lorg/restlet/util/CharacterReadingListener;
.super Lorg/restlet/util/ByteReadingListener;
.source "CharacterReadingListener.java"


# instance fields
.field private final characterSet:Lorg/restlet/data/CharacterSet;


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 1
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    sget v0, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {p0, p1, v0}, Lorg/restlet/util/CharacterReadingListener;-><init>(Lorg/restlet/representation/Representation;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;I)V
    .locals 1
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/restlet/util/ByteReadingListener;-><init>(Lorg/restlet/representation/Representation;I)V

    .line 80
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/util/CharacterReadingListener;->characterSet:Lorg/restlet/data/CharacterSet;

    .line 81
    return-void
.end method


# virtual methods
.method protected final onContent(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 85
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/restlet/util/CharacterReadingListener;->characterSet:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v1}, Lorg/restlet/data/CharacterSet;->toCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 87
    .local v0, "isr":Ljava/io/InputStreamReader;
    invoke-virtual {p0, v0}, Lorg/restlet/util/CharacterReadingListener;->onContent(Ljava/io/Reader;)V

    .line 88
    return-void
.end method

.method protected abstract onContent(Ljava/io/Reader;)V
.end method
