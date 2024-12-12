.class public Lorg/restlet/engine/header/MetadataWriter;
.super Lorg/restlet/engine/header/HeaderWriter;
.source "MetadataWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/restlet/data/Metadata;",
        ">",
        "Lorg/restlet/engine/header/HeaderWriter",
        "<TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lorg/restlet/engine/header/MetadataWriter;, "Lorg/restlet/engine/header/MetadataWriter<TM;>;"
    invoke-direct {p0}, Lorg/restlet/engine/header/HeaderWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic append(Ljava/lang/Object;)Lorg/restlet/engine/header/HeaderWriter;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lorg/restlet/engine/header/MetadataWriter;, "Lorg/restlet/engine/header/MetadataWriter<TM;>;"
    check-cast p1, Lorg/restlet/data/Metadata;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/restlet/engine/header/MetadataWriter;->append(Lorg/restlet/data/Metadata;)Lorg/restlet/engine/header/MetadataWriter;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/restlet/data/Metadata;)Lorg/restlet/engine/header/MetadataWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Lorg/restlet/engine/header/MetadataWriter",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/restlet/engine/header/MetadataWriter;, "Lorg/restlet/engine/header/MetadataWriter<TM;>;"
    .local p1, "metadata":Lorg/restlet/data/Metadata;, "TM;"
    invoke-virtual {p1}, Lorg/restlet/data/Metadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/header/MetadataWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/header/MetadataWriter;

    return-object v0
.end method
