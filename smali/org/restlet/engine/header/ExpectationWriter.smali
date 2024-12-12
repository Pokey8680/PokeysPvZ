.class public Lorg/restlet/engine/header/ExpectationWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "ExpectationWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Expectation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
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
            "Lorg/restlet/data/Expectation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "expectations":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    new-instance v0, Lorg/restlet/engine/header/ExpectationWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/ExpectationWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/ExpectationWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Lorg/restlet/data/Expectation;)Lorg/restlet/engine/header/ExpectationWriter;
    .locals 3
    .param p1, "expectation"    # Lorg/restlet/data/Expectation;

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Expectation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ExpectationWriter;->appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;

    .line 65
    invoke-virtual {p1}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p1}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/data/Parameter;

    .line 67
    .local v1, "param":Lorg/restlet/data/Parameter;
    invoke-virtual {p0}, Lorg/restlet/engine/header/ExpectationWriter;->appendParameterSeparator()Lorg/restlet/engine/header/HeaderWriter;

    .line 68
    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/ExpectationWriter;->appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 73
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "param":Lorg/restlet/data/Parameter;
    :cond_0
    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/restlet/data/Expectation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/ExpectationWriter;->append(Lorg/restlet/data/Expectation;)Lorg/restlet/engine/header/ExpectationWriter;

    move-result-object v0

    return-object v0
.end method
