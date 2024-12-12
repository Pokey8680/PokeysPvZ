.class public Lorg/restlet/engine/application/MetadataExtension;
.super Ljava/lang/Object;
.source "MetadataExtension.java"


# instance fields
.field private final metadata:Lorg/restlet/data/Metadata;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/restlet/data/Metadata;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "metadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/restlet/engine/application/MetadataExtension;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/restlet/engine/application/MetadataExtension;->metadata:Lorg/restlet/data/Metadata;

    .line 67
    return-void
.end method


# virtual methods
.method public getCharacterSet()Lorg/restlet/data/CharacterSet;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getEncoding()Lorg/restlet/data/Encoding;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    return-object v0
.end method

.method public getLanguage()Lorg/restlet/data/Language;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Language;

    return-object v0
.end method

.method public getMediaType()Lorg/restlet/data/MediaType;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/application/MetadataExtension;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public getMetadata()Lorg/restlet/data/Metadata;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/restlet/engine/application/MetadataExtension;->metadata:Lorg/restlet/data/Metadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/restlet/engine/application/MetadataExtension;->name:Ljava/lang/String;

    return-object v0
.end method
