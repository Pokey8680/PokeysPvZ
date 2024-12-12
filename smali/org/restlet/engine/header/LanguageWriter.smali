.class public Lorg/restlet/engine/header/LanguageWriter;
.super Lorg/restlet/engine/header/MetadataWriter;
.source "LanguageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/MetadataWriter",
        "<",
        "Lorg/restlet/data/Language;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/restlet/engine/header/MetadataWriter;-><init>()V

    return-void
.end method

.method public static write(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    new-instance v0, Lorg/restlet/engine/header/LanguageWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/LanguageWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/LanguageWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
