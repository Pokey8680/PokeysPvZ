.class public Lorg/restlet/engine/header/MethodReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "MethodReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Method;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 68
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
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/data/Method;>;"
    new-instance v0, Lorg/restlet/engine/header/MethodReader;

    invoke-virtual {p0}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/restlet/engine/header/MethodReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/restlet/engine/header/MethodReader;->addValues(Ljava/util/Collection;)V

    .line 58
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
    invoke-virtual {p0}, Lorg/restlet/engine/header/MethodReader;->readValue()Lorg/restlet/data/Method;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/restlet/engine/header/MethodReader;->readToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v0

    return-object v0
.end method
