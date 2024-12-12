.class public Lorg/restlet/engine/header/MethodWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "MethodWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Method;",
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

.method public static write(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "methods":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    new-instance v0, Lorg/restlet/engine/header/MethodWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/MethodWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/MethodWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/MethodWriter;->append(Lorg/restlet/data/Method;)Lorg/restlet/engine/header/MethodWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Method;)Lorg/restlet/engine/header/MethodWriter;
    .locals 1
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/restlet/data/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/MethodWriter;->appendToken(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/header/MethodWriter;

    return-object v0
.end method
