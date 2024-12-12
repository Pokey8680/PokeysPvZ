.class public Lorg/restlet/engine/header/EncodingReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "EncodingReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Encoding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected bridge synthetic canAdd(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/util/Collection;

    .prologue
    .line 46
    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/engine/header/EncodingReader;->canAdd(Lorg/restlet/data/Encoding;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected canAdd(Lorg/restlet/data/Encoding;Ljava/util/Collection;)Z
    .locals 1
    .param p1, "value"    # Lorg/restlet/data/Encoding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Encoding;",
            "Ljava/util/Collection",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Encoding;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {v0, p1}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/restlet/engine/header/EncodingReader;->readValue()Lorg/restlet/data/Encoding;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Encoding;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/restlet/engine/header/EncodingReader;->readToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Encoding;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Encoding;

    move-result-object v0

    return-object v0
.end method
