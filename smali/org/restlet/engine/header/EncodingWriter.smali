.class public Lorg/restlet/engine/header/EncodingWriter;
.super Lorg/restlet/engine/header/MetadataWriter;
.source "EncodingWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/MetadataWriter",
        "<",
        "Lorg/restlet/data/Encoding;",
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
            "Lorg/restlet/data/Encoding;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "encodings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Encoding;>;"
    new-instance v0, Lorg/restlet/engine/header/EncodingWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/EncodingWriter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/restlet/engine/header/EncodingWriter;->append(Ljava/util/Collection;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/header/HeaderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic canWrite(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/EncodingWriter;->canWrite(Lorg/restlet/data/Encoding;)Z

    move-result v0

    return v0
.end method

.method protected canWrite(Lorg/restlet/data/Encoding;)Z
    .locals 1
    .param p1, "encoding"    # Lorg/restlet/data/Encoding;

    .prologue
    .line 60
    sget-object v0, Lorg/restlet/data/Encoding;->IDENTITY:Lorg/restlet/data/Encoding;

    invoke-virtual {p1, v0}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
