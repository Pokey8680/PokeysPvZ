.class public Lorg/restlet/engine/local/DirectoryServerResource;
.super Lorg/restlet/resource/ServerResource;
.source "DirectoryServerResource.java"


# instance fields
.field private volatile baseName:Ljava/lang/String;

.field private volatile baseVariant:Lorg/restlet/representation/Variant;

.field private volatile directory:Lorg/restlet/resource/Directory;

.field private volatile directoryContent:Lorg/restlet/data/ReferenceList;

.field private volatile directoryRedirection:Z

.field private volatile directoryTarget:Z

.field private volatile directoryUri:Ljava/lang/String;

.field private volatile fileContent:Lorg/restlet/representation/Representation;

.field private volatile fileTarget:Z

.field private volatile indexTarget:Z

.field private volatile originalRef:Lorg/restlet/data/Reference;

.field private volatile protoVariant:Lorg/restlet/representation/Variant;

.field private volatile relativePart:Ljava/lang/String;

.field private volatile targetUri:Ljava/lang/String;

.field private volatile uniqueReference:Lorg/restlet/data/Reference;

.field private volatile variantsGet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;-><init>()V

    return-void
.end method

.method private getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;
    .locals 3
    .param p1, "resourceUri"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    new-instance v1, Lorg/restlet/Request;

    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {v1, v2, p1}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v0

    return-object v0
.end method

.method private getRepresentationsComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/restlet/representation/Representation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v0, Lorg/restlet/engine/local/DirectoryServerResource$1;

    invoke-direct {v0, p0}, Lorg/restlet/engine/local/DirectoryServerResource$1;-><init>(Lorg/restlet/engine/local/DirectoryServerResource;)V

    .line 557
    .local v0, "identifiersComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/restlet/representation/Representation;>;"
    return-object v0
.end method

