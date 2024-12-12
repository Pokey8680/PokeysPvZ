.class public Lorg/restlet/engine/local/FileClientHelper;
.super Lorg/restlet/engine/local/EntityClientHelper;
.source "FileClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lorg/restlet/engine/local/EntityClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 108
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private checkMetadataConsistency(Ljava/lang/String;Lorg/restlet/representation/Representation;)Z
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "representation"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 146
    const/4 v0, 0x1

    .line 148
    .local v0, "result":Z
    if-eqz p2, :cond_2

    .line 149
    new-instance v1, Lorg/restlet/representation/Variant;

    invoke-direct {v1}, Lorg/restlet/representation/Variant;-><init>()V

    .line 150
    .local v1, "var":Lorg/restlet/representation/Variant;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 153
    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_0
    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v2

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 167
    :cond_1
    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getEncodings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    const/4 v0, 0x0

    .line 174
    .end local v1    # "var":Lorg/restlet/representation/Variant;
    :cond_2
    return v0
.end method

.method private updateFileExtension(Ljava/lang/StringBuilder;Lorg/restlet/data/Metadata;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 687
    const/4 v1, 0x1

    .line 689
    .local v1, "defaultMetadata":Z
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 690
    instance-of v6, p2, Lorg/restlet/data/Language;

    if-eqz v6, :cond_2

    move-object v4, p2

    .line 691
    check-cast v4, Lorg/restlet/data/Language;

    .line 692
    .local v4, "language":Lorg/restlet/data/Language;
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/service/MetadataService;->getDefaultLanguage()Lorg/restlet/data/Language;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/restlet/data/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 710
    .end local v4    # "language":Lorg/restlet/data/Language;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 711
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/restlet/service/MetadataService;->getExtension(Lorg/restlet/data/Metadata;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "extension":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .end local v3    # "extension":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 694
    :cond_2
    instance-of v6, p2, Lorg/restlet/data/MediaType;

    if-eqz v6, :cond_3

    move-object v5, p2

    .line 695
    check-cast v5, Lorg/restlet/data/MediaType;

    .line 696
    .local v5, "mediaType":Lorg/restlet/data/MediaType;
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 698
    goto :goto_0

    .end local v5    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_3
    instance-of v6, p2, Lorg/restlet/data/CharacterSet;

    if-eqz v6, :cond_4

    move-object v0, p2

    .line 699
    check-cast v0, Lorg/restlet/data/CharacterSet;

    .line 700
    .local v0, "characterSet":Lorg/restlet/data/CharacterSet;
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/service/MetadataService;->getDefaultCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/restlet/data/CharacterSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 702
    goto :goto_0

    .end local v0    # "characterSet":Lorg/restlet/data/CharacterSet;
    :cond_4
    instance-of v6, p2, Lorg/restlet/data/Encoding;

    if-eqz v6, :cond_0

    move-object v2, p2

    .line 703
    check-cast v2, Lorg/restlet/data/Encoding;

    .line 704
    .local v2, "encoding":Lorg/restlet/data/Encoding;
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/service/MetadataService;->getDefaultEncoding()Lorg/restlet/data/Encoding;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/restlet/data/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 716
    .end local v2    # "encoding":Lorg/restlet/data/Encoding;
    .restart local v3    # "extension":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Lorg/restlet/data/Metadata;->getParent()Lorg/restlet/data/Metadata;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 717
    invoke-virtual {p2}, Lorg/restlet/data/Metadata;->getParent()Lorg/restlet/data/Metadata;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lorg/restlet/engine/local/FileClientHelper;->updateFileExtension(Ljava/lang/StringBuilder;Lorg/restlet/data/Metadata;)V

    goto :goto_1
.end method


# virtual methods
.method protected checkExtensionsConsistency(Ljava/io/File;)Z
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 120
    const/4 v1, 0x1

    .line 122
    .local v1, "knownExtension":Z
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/restlet/engine/local/Entity;->getExtensions(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;

    move-result-object v2

    .line 124
    .local v2, "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 129
    :cond_1
    return v1
.end method

.method public getEntity(Ljava/lang/String;)Lorg/restlet/engine/local/Entity;
    .locals 3
    .param p1, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Lorg/restlet/engine/local/FileEntity;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lorg/restlet/data/LocalReference;->localizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/local/FileEntity;-><init>(Ljava/io/File;Lorg/restlet/service/MetadataService;)V

    return-object v0
.end method

.method public getTemporaryExtension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "temporaryExtension"

    const-string v2, "tmp"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleFile(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v0, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    invoke-virtual {p0, p3}, Lorg/restlet/engine/local/FileClientHelper;->getEntity(Ljava/lang/String;)Lorg/restlet/engine/local/Entity;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/engine/local/FileClientHelper;->handleEntityGet(Lorg/restlet/Request;Lorg/restlet/Response;Lorg/restlet/engine/local/Entity;)V

    .line 226
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/restlet/engine/local/FileClientHelper;->handleFilePut(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 217
    :cond_2
    sget-object v0, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lorg/restlet/engine/local/FileClientHelper;->handleFileDelete(Lorg/restlet/Response;Ljava/io/File;)V

    goto :goto_0

    .line 220
    :cond_3
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 221
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected handleFileDelete(Lorg/restlet/Response;Ljava/io/File;)V
    .locals 2
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 237
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 239
    invoke-static {p2}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p1, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 257
    :goto_0
    return-void

    .line 242
    :cond_0
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v1, "Couldn\'t delete the directory"

    invoke-virtual {p1, v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    const-string v1, "Couldn\'t delete the non-empty directory"

    invoke-virtual {p1, v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {p2}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p1, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 253
    :cond_3
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v1, "Couldn\'t delete the file"

    invoke-virtual {p1, v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleFilePut(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;Ljava/io/File;)V
    .locals 42
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 274
    const/16 v22, 0x0

    .line 276
    .local v22, "isDirectory":Z
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_1

    .line 277
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->isDirectory()Z

    move-result v37

    if-eqz v37, :cond_3

    .line 278
    const/16 v22, 0x1

    .line 279
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    const-string v39, "Can\'t put a new representation of a directory"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v37, "/"

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    if-eqz v37, :cond_3

    .line 286
    const/16 v22, 0x1

    .line 289
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->mkdirs()Z

    move-result v37

    if-eqz v37, :cond_2

    .line 290
    sget-object v37, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new directory"

    invoke-virtual/range {v37 .. v39}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 294
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to create the new directory"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 302
    :cond_3
    if-nez v22, :cond_0

    .line 305
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_4

    const/16 v27, 0x1

    .line 307
    .local v27, "partialPut":Z
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/local/FileClientHelper;->checkMetadataConsistency(Ljava/lang/String;Lorg/restlet/representation/Representation;)Z

    move-result v37

    if-nez v37, :cond_5

    .line 309
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v39, "The metadata are not consistent with the URI"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 305
    .end local v27    # "partialPut":Z
    :cond_4
    const/16 v27, 0x0

    goto :goto_1

    .line 317
    .restart local v27    # "partialPut":Z
    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lorg/restlet/engine/local/Entity;->getBaseName(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "baseName":Ljava/lang/String;
    new-instance v15, Lorg/restlet/engine/local/FileClientHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lorg/restlet/engine/local/FileClientHelper$1;-><init>(Lorg/restlet/engine/local/FileClientHelper;Ljava/lang/String;)V

    .line 329
    .local v15, "filter":Ljava/io/FileFilter;
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v14

    .line 330
    .local v14, "files":[Ljava/io/File;
    const/16 v34, 0x0

    .line 331
    .local v34, "uniqueVariant":Ljava/io/File;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v36, "variantsList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v14, :cond_7

    array-length v0, v14

    move/from16 v37, v0

    if-lez v37, :cond_7

    .line 339
    new-instance v35, Lorg/restlet/representation/Variant;

    invoke-direct/range {v35 .. v35}, Lorg/restlet/representation/Variant;-><init>()V

    .line 340
    .local v35, "variant":Lorg/restlet/representation/Variant;
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v39

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lorg/restlet/engine/local/Entity;->getExtensions(Lorg/restlet/representation/Variant;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;

    move-result-object v11

    .line 345
    .local v11, "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v4, v14

    .local v4, "arr$":[Ljava/io/File;
    array-length v0, v4

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    aget-object v8, v4, v19

    .line 346
    .local v8, "entry":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Lorg/restlet/engine/local/Entity;->getExtensions(Ljava/lang/String;Lorg/restlet/service/MetadataService;)Ljava/util/Collection;

    move-result-object v9

    .line 349
    .local v9, "entryExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v9, v11}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 350
    move-object/from16 v0, v36

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {v11, v9}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v37

    if-eqz v37, :cond_6

    .line 354
    move-object/from16 v34, v8

    .line 345
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 360
    .end local v4    # "arr$":[Ljava/io/File;
    .end local v8    # "entry":Ljava/io/File;
    .end local v9    # "entryExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v11    # "extensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v19    # "i$":I
    .end local v24    # "len$":I
    .end local v35    # "variant":Lorg/restlet/representation/Variant;
    :cond_7
    if-eqz v34, :cond_8

    .line 361
    move-object/from16 p4, v34

    .line 399
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/restlet/engine/local/FileClientHelper;->checkExtensionsConsistency(Ljava/io/File;)Z

    move-result v37

    if-nez v37, :cond_c

    .line 400
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to process properly the URI. At least one extension is not known by the server."

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_0

    .line 363
    :cond_8
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_9

    .line 367
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    const-string v39, "Unable to process properly the request. Several variants exist but none of them suits precisely."

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_0

    .line 375
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v40

    invoke-static/range {v37 .. v40}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 379
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .local v13, "fileName":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/restlet/data/Language;

    .line 382
    .local v23, "language":Lorg/restlet/data/Language;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v13, v1}, Lorg/restlet/engine/local/FileClientHelper;->updateFileExtension(Ljava/lang/StringBuilder;Lorg/restlet/data/Metadata;)V

    goto :goto_4

    .line 385
    .end local v23    # "language":Lorg/restlet/data/Language;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/data/Encoding;

    .line 386
    .local v7, "encoding":Lorg/restlet/data/Encoding;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lorg/restlet/engine/local/FileClientHelper;->updateFileExtension(Ljava/lang/StringBuilder;Lorg/restlet/data/Metadata;)V

    goto :goto_5

    .line 391
    .end local v7    # "encoding":Lorg/restlet/data/Encoding;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v13, v1}, Lorg/restlet/engine/local/FileClientHelper;->updateFileExtension(Ljava/lang/StringBuilder;Lorg/restlet/data/Metadata;)V

    .line 394
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v37

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local p4    # "file":Ljava/io/File;
    .local v12, "file":Ljava/io/File;
    move-object/from16 p4, v12

    .end local v12    # "file":Ljava/io/File;
    .restart local p4    # "file":Ljava/io/File;
    goto/16 :goto_3

    .line 406
    .end local v13    # "fileName":Ljava/lang/StringBuilder;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_c
    const/16 v32, 0x0

    .line 407
    .local v32, "tmp":Ljava/io/File;
    const/4 v10, 0x0

    .line 409
    .local v10, "error":Z
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_1d

    .line 413
    if-eqz v27, :cond_15

    .line 414
    const/16 v28, 0x0

    .line 420
    .local v28, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v33, Ljava/io/File;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getTemporaryExtension()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1a
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 423
    .end local v32    # "tmp":Ljava/io/File;
    .local v33, "tmp":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v37

    const/16 v38, 0x0

    invoke-interface/range {v37 .. v38}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/restlet/data/Range;

    .line 425
    .local v30, "range":Lorg/restlet/data/Range;
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->isResumeUpload()Z

    move-result v37

    if-nez v37, :cond_d

    .line 426
    invoke-static/range {v33 .. v33}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    .line 429
    :cond_d
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v37

    if-nez v37, :cond_e

    .line 431
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 432
    .local v20, "in":Ljava/io/InputStream;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 433
    .local v25, "out":Ljava/io/OutputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 434
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->flush()V

    .line 435
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 438
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v25    # "out":Ljava/io/OutputStream;
    :cond_e
    new-instance v29, Ljava/io/RandomAccessFile;

    const-string v37, "rwd"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 441
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .local v29, "raf":Ljava/io/RandomAccessFile;
    :try_start_2
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v38

    const-wide/16 v40, -0x1

    cmp-long v37, v38, v40

    if-nez v37, :cond_13

    .line 442
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v38

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v40

    cmp-long v37, v38, v40

    if-gtz v37, :cond_12

    .line 443
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v38

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 452
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 453
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 464
    :cond_f
    if-eqz v29, :cond_10

    .line 465
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_10
    move-object/from16 v28, v29

    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v32, v33

    .line 505
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .end local v30    # "range":Lorg/restlet/data/Range;
    .end local v33    # "tmp":Ljava/io/File;
    .restart local v32    # "tmp":Ljava/io/File;
    :cond_11
    :goto_7
    if-eqz v10, :cond_18

    .line 506
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->isResumeUpload()Z

    move-result v37

    if-nez v37, :cond_0

    .line 507
    invoke-static/range {v32 .. v32}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 445
    .end local v32    # "tmp":Ljava/io/File;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v30    # "range":Lorg/restlet/data/Range;
    .restart local v33    # "tmp":Ljava/io/File;
    :cond_12
    :try_start_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v38

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v40

    sub-long v38, v38, v40

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 455
    :catch_0
    move-exception v21

    move-object/from16 v28, v29

    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v32, v33

    .line 456
    .end local v30    # "range":Lorg/restlet/data/Range;
    .end local v33    # "tmp":Ljava/io/File;
    .local v21, "ioe":Ljava/io/IOException;
    .restart local v32    # "tmp":Ljava/io/File;
    :goto_8
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to create a temporary file"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 461
    const/4 v10, 0x1

    .line 464
    if-eqz v28, :cond_11

    .line 465
    :try_start_6
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_7

    .line 467
    :catch_1
    move-exception v21

    .line 468
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 472
    const/4 v10, 0x1

    .line 474
    goto :goto_7

    .line 448
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .end local v32    # "tmp":Ljava/io/File;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v30    # "range":Lorg/restlet/data/Range;
    .restart local v33    # "tmp":Ljava/io/File;
    :cond_13
    :try_start_7
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v38

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_6

    .line 463
    :catchall_0
    move-exception v37

    move-object/from16 v28, v29

    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v32, v33

    .line 464
    .end local v30    # "range":Lorg/restlet/data/Range;
    .end local v33    # "tmp":Ljava/io/File;
    .restart local v32    # "tmp":Ljava/io/File;
    :goto_9
    if-eqz v28, :cond_14

    .line 465
    :try_start_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 473
    :cond_14
    :goto_a
    throw v37

    .line 467
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .end local v32    # "tmp":Ljava/io/File;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v30    # "range":Lorg/restlet/data/Range;
    .restart local v33    # "tmp":Ljava/io/File;
    :catch_2
    move-exception v21

    .line 468
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 472
    const/4 v10, 0x1

    move-object/from16 v28, v29

    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v32, v33

    .line 474
    .end local v33    # "tmp":Ljava/io/File;
    .restart local v32    # "tmp":Ljava/io/File;
    goto/16 :goto_7

    .line 467
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v30    # "range":Lorg/restlet/data/Range;
    :catch_3
    move-exception v21

    .line 468
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v38

    sget-object v39, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v40, "Unable to close the temporary file"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 472
    const/4 v10, 0x1

    goto :goto_a

    .line 476
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    :cond_15
    const/16 v17, 0x0

    .line 478
    .local v17, "fos":Ljava/io/FileOutputStream;
    :try_start_9
    const-string v37, "restlet-upload"

    const-string v38, "bin"

    invoke-static/range {v37 .. v38}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v32

    .line 479
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v37

    if-eqz v37, :cond_16

    .line 480
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 481
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v18, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_19
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v17, v18

    .line 492
    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :cond_16
    if-eqz v17, :cond_11

    .line 493
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_7

    .line 495
    :catch_4
    move-exception v21

    .line 496
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 500
    const/4 v10, 0x1

    .line 502
    goto/16 :goto_7

    .line 483
    .end local v21    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v21

    .line 484
    .restart local v21    # "ioe":Ljava/io/IOException;
    :goto_b
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to create a temporary file"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 489
    const/4 v10, 0x1

    .line 492
    if-eqz v17, :cond_11

    .line 493
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_7

    .line 495
    :catch_6
    move-exception v21

    .line 496
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the temporary file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 500
    const/4 v10, 0x1

    .line 502
    goto/16 :goto_7

    .line 491
    .end local v21    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v37

    .line 492
    :goto_c
    if-eqz v17, :cond_17

    .line 493
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 501
    :cond_17
    :goto_d
    throw v37

    .line 495
    :catch_7
    move-exception v21

    .line 496
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v38

    sget-object v39, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v40, "Unable to close the temporary file"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 500
    const/4 v10, 0x1

    goto :goto_d

    .line 514
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "ioe":Ljava/io/IOException;
    :cond_18
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_1c

    invoke-static/range {p4 .. p4}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    move-result v37

    if-eqz v37, :cond_1c

    .line 517
    const/16 v31, 0x0

    .line 518
    .local v31, "renameSuccessful":Z
    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v37

    if-eqz v37, :cond_1a

    .line 519
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    if-nez v37, :cond_19

    .line 520
    sget-object v37, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 525
    :goto_e
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 522
    :cond_19
    sget-object v37, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_e

    .line 531
    :cond_1a
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_1b

    .line 533
    :try_start_f
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 534
    .restart local v20    # "in":Ljava/io/InputStream;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 535
    .restart local v25    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 536
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 537
    const/16 v31, 0x1

    .line 538
    invoke-static/range {v32 .. v32}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 543
    .end local v20    # "in":Ljava/io/InputStream;
    .end local v25    # "out":Ljava/io/OutputStream;
    :cond_1b
    :goto_f
    if-nez v31, :cond_0

    .line 544
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to move the temporary file to replace the existing file"

    invoke-virtual/range {v37 .. v39}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 547
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to move the temporary file to replace the existing file"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto/16 :goto_0

    .line 539
    :catch_8
    move-exception v6

    .line 540
    .local v6, "e":Ljava/lang/Exception;
    const/16 v31, 0x0

    goto :goto_f

    .line 553
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v31    # "renameSuccessful":Z
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to delete the existing file"

    invoke-virtual/range {v37 .. v39}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 555
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to delete the existing file"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 558
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->exists()Z

    move-result v37

    if-eqz v37, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->isResumeUpload()Z

    move-result v37

    if-nez v37, :cond_0

    .line 559
    invoke-static/range {v32 .. v32}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    goto/16 :goto_0

    .line 564
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v26

    .line 566
    .local v26, "parent":Ljava/io/File;
    if-eqz v26, :cond_1e

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v37

    if-nez v37, :cond_1e

    .line 568
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->mkdirs()Z

    move-result v37

    if-nez v37, :cond_1e

    .line 569
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the parent directory"

    invoke-virtual/range {v37 .. v39}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 571
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to create the parent directory"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 578
    :cond_1e
    if-eqz v27, :cond_24

    .line 580
    const/16 v28, 0x0

    .line 582
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    :try_start_10
    new-instance v29, Ljava/io/RandomAccessFile;

    const-string v37, "rwd"

    move-object/from16 v0, v29

    move-object/from16 v1, p4

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_17
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 584
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getRanges()Ljava/util/List;

    move-result-object v37

    const/16 v38, 0x0

    invoke-interface/range {v37 .. v38}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/restlet/data/Range;

    .line 586
    .restart local v30    # "range":Lorg/restlet/data/Range;
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v38

    const-wide/16 v40, -0x1

    cmp-long v37, v38, v40

    if-nez v37, :cond_22

    .line 587
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v38

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v40

    cmp-long v37, v38, v40

    if-gtz v37, :cond_21

    .line 588
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v38

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 596
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->isEntityAvailable()Z

    move-result v37

    if-eqz v37, :cond_1f

    .line 597
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 609
    :cond_1f
    if-eqz v29, :cond_20

    .line 610
    :try_start_12
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    :cond_20
    move-object/from16 v28, v29

    .line 617
    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 590
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    :cond_21
    :try_start_13
    invoke-virtual/range {v29 .. v29}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v38

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getSize()J

    move-result-wide v40

    sub-long v38, v38, v40

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_10

    .line 599
    .end local v30    # "range":Lorg/restlet/data/Range;
    :catch_9
    move-exception v16

    move-object/from16 v28, v29

    .line 600
    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .local v16, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    :goto_11
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 602
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 609
    if-eqz v28, :cond_0

    .line 610
    :try_start_15
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_0

    .line 612
    :catch_a
    move-exception v21

    .line 613
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 593
    .end local v16    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v30    # "range":Lorg/restlet/data/Range;
    :cond_22
    :try_start_16
    invoke-virtual/range {v30 .. v30}, Lorg/restlet/data/Range;->getIndex()J

    move-result-wide v38

    move-object/from16 v0, v29

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto/16 :goto_10

    .line 603
    .end local v30    # "range":Lorg/restlet/data/Range;
    :catch_b
    move-exception v21

    move-object/from16 v28, v29

    .line 604
    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v21    # "ioe":Ljava/io/IOException;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    :goto_12
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 606
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 609
    if-eqz v28, :cond_0

    .line 610
    :try_start_18
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    goto/16 :goto_0

    .line 612
    :catch_c
    move-exception v21

    .line 613
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 612
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v30    # "range":Lorg/restlet/data/Range;
    :catch_d
    move-exception v21

    .line 613
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    move-object/from16 v28, v29

    .line 618
    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_0

    .line 608
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v30    # "range":Lorg/restlet/data/Range;
    :catchall_2
    move-exception v37

    .line 609
    :goto_13
    if-eqz v28, :cond_23

    .line 610
    :try_start_19
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 617
    :cond_23
    :goto_14
    throw v37

    .line 612
    :catch_e
    move-exception v21

    .line 613
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v38

    sget-object v39, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v40, "Unable to close the new file"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 622
    .end local v21    # "ioe":Ljava/io/IOException;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    :cond_24
    const/16 v17, 0x0

    .line 625
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    :try_start_1a
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->createNewFile()Z

    move-result v37

    if-eqz v37, :cond_26

    .line 626
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    if-nez v37, :cond_25

    .line 627
    sget-object v37, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_10
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 651
    :goto_15
    if-eqz v17, :cond_0

    .line 652
    :try_start_1b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_f

    goto/16 :goto_0

    .line 654
    :catch_f
    move-exception v21

    .line 655
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 629
    .end local v21    # "ioe":Ljava/io/IOException;
    :cond_25
    :try_start_1c
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_12
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    .line 630
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 632
    sget-object v37, Lorg/restlet/data/Status;->SUCCESS_CREATED:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_16
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_15
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_15

    .line 635
    :cond_26
    :try_start_1e
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new file"

    invoke-virtual/range {v37 .. v39}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 637
    new-instance v37, Lorg/restlet/data/Status;

    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    const-string v39, "Unable to create the new file"

    invoke-direct/range {v37 .. v39}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_10
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_15

    .line 641
    :catch_10
    move-exception v16

    .line 642
    .restart local v16    # "fnfe":Ljava/io/FileNotFoundException;
    :goto_16
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 651
    if-eqz v17, :cond_0

    .line 652
    :try_start_20
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_11

    goto/16 :goto_0

    .line 654
    :catch_11
    move-exception v21

    .line 655
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 645
    .end local v16    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v21    # "ioe":Ljava/io/IOException;
    :catch_12
    move-exception v21

    .line 646
    .restart local v21    # "ioe":Ljava/io/IOException;
    :goto_17
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to create the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    .line 651
    if-eqz v17, :cond_0

    .line 652
    :try_start_22
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_13

    goto/16 :goto_0

    .line 654
    :catch_13
    move-exception v21

    .line 655
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v37

    sget-object v38, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v39, "Unable to close the new file"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    sget-object v37, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 650
    .end local v21    # "ioe":Ljava/io/IOException;
    :catchall_3
    move-exception v37

    .line 651
    :goto_18
    if-eqz v17, :cond_27

    .line 652
    :try_start_23
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_14

    .line 659
    :cond_27
    :goto_19
    throw v37

    .line 654
    :catch_14
    move-exception v21

    .line 655
    .restart local v21    # "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/FileClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v38

    sget-object v39, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v40, "Unable to close the new file"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    sget-object v38, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_19

    .line 650
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "ioe":Ljava/io/IOException;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_18

    .line 645
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_15
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17

    .line 641
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_16
    move-exception v16

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .line 608
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v29    # "raf":Ljava/io/RandomAccessFile;
    :catchall_5
    move-exception v37

    move-object/from16 v28, v29

    .end local v29    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_13

    .line 603
    :catch_17
    move-exception v21

    goto/16 :goto_12

    .line 599
    :catch_18
    move-exception v16

    goto/16 :goto_11

    .line 491
    .end local v26    # "parent":Ljava/io/File;
    .end local v28    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v37

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 483
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "fos":Ljava/io/FileOutputStream;
    :catch_19
    move-exception v21

    move-object/from16 v17, v18

    .end local v18    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 463
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .restart local v28    # "raf":Ljava/io/RandomAccessFile;
    :catchall_7
    move-exception v37

    goto/16 :goto_9

    .end local v32    # "tmp":Ljava/io/File;
    .restart local v33    # "tmp":Ljava/io/File;
    :catchall_8
    move-exception v37

    move-object/from16 v32, v33

    .end local v33    # "tmp":Ljava/io/File;
    .restart local v32    # "tmp":Ljava/io/File;
    goto/16 :goto_9

    .line 455
    :catch_1a
    move-exception v21

    goto/16 :goto_8

    .end local v32    # "tmp":Ljava/io/File;
    .restart local v33    # "tmp":Ljava/io/File;
    :catch_1b
    move-exception v21

    move-object/from16 v32, v33

    .end local v33    # "tmp":Ljava/io/File;
    .restart local v32    # "tmp":Ljava/io/File;
    goto/16 :goto_8
.end method

.method protected handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
    .locals 4
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 198
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "scheme":Ljava/lang/String;
    sget-object v1, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    invoke-virtual {v1}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lorg/restlet/engine/local/FileClientHelper;->handleFile(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V

    .line 208
    return-void

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not supported by the connector. Only FILE is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isResumeUpload()Z
    .locals 3

    .prologue
    .line 673
    invoke-virtual {p0}, Lorg/restlet/engine/local/FileClientHelper;->getHelpedParameters()Lorg/restlet/util/Series;

    move-result-object v0

    const-string v1, "resumeUpload"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
