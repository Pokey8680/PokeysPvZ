.class public Lorg/restlet/engine/local/FileEntity;
.super Lorg/restlet/engine/local/Entity;
.source "FileEntity.java"


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/restlet/service/MetadataService;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 62
    invoke-direct {p0, p2}, Lorg/restlet/engine/local/Entity;-><init>(Lorg/restlet/service/MetadataService;)V

    .line 63
    iput-object p1, p0, Lorg/restlet/engine/local/FileEntity;->file:Ljava/io/File;

    .line 64
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/local/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 75
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 79
    .local v1, "f":Ljava/io/File;
    new-instance v5, Lorg/restlet/engine/local/FileEntity;

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lorg/restlet/engine/local/FileEntity;-><init>(Ljava/io/File;Lorg/restlet/service/MetadataService;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-object v4
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/restlet/engine/local/FileEntity;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/restlet/engine/local/Entity;
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, "parentFile":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/restlet/engine/local/FileEntity;

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/restlet/engine/local/FileEntity;-><init>(Ljava/io/File;Lorg/restlet/service/MetadataService;)V

    goto :goto_0
.end method

.method public getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "defaultMediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "timeToLive"    # I

    .prologue
    .line 110
    new-instance v0, Lorg/restlet/representation/FileRepresentation;

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/restlet/representation/FileRepresentation;-><init>(Ljava/io/File;Lorg/restlet/data/MediaType;I)V

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isNormal()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileEntity;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