.method private getVariantsReferences()Lorg/restlet/data/ReferenceList;
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v14, -0x1

    .line 707
    new-instance v10, Lorg/restlet/data/ReferenceList;

    invoke-direct {v10, v12}, Lorg/restlet/data/ReferenceList;-><init>(I)V

    .line 710
    .local v10, "result":Lorg/restlet/data/ReferenceList;
    const/4 v12, 0x0

    :try_start_0
    iput-object v12, p0, Lorg/restlet/engine/local/DirectoryServerResource;->uniqueReference:Lorg/restlet/data/Reference;

    .line 713
    iget-object v12, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    sget-object v13, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual {p0, v12, v13}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;Lorg/restlet/data/MediaType;)Lorg/restlet/Response;

    move-result-object v1

    .line 715
    .local v1, "contextResponse":Lorg/restlet/Response;
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 718
    sget-object v12, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v13

    invoke-virtual {v13}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 720
    new-instance v8, Lorg/restlet/data/ReferenceList;

    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/restlet/data/ReferenceList;-><init>(Lorg/restlet/representation/Representation;)V

    .line 728
    .local v8, "listVariants":Lorg/restlet/data/ReferenceList;
    invoke-virtual {v8}, Lorg/restlet/data/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/restlet/data/Reference;

    .line 729
    .local v9, "ref":Lorg/restlet/data/Reference;
    invoke-virtual {v9}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "entryUri":Ljava/lang/String;
    const/16 v12, 0x2f

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 731
    .local v7, "lastSlashIndex":I
    if-ne v7, v14, :cond_4

    move-object v4, v2

    .line 733
    .local v4, "fullEntryName":Ljava/lang/String;
    :goto_1
    move-object v0, v4

    .line 736
    .local v0, "baseEntryName":Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {v4, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 737
    .local v3, "firstDotIndex":I
    if-eq v3, v14, :cond_1

    .line 738
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_1
    iget-object v12, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 746
    new-instance v11, Lorg/restlet/representation/Variant;

    invoke-direct {v11}, Lorg/restlet/representation/Variant;-><init>()V

    .line 747
    .local v11, "variant":Lorg/restlet/representation/Variant;
    const/4 v12, 0x1

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v13

    invoke-static {v4, v11, v12, v13}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 749
    iget-object v12, p0, Lorg/restlet/engine/local/DirectoryServerResource;->protoVariant:Lorg/restlet/representation/Variant;

    invoke-virtual {v12, v11}, Lorg/restlet/representation/Variant;->includes(Lorg/restlet/representation/Variant;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 750
    invoke-virtual {v10, v9}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_2
    iget-object v12, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseVariant:Lorg/restlet/representation/Variant;

    invoke-virtual {v12, v11}, Lorg/restlet/representation/Variant;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 756
    iput-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->uniqueReference:Lorg/restlet/data/Reference;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 764
    .end local v0    # "baseEntryName":Ljava/lang/String;
    .end local v1    # "contextResponse":Lorg/restlet/Response;
    .end local v2    # "entryUri":Ljava/lang/String;
    .end local v3    # "firstDotIndex":I
    .end local v4    # "fullEntryName":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "lastSlashIndex":I
    .end local v8    # "listVariants":Lorg/restlet/data/ReferenceList;
    .end local v9    # "ref":Lorg/restlet/data/Reference;
    .end local v11    # "variant":Lorg/restlet/representation/Variant;
    :catch_0
    move-exception v6

    .line 765
    .local v6, "ioe":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "Unable to get resource variants"

    invoke-virtual {v12, v13, v14, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-object v10

    .line 731
    .restart local v1    # "contextResponse":Lorg/restlet/Response;
    .restart local v2    # "entryUri":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "lastSlashIndex":I
    .restart local v8    # "listVariants":Lorg/restlet/data/ReferenceList;
    .restart local v9    # "ref":Lorg/restlet/data/Reference;
    :cond_4
    add-int/lit8 v12, v7, 0x1

    :try_start_1
    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 761
    .end local v2    # "entryUri":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "lastSlashIndex":I
    .end local v8    # "listVariants":Lorg/restlet/data/ReferenceList;
    .end local v9    # "ref":Lorg/restlet/data/Reference;
    :cond_5
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/representation/Representation;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public delete()Lorg/restlet/representation/Representation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v3}, Lorg/restlet/resource/Directory;->isModifiable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    new-instance v0, Lorg/restlet/Request;

    sget-object v3, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    iget-object v4, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 131
    .local v0, "contextRequest":Lorg/restlet/Request;
    new-instance v1, Lorg/restlet/Response;

    invoke-direct {v1, v0}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 133
    .local v1, "contextResponse":Lorg/restlet/Response;
    iget-boolean v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->indexTarget:Z

    if-nez v3, :cond_0

    .line 134
    iget-object v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/restlet/Request;->setResourceRef(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 157
    :goto_0
    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;)V

    .line 163
    .end local v0    # "contextRequest":Lorg/restlet/Request;
    .end local v1    # "contextResponse":Lorg/restlet/Response;
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 139
    .restart local v0    # "contextRequest":Lorg/restlet/Request;
    .restart local v1    # "contextResponse":Lorg/restlet/Response;
    :cond_0
    invoke-direct {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getVariantsReferences()Lorg/restlet/data/ReferenceList;

    move-result-object v2

    .line 140
    .local v2, "references":Lorg/restlet/data/ReferenceList;
    invoke-virtual {v2}, Lorg/restlet/data/ReferenceList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    iget-object v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->uniqueReference:Lorg/restlet/data/Reference;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->uniqueReference:Lorg/restlet/data/Reference;

    invoke-virtual {v0, v3}, Lorg/restlet/Request;->setResourceRef(Lorg/restlet/data/Reference;)V

    .line 143
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Lorg/restlet/data/Status;

    sget-object v4, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    const-string v5, "Unable to process properly the request. Several variants exist but none of them suits precisely. "

    invoke-direct {v3, v4, v5}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 153
    :cond_2
    sget-object v3, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {v1, v3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 159
    .end local v0    # "contextRequest":Lorg/restlet/Request;
    .end local v1    # "contextResponse":Lorg/restlet/Response;
    .end local v2    # "references":Lorg/restlet/data/ReferenceList;
    :cond_3
    sget-object v3, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    const-string v4, "The directory is not modifiable."

    invoke-virtual {p0, v3, v4}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public doInit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getRequestAttributes()Ljava/util/Map;

    move-result-object v5

    const-string v8, "org.restlet.directory"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/resource/Directory;

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    .line 193
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/restlet/data/Reference;->getRemainingPart(ZZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    .line 194
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->isNegotiatingContent()Z

    move-result v5

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->setNegotiated(Z)V

    .line 197
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getApplication()Lorg/restlet/Application;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getApplication()Lorg/restlet/Application;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Application;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/service/TunnelService;->isExtensionsTunnel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    .line 201
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    if-eqz v5, :cond_0

    .line 202
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/restlet/data/Reference;->setBaseRef(Lorg/restlet/data/Reference;)V

    .line 203
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getRemainingPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    .line 214
    :cond_1
    new-instance v5, Lorg/restlet/data/Reference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v9}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->normalize()Lorg/restlet/data/Reference;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v8}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 222
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v5

    if-nez v5, :cond_4

    .line 223
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No client dispatcher is available on the context. Can\'t get the target URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 400
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converted target URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Converted base name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 405
    return-void

    .line 228
    :cond_4
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;

    move-result-object v0

    .line 230
    .local v0, "contextResponse":Lorg/restlet/Response;
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 234
    sget-object v5, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 236
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    .line 237
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    .line 238
    new-instance v5, Lorg/restlet/data/ReferenceList;

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/restlet/data/ReferenceList;-><init>(Lorg/restlet/representation/Representation;)V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    .line 241
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryRedirection:Z

    .line 246
    :cond_5
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    .line 252
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    .line 254
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    .line 256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 257
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->indexTarget:Z

    .line 324
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->isNegotiated()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    if-eqz v5, :cond_8

    .line 326
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->getRemainingPart()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    .line 330
    new-instance v5, Lorg/restlet/data/Reference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v9}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->normalize()Lorg/restlet/data/Reference;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 333
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v8}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 337
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getRootRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 341
    :cond_8
    iget-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/Method;->isSafe()Z

    move-result v5

    if-nez v5, :cond_d

    .line 345
    :cond_9
    iget-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    if-nez v5, :cond_a

    .line 346
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 347
    .local v3, "lastSlashIndex":I
    if-ne v3, v11, :cond_12

    .line 348
    const-string v5, ""

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 349
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    .line 357
    :goto_2
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    if-eqz v5, :cond_a

    sget-object v5, Lorg/restlet/data/MediaType;->TEXT_URI_LIST:Lorg/restlet/data/MediaType;

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 362
    new-instance v5, Lorg/restlet/data/ReferenceList;

    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/restlet/data/ReferenceList;-><init>(Lorg/restlet/representation/Representation;)V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    .line 367
    .end local v3    # "lastSlashIndex":I
    :cond_a
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 369
    new-instance v5, Lorg/restlet/representation/Variant;

    invoke-direct {v5}, Lorg/restlet/representation/Variant;-><init>()V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseVariant:Lorg/restlet/representation/Variant;

    .line 370
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseVariant:Lorg/restlet/representation/Variant;

    const/4 v9, 0x1

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v10

    invoke-static {v5, v8, v9, v10}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 372
    new-instance v5, Lorg/restlet/representation/Variant;

    invoke-direct {v5}, Lorg/restlet/representation/Variant;-><init>()V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->protoVariant:Lorg/restlet/representation/Variant;

    .line 373
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->protoVariant:Lorg/restlet/representation/Variant;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v10

    invoke-static {v5, v8, v9, v10}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 377
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v8

    invoke-static {v5, v8}, Lorg/restlet/engine/local/Entity;->getBaseName(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    .line 382
    :cond_b
    sget-object v5, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getVariants(Lorg/restlet/data/Method;)Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 384
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->setExisting(Z)V

    .line 389
    .end local v4    # "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_d
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->isExisting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->isDeeplyAccessible()Z

    move-result v5

    if-nez v5, :cond_3

    .line 391
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, "index":I
    if-eq v1, v11, :cond_3

    .line 393
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 394
    if-ne v1, v11, :cond_13

    move v5, v6

    :goto_3
    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->setExisting(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 402
    .end local v0    # "contextResponse":Lorg/restlet/Response;
    .end local v1    # "index":I
    :catch_0
    move-exception v2

    .line 403
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v5, Lorg/restlet/resource/ResourceException;

    invoke-direct {v5, v2}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 259
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "contextResponse":Lorg/restlet/Response;
    :cond_e
    :try_start_1
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 260
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    goto/16 :goto_1

    .line 267
    :cond_f
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    .line 268
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    .line 269
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    goto/16 :goto_1

    .line 272
    :cond_10
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    .line 273
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    .line 277
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 280
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 282
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 283
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 288
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 291
    new-instance v5, Lorg/restlet/data/ReferenceList;

    invoke-direct {v5}, Lorg/restlet/data/ReferenceList;-><init>()V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    .line 292
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    new-instance v8, Lorg/restlet/data/Reference;

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->indexTarget:Z

    goto/16 :goto_1

    .line 301
    :cond_11
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/resource/Directory;->getIndexName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    .line 309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 311
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    .line 312
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryRedirection:Z

    .line 313
    new-instance v5, Lorg/restlet/data/ReferenceList;

    invoke-direct {v5}, Lorg/restlet/data/ReferenceList;-><init>()V

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    .line 314
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    new-instance v8, Lorg/restlet/data/Reference;

    iget-object v9, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->indexTarget:Z

    goto/16 :goto_1

    .line 351
    .restart local v3    # "lastSlashIndex":I
    :cond_12
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    .line 353
    iget-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .end local v3    # "lastSlashIndex":I
    .restart local v1    # "index":I
    :cond_13
    move v5, v7

    .line 394
    goto/16 :goto_3
.end method

.method protected get()Lorg/restlet/representation/Representation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "result":Lorg/restlet/representation/Representation;
    sget-object v5, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->getVariants(Lorg/restlet/data/Method;)Ljava/util/List;

    move-result-object v4

    .line 414
    .local v4, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v5

    sget-object v6, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {v5, v6}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 443
    :goto_0
    return-object v1

    .line 418
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 419
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lorg/restlet/representation/Representation;
    check-cast v1, Lorg/restlet/representation/Representation;

    .restart local v1    # "result":Lorg/restlet/representation/Representation;
    goto :goto_0

    .line 421
    :cond_2
    new-instance v3, Lorg/restlet/data/ReferenceList;

    invoke-direct {v3}, Lorg/restlet/data/ReferenceList;-><init>()V

    .line 423
    .local v3, "variantRefs":Lorg/restlet/data/ReferenceList;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/representation/Variant;

    .line 424
    .local v2, "variant":Lorg/restlet/representation/Variant;
    invoke-virtual {v2}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 425
    invoke-virtual {v2}, Lorg/restlet/representation/Variant;->getLocationRef()Lorg/restlet/data/Reference;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "A resource with multiple variants should provide a location for each variant when content negotiation is turned off"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 433
    .end local v2    # "variant":Lorg/restlet/representation/Variant;
    :cond_4
    invoke-virtual {v3}, Lorg/restlet/data/ReferenceList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 435
    sget-object v5, Lorg/restlet/data/Status;->REDIRECTION_MULTIPLE_CHOICES:Lorg/restlet/data/Status;

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;)V

    .line 436
    invoke-virtual {v3}, Lorg/restlet/data/ReferenceList;->getTextRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 438
    :cond_5
    sget-object v5, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p0, v5}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method protected getClientDispatcher()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/resource/Directory;->getContext()Lorg/restlet/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/resource/Directory;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    goto :goto_0
.end method

.method public getDirectory()Lorg/restlet/resource/Directory;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    return-object v0
.end method

.method protected getDirectoryContent()Lorg/restlet/data/ReferenceList;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    return-object v0
.end method

.method public getDirectoryUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryUri:Ljava/lang/String;

    return-object v0
.end method

.method protected getRepresentation(Ljava/lang/String;Lorg/restlet/data/MediaType;)Lorg/restlet/Response;
    .locals 4
    .param p1, "resourceUri"    # Ljava/lang/String;
    .param p2, "acceptedMediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 518
    if-nez p2, :cond_0

    .line 519
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v1

    new-instance v2, Lorg/restlet/Request;

    sget-object v3, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {v2, v3, p1}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v1

    .line 526
    :goto_0
    return-object v1

    .line 523
    :cond_0
    new-instance v0, Lorg/restlet/Request;

    sget-object v1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {v0, v1, p1}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 524
    .local v0, "request":Lorg/restlet/Request;
    invoke-virtual {v0}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/restlet/data/Preference;

    invoke-direct {v2, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/local/DirectoryServerResource;->getVariants(Lorg/restlet/data/Method;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getVariants(Lorg/restlet/data/Method;)Ljava/util/List;
    .locals 20
    .param p1, "method"    # Lorg/restlet/data/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/Method;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    const/4 v11, 0x0

    .line 585
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    sget-object v17, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    sget-object v17, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 586
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->variantsGet:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 587
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/restlet/engine/local/DirectoryServerResource;->variantsGet:Ljava/util/List;

    .line 697
    :cond_1
    :goto_0
    return-object v11

    .line 589
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Getting variants for: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getTargetUri()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v17

    if-eqz v17, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v17

    if-eqz v17, :cond_c

    .line 595
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentationsComparator()Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 600
    .local v12, "resultSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/restlet/representation/Representation;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Reference;->getBaseRef()Lorg/restlet/data/Reference;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 603
    .local v2, "baseRef":Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 604
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 609
    .local v7, "lastIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    .line 610
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->relativePart:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectoryUri()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v13

    .line 615
    .local v13, "rootLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->baseName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 617
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getVariantsReferences()Lorg/restlet/data/ReferenceList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/ReferenceList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/restlet/data/Reference;

    .line 619
    .local v9, "ref":Lorg/restlet/data/Reference;
    invoke-virtual {v9}, Lorg/restlet/data/Reference;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/restlet/engine/local/DirectoryServerResource;->getRepresentation(Ljava/lang/String;)Lorg/restlet/Response;

    move-result-object v3

    .line 621
    .local v3, "contextResponse":Lorg/restlet/Response;
    invoke-virtual {v3}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v3}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 623
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v10

    .line 628
    .local v10, "rep":Lorg/restlet/representation/Representation;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 629
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/restlet/representation/Representation;->setLocationRef(Ljava/lang/String;)V

    .line 634
    :goto_2
    invoke-interface {v12, v10}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 631
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/restlet/representation/Representation;->setLocationRef(Ljava/lang/String;)V

    goto :goto_2

    .line 639
    .end local v3    # "contextResponse":Lorg/restlet/Response;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "ref":Lorg/restlet/data/Reference;
    .end local v10    # "rep":Lorg/restlet/representation/Representation;
    :cond_7
    invoke-interface {v12}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_8

    .line 640
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 643
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_8
    invoke-interface {v12}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/resource/Directory;->isListingAllowed()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 646
    new-instance v15, Lorg/restlet/data/ReferenceList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/data/ReferenceList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v0}, Lorg/restlet/data/ReferenceList;-><init>(I)V

    .line 649
    .local v15, "userList":Lorg/restlet/data/ReferenceList;
    invoke-virtual {v15, v2}, Lorg/restlet/data/ReferenceList;->setIdentifier(Ljava/lang/String;)V

    .line 651
    new-instance v14, Ljava/util/TreeSet;

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/resource/Directory;->getComparator()Ljava/util/Comparator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 653
    .local v14, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/restlet/data/Reference;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryContent:Lorg/restlet/data/ReferenceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 655
    invoke-interface {v14}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/restlet/data/Reference;

    .line 656
    .restart local v9    # "ref":Lorg/restlet/data/Reference;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lorg/restlet/data/Reference;->toString(ZZ)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "filePart":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v5, "filePath":Ljava/lang/StringBuilder;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 661
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/String;)Z

    goto :goto_3

    .line 666
    .end local v4    # "filePart":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/StringBuilder;
    .end local v9    # "ref":Lorg/restlet/data/Reference;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/restlet/resource/Directory;->getIndexVariants(Lorg/restlet/data/ReferenceList;)Ljava/util/List;

    move-result-object v8

    .line 668
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/restlet/representation/Variant;

    .line 669
    .local v16, "variant":Lorg/restlet/representation/Variant;
    if-nez v11, :cond_b

    .line 670
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getDirectory()Lorg/restlet/resource/Directory;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/restlet/resource/Directory;->getIndexRepresentation(Lorg/restlet/representation/Variant;Lorg/restlet/data/ReferenceList;)Lorg/restlet/representation/Representation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 680
    .end local v2    # "baseRef":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lastIndex":I
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    .end local v12    # "resultSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/restlet/representation/Representation;>;"
    .end local v13    # "rootLength":I
    .end local v14    # "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/restlet/data/Reference;>;"
    .end local v15    # "userList":Lorg/restlet/data/ReferenceList;
    .end local v16    # "variant":Lorg/restlet/representation/Variant;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 682
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/restlet/Request;->getOriginalRef()Lorg/restlet/data/Reference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 689
    :goto_5
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_d
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/restlet/engine/local/DirectoryServerResource;->variantsGet:Ljava/util/List;

    goto/16 :goto_0

    .line 686
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/local/DirectoryServerResource;->fileContent:Lorg/restlet/representation/Representation;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    goto :goto_5
.end method

