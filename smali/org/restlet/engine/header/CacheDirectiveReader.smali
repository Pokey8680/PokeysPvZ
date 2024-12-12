.class public Lorg/restlet/engine/header/CacheDirectiveReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "CacheDirectiveReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/CacheDirective;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 69
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
            "Lorg/restlet/data/CacheDirective;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/CacheDirective;>;"
    new-instance v0, Lorg/restlet/engine/header/CacheDirectiveReader;

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/header/CacheDirectiveReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/CacheDirectiveReader;->addValues(Ljava/util/Collection;)V

    .line 59
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
    invoke-virtual {p0}, Lorg/restlet/engine/header/CacheDirectiveReader;->readValue()Lorg/restlet/data/CacheDirective;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/CacheDirective;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-class v0, Lorg/restlet/data/CacheDirective;

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/CacheDirectiveReader;->readNamedValue(Ljava/lang/Class;)Lorg/restlet/util/NamedValue;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/CacheDirective;

    return-object v0
.end method
