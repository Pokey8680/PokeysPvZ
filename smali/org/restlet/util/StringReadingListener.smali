.class public abstract Lorg/restlet/util/StringReadingListener;
.super Lorg/restlet/util/CharacterReadingListener;
.source "StringReadingListener.java"


# direct methods
.method public constructor <init>(Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/restlet/util/CharacterReadingListener;-><init>(Lorg/restlet/representation/Representation;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/restlet/representation/Representation;I)V
    .locals 0
    .param p1, "source"    # Lorg/restlet/representation/Representation;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/restlet/util/CharacterReadingListener;-><init>(Lorg/restlet/representation/Representation;I)V

    .line 73
    return-void
.end method


# virtual methods
.method protected final onContent(Ljava/io/Reader;)V
    .locals 5
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 78
    :try_start_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 79
    .local v1, "r":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v3, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 82
    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/restlet/util/StringReadingListener;->onContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "r":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lorg/restlet/util/StringReadingListener;->onError(Ljava/io/IOException;)V

    goto :goto_1
.end method

.method protected abstract onContent(Ljava/lang/String;)V
.end method
