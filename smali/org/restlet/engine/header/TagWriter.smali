.class public Lorg/restlet/engine/header/TagWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "TagWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Tag;",
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

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Tag;>;"
    new-instance v0, Lorg/restlet/engine/header/TagWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/TagWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/TagWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static write(Lorg/restlet/data/Tag;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Lorg/restlet/data/Tag;

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/restlet/data/Tag;->format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/Tag;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/TagWriter;->append(Lorg/restlet/data/Tag;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Tag;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "tag"    # Lorg/restlet/data/Tag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Tag;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/Tag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lorg/restlet/engine/header/TagWriter;->write(Lorg/restlet/data/Tag;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/TagWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method
