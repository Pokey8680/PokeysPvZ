.class public Lorg/restlet/engine/header/DispositionWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "DispositionWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Disposition;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method

.method public static write(Lorg/restlet/data/Disposition;)Ljava/lang/String;
    .locals 1
    .param p0, "disposition"    # Lorg/restlet/data/Disposition;

    .prologue
    .line 54
    new-instance v0, Lorg/restlet/engine/header/DispositionWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/DispositionWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/DispositionWriter;->append(Lorg/restlet/data/Disposition;)Lorg/restlet/engine/header/DispositionWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/DispositionWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Lorg/restlet/data/Disposition;)Lorg/restlet/engine/header/DispositionWriter;
    .locals 4
    .param p1, "disposition"    # Lorg/restlet/data/Disposition;

    .prologue
    .line 59
    const-string v2, "none"

    invoke-virtual {p1}, Lorg/restlet/data/Disposition;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Disposition;->getType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 78
    :cond_0
    return-object p0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lorg/restlet/data/Disposition;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 66
    invoke-virtual {p1}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

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
    .local v1, "parameter":Lorg/restlet/data/Parameter;
    const-string v2, "; "

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 68
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 69
    const-string v2, "="

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 71
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/restlet/engine/header/HeaderUtils;->isToken(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/header/DispositionWriter;->appendQuotedString(Ljava/lang/String;)Lorg/restlet/engine/header/HeaderWriter;

    goto :goto_0
.end method

.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    check-cast p1, Lorg/restlet/data/Disposition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/DispositionWriter;->append(Lorg/restlet/data/Disposition;)Lorg/restlet/engine/header/DispositionWriter;

    move-result-object v0

    return-object v0
.end method
