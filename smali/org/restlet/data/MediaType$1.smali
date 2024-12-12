.class final Lorg/restlet/data/MediaType$1;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/data/MediaType;->normalizeType(Ljava/lang/String;Lorg/restlet/util/Series;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/restlet/engine/header/HeaderWriter",
        "<",
        "Lorg/restlet/data/Parameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 667
    check-cast p1, Lorg/restlet/data/Parameter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/data/MediaType$1;->append(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Parameter;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "value"    # Lorg/restlet/data/Parameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Parameter;",
            ")",
            "Lorg/restlet/engine/header/HeaderWriter",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lorg/restlet/data/MediaType$1;->appendExtension(Lorg/restlet/util/NamedValue;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    return-object v0
.end method
