.class public Lorg/restlet/engine/header/DispositionReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "DispositionReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Disposition;",
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
.method public bridge synthetic readValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->readValue()Lorg/restlet/data/Disposition;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Disposition;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "result":Lorg/restlet/data/Disposition;
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->readToken()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 64
    new-instance v1, Lorg/restlet/data/Disposition;

    .end local v1    # "result":Lorg/restlet/data/Disposition;
    invoke-direct {v1}, Lorg/restlet/data/Disposition;-><init>()V

    .line 65
    .restart local v1    # "result":Lorg/restlet/data/Disposition;
    invoke-virtual {v1, v2}, Lorg/restlet/data/Disposition;->setType(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->skipParameterSeparator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    .line 70
    .local v0, "param":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v1}, Lorg/restlet/data/Disposition;->getParameters()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->skipParameterSeparator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lorg/restlet/engine/header/DispositionReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .end local v0    # "param":Lorg/restlet/data/Parameter;
    :cond_1
    return-object v1
.end method
