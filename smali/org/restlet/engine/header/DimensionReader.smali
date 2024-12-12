.class public Lorg/restlet/engine/header/DimensionReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "DimensionReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Dimension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static addValues(Lorg/restlet/engine/header/Header;Ljava/util/Collection;)V
    .locals 2
    .param p0, "header"    # Lorg/restlet/engine/header/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/Header;",
            "Ljava/util/Collection",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Dimension;>;"
    new-instance v0, Lorg/restlet/engine/header/DimensionReader;

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/header/DimensionReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/DimensionReader;->addValues(Ljava/util/Collection;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/restlet/engine/header/DimensionReader;->readValue()Lorg/restlet/data/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Dimension;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "result":Lorg/restlet/data/Dimension;
    invoke-virtual {p0}, Lorg/restlet/engine/header/DimensionReader;->readRawValue()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 75
    const-string v2, "Accept"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    sget-object v0, Lorg/restlet/data/Dimension;->MEDIA_TYPE:Lorg/restlet/data/Dimension;

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string v2, "Accept-Charset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    sget-object v0, Lorg/restlet/data/Dimension;->CHARACTER_SET:Lorg/restlet/data/Dimension;

    goto :goto_0

    .line 80
    :cond_2
    const-string v2, "Accept-Encoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    sget-object v0, Lorg/restlet/data/Dimension;->ENCODING:Lorg/restlet/data/Dimension;

    goto :goto_0

    .line 83
    :cond_3
    const-string v2, "Accept-Language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    sget-object v0, Lorg/restlet/data/Dimension;->LANGUAGE:Lorg/restlet/data/Dimension;

    goto :goto_0

    .line 86
    :cond_4
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 88
    sget-object v0, Lorg/restlet/data/Dimension;->AUTHORIZATION:Lorg/restlet/data/Dimension;

    goto :goto_0

    .line 89
    :cond_5
    const-string v2, "User-Agent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    sget-object v0, Lorg/restlet/data/Dimension;->CLIENT_AGENT:Lorg/restlet/data/Dimension;

    goto :goto_0

    .line 92
    :cond_6
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    sget-object v0, Lorg/restlet/data/Dimension;->UNSPECIFIED:Lorg/restlet/data/Dimension;

    goto :goto_0
.end method
