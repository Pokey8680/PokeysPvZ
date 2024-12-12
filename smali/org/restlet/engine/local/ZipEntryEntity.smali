.class public Lorg/restlet/engine/local/ZipEntryEntity;
.super Lorg/restlet/engine/local/Entity;
.source "ZipEntryEntity.java"


# instance fields
.field protected final entry:Ljava/util/zip/ZipEntry;

.field protected final zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/lang/String;Lorg/restlet/service/MetadataService;)V
    .locals 4
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entryName"    # Ljava/lang/String;
    .param p3, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 71
    invoke-direct {p0, p3}, Lorg/restlet/engine/local/Entity;-><init>(Lorg/restlet/service/MetadataService;)V

    .line 72
    iput-object p1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    .line 73
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 74
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 75
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 79
    .local v1, "entryDir":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_1

    .line 80
    iput-object v1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    goto :goto_0

    .line 82
    :cond_1
    iput-object v0, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lorg/restlet/service/MetadataService;)V
    .locals 0
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "entry"    # Ljava/util/zip/ZipEntry;
    .param p3, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 98
    invoke-direct {p0, p3}, Lorg/restlet/engine/local/Entity;-><init>(Lorg/restlet/service/MetadataService;)V

    .line 99
    iput-object p1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    .line 100
    iput-object p2, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    .line 101
    return-void
.end method


# virtual methods
.method public exists()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 105
    const-string v1, ""

    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipEntryEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
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
    .line 114
    const/4 v3, 0x0

    .line 116
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipEntryEntity;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/local/Entity;>;"
    iget-object v4, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 119
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    iget-object v4, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "n":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 122
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 124
    new-instance v4, Lorg/restlet/engine/local/ZipEntryEntity;

    iget-object v5, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipEntryEntity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lorg/restlet/engine/local/ZipEntryEntity;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lorg/restlet/service/MetadataService;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "n":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/restlet/engine/local/Entity;
    .locals 6

    .prologue
    .line 139
    const-string v2, ""

    iget-object v3, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 144
    :goto_0
    return-object v2

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "n":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "pn":Ljava/lang/String;
    new-instance v2, Lorg/restlet/engine/local/ZipEntryEntity;

    iget-object v3, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v4, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipEntryEntity;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/restlet/engine/local/ZipEntryEntity;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Lorg/restlet/service/MetadataService;)V

    goto :goto_0
.end method

.method public getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;
    .locals 3
    .param p1, "defaultMediaType"    # Lorg/restlet/data/MediaType;
    .param p2, "timeToLive"    # I

    .prologue
    .line 151
    new-instance v0, Lorg/restlet/engine/local/ZipEntryRepresentation;

    iget-object v1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1, v1, v2}, Lorg/restlet/engine/local/ZipEntryRepresentation;-><init>(Lorg/restlet/data/MediaType;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, ""

    iget-object v1, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/restlet/engine/local/ZipEntryEntity;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
