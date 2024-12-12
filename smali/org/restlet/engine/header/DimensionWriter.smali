.class public Lorg/restlet/engine/header/DimensionWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "DimensionWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Dimension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Dimension;>;"
    new-instance v0, Lorg/restlet/engine/header/DimensionWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/DimensionWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/DimensionWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/DimensionWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Ljava/util/Collection;)Lorg/restlet/engine/header/DimensionWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)",
            "Lorg/restlet/engine/header/DimensionWriter;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Dimension;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    sget-object v3, Lorg/restlet/data/Dimension;->CLIENT_ADDRESS:Lorg/restlet/data/Dimension;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/restlet/data/Dimension;->TIME:Lorg/restlet/data/Dimension;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/restlet/data/Dimension;->UNSPECIFIED:Lorg/restlet/data/Dimension;

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    :cond_0
    const-string v3, "*"

    invoke-virtual {p0, v3}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 88
    :cond_1
    return-object p0

    .line 74
    :cond_2
    const/4 v1, 0x1

    .line 76
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Dimension;

    .line 77
    .local v0, "dimension":Lorg/restlet/data/Dimension;
    if-eqz v1, :cond_3

    .line 78
    const/4 v1, 0x0

    .line 83
    :goto_1
    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Lorg/restlet/data/Dimension;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 80
    :cond_3
    const-string v3, ", "

    invoke-virtual {p0, v3}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_1
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/Dimension;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/DimensionWriter;->append(Lorg/restlet/data/Dimension;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/DimensionWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Dimension;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "dimension"    # Lorg/restlet/data/Dimension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Dimension;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lorg/restlet/data/Dimension;->CHARACTER_SET:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_1

    .line 94
    const-string v0, "Accept-Charset"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 107
    :cond_0
    :goto_0
    return-object p0

    .line 95
    :cond_1
    sget-object v0, Lorg/restlet/data/Dimension;->CLIENT_AGENT:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_2

    .line 96
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 97
    :cond_2
    sget-object v0, Lorg/restlet/data/Dimension;->ENCODING:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_3

    .line 98
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Lorg/restlet/data/Dimension;->LANGUAGE:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_4

    .line 100
    const-string v0, "Accept-Language"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 101
    :cond_4
    sget-object v0, Lorg/restlet/data/Dimension;->MEDIA_TYPE:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_5

    .line 102
    const-string v0, "Accept"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 103
    :cond_5
    sget-object v0, Lorg/restlet/data/Dimension;->AUTHORIZATION:Lorg/restlet/data/Dimension;

    if-ne p1, v0, :cond_0

    .line 104
    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/DimensionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method