.method public handle()Lorg/restlet/representation/Representation;
    .locals 3

    .prologue
    .line 774
    const/4 v0, 0x0

    .line 776
    .local v0, "result":Lorg/restlet/representation/Representation;
    iget-boolean v1, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryRedirection:Z

    if-eqz v1, :cond_3

    .line 777
    iget-object v1, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    if-eqz v1, :cond_1

    .line 778
    iget-object v1, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/local/DirectoryServerResource;->redirectSeeOther(Ljava/lang/String;)V

    .line 796
    :goto_0
    return-object v0

    .line 782
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/restlet/engine/local/DirectoryServerResource;->originalRef:Lorg/restlet/data/Reference;

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/local/DirectoryServerResource;->redirectSeeOther(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/local/DirectoryServerResource;->redirectSeeOther(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getReference()Lorg/restlet/data/Reference;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/restlet/engine/local/DirectoryServerResource;->redirectSeeOther(Ljava/lang/String;)V

    goto :goto_0

    .line 793
    :cond_3
    invoke-super {p0}, Lorg/restlet/resource/ServerResource;->handle()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_0
.end method

.method public isDirectoryTarget()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directoryTarget:Z

    return v0
.end method

.method public isFileTarget()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lorg/restlet/engine/local/DirectoryServerResource;->fileTarget:Z

    return v0
.end method

.method public put(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 4
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 819
    iget-object v2, p0, Lorg/restlet/engine/local/DirectoryServerResource;->directory:Lorg/restlet/resource/Directory;

    invoke-virtual {v2}, Lorg/restlet/resource/Directory;->isModifiable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    new-instance v0, Lorg/restlet/Request;

    sget-object v2, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    iget-object v3, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    .line 825
    .local v0, "contextRequest":Lorg/restlet/Request;
    invoke-virtual {v0}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getRanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 826
    invoke-virtual {v0, p1}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 827
    new-instance v1, Lorg/restlet/Response;

    invoke-direct {v1, v0}, Lorg/restlet/Response;-><init>(Lorg/restlet/Request;)V

    .line 828
    .local v1, "contextResponse":Lorg/restlet/Response;
    iget-object v2, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/restlet/Request;->setResourceRef(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0}, Lorg/restlet/engine/local/DirectoryServerResource;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;Lorg/restlet/Response;)V

    .line 830
    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;)V

    .line 836
    .end local v0    # "contextRequest":Lorg/restlet/Request;
    .end local v1    # "contextResponse":Lorg/restlet/Response;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 832
    :cond_0
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    const-string v3, "The directory is not modifiable."

    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/local/DirectoryServerResource;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTargetUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 846
    iput-object p1, p0, Lorg/restlet/engine/local/DirectoryServerResource;->targetUri:Ljava/lang/String;

    .line 847
    return-void
.end method
