.class public Lorg/restlet/engine/header/ExpectationReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "ExpectationReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Expectation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static addValues(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V
    .locals 2
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Lorg/restlet/engine/header/ExpectationReader;

    invoke-direct {v0, p0}, Lorg/restlet/engine/header/ExpectationReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/ExpectationReader;->addValues(Ljava/util/Collection;)V

    .line 60
    :cond_0
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
    invoke-virtual {p0}, Lorg/restlet/engine/header/ExpectationReader;->readValue()Lorg/restlet/data/Expectation;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Expectation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    const-class v1, Lorg/restlet/data/Expectation;

    invoke-virtual {p0, v1}, Lorg/restlet/engine/header/ExpectationReader;->readNamedValue(Ljava/lang/Class;)Lorg/restlet/util/NamedValue;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Expectation;

    .line 76
    .local v0, "result":Lorg/restlet/data/Expectation;
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/header/ExpectationReader;->skipParameterSeparator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lorg/restlet/data/Expectation;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/header/ExpectationReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method
