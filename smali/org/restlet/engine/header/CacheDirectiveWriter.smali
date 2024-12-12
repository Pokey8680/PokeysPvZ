.class public Lorg/restlet/engine/header/CacheDirectiveWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "CacheDirectiveWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/CacheDirective;",
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
            "Lorg/restlet/data/CacheDirective;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "directives":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CacheDirective;>;"
    new-instance v0, Lorg/restlet/engine/header/CacheDirectiveWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/CacheDirectiveWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/CacheDirectiveWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Lorg/restlet/data/CacheDirective;)Lorg/restlet/engine/header/CacheDirectiveWriter;
    .locals 0
    .param p1, "directive"    # Lorg/restlet/data/CacheDirective;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CacheDirectiveWriter;->appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;

    .line 61
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/CacheDirective;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/CacheDirectiveWriter;->append(Lorg/restlet/data/CacheDirective;)Lorg/restlet/engine/header/CacheDirectiveWriter;

    move-result-object v0

    return-object v0
.end method
