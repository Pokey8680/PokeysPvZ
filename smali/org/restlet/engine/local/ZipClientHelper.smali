.class public Lorg/restlet/engine/local/ZipClientHelper;
.super Lorg/restlet/engine/local/LocalClientHelper;
.source "ZipClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/restlet/engine/local/LocalClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 79
    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->ZIP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->JAR:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method private writeEntityStream(Lorg/restlet/representation/Representation;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z
    .locals 4
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "entryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p1, :cond_1

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getModificationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 367
    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 368
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, p2}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 369
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 370
    const/4 v1, 0x1

    .line 375
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :goto_1
    return v1

    .line 365
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    goto :goto_0

    .line 373
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    new-instance v1, Ljava/util/zip/ZipEntry;

    invoke-direct {v1, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 374
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 375
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected handleGet(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/io/File;Ljava/lang/String;Lorg/restlet/service/MetadataService;)V
    .locals 16
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "entryName"    # Ljava/lang/String;
    .param p5, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 146
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 147
    sget-object v13, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 198
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    new-instance v5, Lorg/restlet/engine/local/ZipEntryEntity;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v12, v0, v1}, Lorg/restlet/engine/local/ZipEntryEntity;-><init>(Ljava/util/zip/ZipFile;Ljava/lang/String;Lorg/restlet/service/MetadataService;)V

    .line 160
    .local v5, "entity":Lorg/restlet/engine/local/Entity;
    invoke-virtual {v5}, Lorg/restlet/engine/local/Entity;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 161
    sget-object v13, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 153
    .end local v5    # "entity":Lorg/restlet/engine/local/Entity;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 154
    .local v4, "e":Ljava/lang/Exception;
    sget-object v13, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "entity":Lorg/restlet/engine/local/Entity;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_1
    invoke-virtual {v5}, Lorg/restlet/engine/local/Entity;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 167
    invoke-virtual {v5}, Lorg/restlet/engine/local/Entity;->getChildren()Ljava/util/List;

    move-result-object v3

    .line 168
    .local v3, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    new-instance v10, Lorg/restlet/data/ReferenceList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v13

    invoke-direct {v10, v13}, Lorg/restlet/data/ReferenceList;-><init>(I)V

    .line 169
    .local v10, "rl":Lorg/restlet/data/ReferenceList;
    invoke-static/range {p3 .. p3}, Lorg/restlet/data/LocalReference;->createFileReference(Ljava/io/File;)Lorg/restlet/data/LocalReference;

    move-result-object v13

    invoke-virtual {v13}, Lorg/restlet/data/LocalReference;->toString()Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "fileUri":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v13

    invoke-virtual {v13}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 172
    .local v11, "scheme":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "!/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "baseUri":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/restlet/engine/local/Entity;

    .line 175
    .local v6, "entry":Lorg/restlet/engine/local/Entity;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/restlet/data/ReferenceList;->add(Ljava/lang/String;)Z

    goto :goto_1

    .line 178
    .end local v6    # "entry":Lorg/restlet/engine/local/Entity;
    :cond_2
    invoke-virtual {v10}, Lorg/restlet/data/ReferenceList;->getTextRepresentation()Lorg/restlet/representation/Representation;

    move-result-object v9

    .line 181
    .local v9, "output":Lorg/restlet/representation/Representation;
    :try_start_1
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v2    # "baseUri":Ljava/lang/String;
    .end local v3    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    .end local v7    # "fileUri":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "rl":Lorg/restlet/data/ReferenceList;
    .end local v11    # "scheme":Ljava/lang/String;
    :goto_2
    sget-object v13, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    goto/16 :goto_0

    .line 187
    .end local v9    # "output":Lorg/restlet/representation/Representation;
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ZipClientHelper;->getTimeToLive()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Lorg/restlet/engine/local/Entity;->getRepresentation(Lorg/restlet/data/MediaType;I)Lorg/restlet/representation/Representation;

    move-result-object v9

    .line 189
    .restart local v9    # "output":Lorg/restlet/representation/Representation;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 190
    invoke-virtual {v5}, Lorg/restlet/engine/local/Entity;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ZipClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v15

    invoke-static {v13, v9, v14, v15}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    goto :goto_2

    .line 182
    .restart local v2    # "baseUri":Ljava/lang/String;
    .restart local v3    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/restlet/engine/local/Entity;>;"
    .restart local v7    # "fileUri":Ljava/lang/String;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "rl":Lorg/restlet/data/ReferenceList;
    .restart local v11    # "scheme":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method protected handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
    .locals 9
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v0, "!/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 100
    .local v8, "spi":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "fileUri":Ljava/lang/String;
    add-int/lit8 v0, v8, 0x2

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "entryName":Ljava/lang/String;
    :goto_0
    new-instance v6, Lorg/restlet/data/LocalReference;

    invoke-direct {v6, v7}, Lorg/restlet/data/LocalReference;-><init>(Ljava/lang/String;)V

    .line 109
    .local v6, "fileRef":Lorg/restlet/data/LocalReference;
    sget-object v0, Lorg/restlet/data/Protocol;->FILE:Lorg/restlet/data/Protocol;

    invoke-virtual {v6}, Lorg/restlet/data/LocalReference;->getSchemeProtocol()Lorg/restlet/data/Protocol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Protocol;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {v6}, Lorg/restlet/data/LocalReference;->getFile()Ljava/io/File;

    move-result-object v3

    .line 111
    .local v3, "file":Ljava/io/File;
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

    if-eqz v0, :cond_2

    .line 113
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/local/ZipClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/restlet/engine/local/ZipClientHelper;->handleGet(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/io/File;Ljava/lang/String;Lorg/restlet/service/MetadataService;)V

    .line 127
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    return-void

    .line 104
    .end local v4    # "entryName":Ljava/lang/String;
    .end local v6    # "fileRef":Lorg/restlet/data/LocalReference;
    .end local v7    # "fileUri":Ljava/lang/String;
    :cond_1
    move-object v7, p3

    .line 105
    .restart local v7    # "fileUri":Ljava/lang/String;
    const-string v4, ""

    .restart local v4    # "entryName":Ljava/lang/String;
    goto :goto_0

    .line 115
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "fileRef":Lorg/restlet/data/LocalReference;
    :cond_2
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/restlet/engine/local/ZipClientHelper;->handlePut(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_3
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p2, v0}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 119
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_NOT_IMPLEMENTED:Lorg/restlet/data/Status;

    const-string v1, "Only works on local files."

    invoke-virtual {p2, v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected handlePut(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/io/File;Ljava/lang/String;)V
    .locals 22
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "entryName"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v15

    .line 215
    .local v15, "zipExists":Z
    const/16 v18, 0x0

    .line 217
    .local v18, "zipOut":Ljava/util/zip/ZipOutputStream;
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 219
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/representation/Representation;->getDisposition()Lorg/restlet/data/Disposition;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/Disposition;->getFilename()Ljava/lang/String;

    move-result-object p4

    .line 221
    :cond_0
    if-nez p4, :cond_2

    .line 222
    sget-object v20, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v21, "Must specify an entry name."

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    if-nez v15, :cond_5

    const/4 v3, 0x1

    .line 228
    .local v3, "canAppend":Z
    :goto_1
    const-string v20, "/"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    .line 229
    .local v11, "isDirectory":Z
    const/4 v14, 0x0

    .line 231
    .local v14, "wrongReplace":Z
    if-eqz v15, :cond_3

    .line 232
    :try_start_0
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 234
    .local v16, "zipFile":Ljava/util/zip/ZipFile;
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v20

    if-nez v20, :cond_6

    const/16 v20, 0x1

    :goto_2
    and-int v3, v3, v20

    .line 236
    if-eqz v11, :cond_8

    .line 237
    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v20

    if-eqz v20, :cond_7

    const/4 v14, 0x1

    .line 243
    :goto_3
    if-nez v14, :cond_a

    const/16 v20, 0x1

    :goto_4
    and-int v3, v3, v20

    .line 244
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_3
    if-eqz v11, :cond_b

    .line 249
    const/4 v5, 0x0

    .line 254
    .local v5, "entity":Lorg/restlet/representation/Representation;
    :goto_5
    if-eqz v3, :cond_d

    .line 258
    :try_start_1
    new-instance v19, Ljava/util/zip/ZipOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .local v19, "zipOut":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lorg/restlet/engine/local/ZipClientHelper;->writeEntityStream(Lorg/restlet/representation/Representation;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    .line 261
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 266
    if-eqz v19, :cond_4

    .line 267
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 269
    :cond_4
    sget-object v20, Lorg/restlet/data/Status;->SUCCESS_CREATED:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v18, v19

    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_0

    .line 227
    .end local v3    # "canAppend":Z
    .end local v5    # "entity":Lorg/restlet/representation/Representation;
    .end local v11    # "isDirectory":Z
    .end local v14    # "wrongReplace":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 234
    .restart local v3    # "canAppend":Z
    .restart local v11    # "isDirectory":Z
    .restart local v14    # "wrongReplace":Z
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 237
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 240
    :cond_8
    :try_start_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v20

    if-eqz v20, :cond_9

    const/4 v14, 0x1

    :goto_6
    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 243
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 251
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    .restart local v5    # "entity":Lorg/restlet/representation/Representation;
    goto :goto_5

    .line 262
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_5
    sget-object v20, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 266
    if-eqz v18, :cond_1

    .line 267
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 339
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "entity":Lorg/restlet/representation/Representation;
    :catch_1
    move-exception v4

    .line 340
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_8
    sget-object v20, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 266
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "entity":Lorg/restlet/representation/Representation;
    :catchall_0
    move-exception v20

    :goto_9
    if-eqz v18, :cond_c

    .line 267
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_c
    throw v20

    .line 271
    :cond_d
    if-eqz v14, :cond_e

    .line 272
    sget-object v20, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v21, "Directory cannot be replaced by a file or file by a directory."

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 276
    :cond_e
    const/4 v13, 0x0

    .line 277
    .local v13, "writeTo":Ljava/io/File;
    const/16 v16, 0x0

    .line 279
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :try_start_8
    const-string v20, "restlet_zip_"

    const-string v21, "zip"

    invoke-static/range {v20 .. v21}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 280
    new-instance v17, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 281
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_9
    new-instance v19, Ljava/util/zip/ZipOutputStream;

    new-instance v20, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 283
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 285
    .local v6, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v12, 0x0

    .line 286
    .local v12, "replaced":Z
    :goto_a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 287
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 288
    .local v4, "e":Ljava/util/zip/ZipEntry;
    if-nez v12, :cond_f

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lorg/restlet/engine/local/ZipClientHelper;->writeEntityStream(Lorg/restlet/representation/Representation;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    .line 290
    const/4 v12, 0x1

    goto :goto_a

    .line 292
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 293
    new-instance v20, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 295
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_a

    .line 304
    .end local v4    # "e":Ljava/util/zip/ZipEntry;
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "replaced":Z
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    move-object/from16 v18, v19

    .line 305
    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :goto_b
    if-eqz v16, :cond_10

    .line 306
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 308
    :cond_10
    if-eqz v18, :cond_11

    .line 309
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_11
    throw v20
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 298
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v12    # "replaced":Z
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :cond_12
    if-nez v12, :cond_13

    .line 299
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lorg/restlet/engine/local/ZipClientHelper;->writeEntityStream(Lorg/restlet/representation/Representation;Ljava/util/zip/ZipOutputStream;Ljava/lang/String;)Z

    .line 301
    :cond_13
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V

    .line 302
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 305
    if-eqz v17, :cond_14

    .line 306
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 308
    :cond_14
    if-eqz v19, :cond_15

    .line 309
    :try_start_f
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 313
    :cond_15
    invoke-static/range {p3 .. p3}, Lorg/restlet/engine/io/BioUtils;->delete(Ljava/io/File;)Z

    move-result v20

    if-eqz v20, :cond_16

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 314
    :cond_16
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_17

    .line 315
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->createNewFile()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 316
    :cond_17
    const/4 v7, 0x0

    .line 317
    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 319
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 320
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_11
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 323
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :try_start_12
    invoke-static {v8, v10}, Lorg/restlet/engine/io/BioUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 324
    sget-object v20, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 327
    if-eqz v8, :cond_18

    .line 328
    :try_start_13
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 330
    :cond_18
    if-eqz v10, :cond_19

    .line 331
    :try_start_14
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_19
    move-object/from16 v18, v19

    .line 334
    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_0

    .line 308
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v20

    if-eqz v19, :cond_1a

    .line 309
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_1a
    throw v20
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 339
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v12    # "replaced":Z
    .end local v13    # "writeTo":Ljava/io/File;
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v4

    move-object/from16 v18, v19

    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_8

    .line 308
    .restart local v13    # "writeTo":Ljava/io/File;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_3
    move-exception v20

    if-eqz v18, :cond_1b

    .line 309
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_1b
    throw v20
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    .line 330
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "replaced":Z
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_4
    move-exception v20

    if-eqz v10, :cond_1c

    .line 331
    :try_start_16
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_1c
    throw v20
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    .line 326
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v20

    .line 327
    :goto_c
    if-eqz v7, :cond_1d

    .line 328
    :try_start_17
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 330
    :cond_1d
    if-eqz v9, :cond_1e

    .line 331
    :try_start_18
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_1e
    throw v20

    .line 330
    :catchall_6
    move-exception v20

    if-eqz v9, :cond_1f

    .line 331
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_1f
    throw v20

    .line 335
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_20
    sget-object v20, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    move-object/from16 v18, v19

    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_0

    .line 326
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_7
    move-exception v20

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v20

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .line 304
    .end local v6    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "replaced":Z
    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_9
    move-exception v20

    goto/16 :goto_b

    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v17    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_a
    move-exception v20

    move-object/from16 v16, v17

    .end local v17    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipFile":Ljava/util/zip/ZipFile;
    goto/16 :goto_b

    .line 266
    .end local v13    # "writeTo":Ljava/io/File;
    .end local v16    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catchall_b
    move-exception v20

    move-object/from16 v18, v19

    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_9

    .line 262
    .end local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    :catch_3
    move-exception v4

    move-object/from16 v18, v19

    .end local v19    # "zipOut":Ljava/util/zip/ZipOutputStream;
    .restart local v18    # "zipOut":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_7
.end method
