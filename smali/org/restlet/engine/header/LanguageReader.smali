.class public Lorg/restlet/engine/header/LanguageReader;
.super Lorg/restlet/engine/header/HeaderReader;
.source "LanguageReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderReader",
        "<",
        "Lorg/restlet/data/Language;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 55
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
    .line 45
    invoke-virtual {p0}, Lorg/restlet/engine/header/LanguageReader;->readValue()Lorg/restlet/data/Language;

    move-result-object v0

    return-object v0
.end method

.method public readValue()Lorg/restlet/data/Language;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/restlet/engine/header/LanguageReader;->readRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/data/Language;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Language;

    move-result-object v0

    return-object v0
.end method
