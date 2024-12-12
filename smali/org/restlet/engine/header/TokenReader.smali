.class public Lorg/restlet/engine/header/TokenReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "TokenReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 53
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
    .line 43
    invoke-virtual {p0}, Lorg/restlet/engine/header/TokenReader;->readValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/restlet/engine/header/TokenReader;->readToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
