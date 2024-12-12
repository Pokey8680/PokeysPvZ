.class public Lorg/restlet/engine/local/ClapClientHelper;
.super Lorg/restlet/engine/local/LocalClientHelper;
.source "ClapClientHelper.java"


# direct methods
.method public constructor <init>(Lorg/restlet/Client;)V
    .locals 2
    .param p1, "client"    # Lorg/restlet/Client;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/restlet/engine/local/LocalClientHelper;-><init>(Lorg/restlet/Client;)V

    .line 72
    invoke-virtual {p0}, Lorg/restlet/engine/local/ClapClientHelper;->getProtocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method


# virtual methods
.method protected handleClassLoader(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/ClassLoader;)V
    .locals 18
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ClapClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v4

    .line 87
    .local v4, "metadataService":Lorg/restlet/service/MetadataService;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v12

    sget-object v13, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v12, v13}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v12

    sget-object v13, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v12, v13}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 89
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "path":Ljava/lang/String;
    const/4 v9, 0x0

    .line 91
    .local v9, "url":Ljava/net/URL;
    const/4 v5, 0x0

    .line 94
    .local v5, "modificationDate":Ljava/util/Date;
    if-eqz v8, :cond_1

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 95
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    :cond_1
    if-eqz p3, :cond_4

    .line 102
    invoke-static {v8}, Lorg/restlet/data/Reference;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 112
    :goto_0
    if-eqz v9, :cond_2

    .line 113
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 114
    new-instance v2, Ljava/io/File;

    invoke-virtual {v9}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "file":Ljava/io/File;
    new-instance v5, Ljava/util/Date;

    .end local v5    # "modificationDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 117
    .restart local v5    # "modificationDate":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 118
    const/4 v9, 0x0

    .line 123
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    if-eqz v9, :cond_6

    .line 125
    :try_start_0
    new-instance v7, Lorg/restlet/representation/InputRepresentation;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v4}, Lorg/restlet/service/MetadataService;->getDefaultMediaType()Lorg/restlet/data/MediaType;

    move-result-object v13

    invoke-direct {v7, v12, v13}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;)V

    .line 128
    .local v7, "output":Lorg/restlet/representation/Representation;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/restlet/representation/Representation;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 129
    invoke-virtual {v7, v5}, Lorg/restlet/representation/Representation;->setModificationDate(Ljava/util/Date;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ClapClientHelper;->getTimeToLive()I

    move-result v12

    int-to-long v10, v12

    .line 134
    .local v10, "timeToLive":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_5

    .line 135
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lorg/restlet/representation/Representation;->setExpirationDate(Ljava/util/Date;)V

    .line 143
    :cond_3
    :goto_1
    const/16 v12, 0x2f

    invoke-virtual {v8, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "name":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ClapClientHelper;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v13

    invoke-static {v6, v7, v12, v13}, Lorg/restlet/engine/local/Entity;->updateMetadata(Ljava/lang/String;Lorg/restlet/representation/Variant;ZLorg/restlet/service/MetadataService;)V

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 149
    sget-object v12, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v5    # "modificationDate":Ljava/util/Date;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "output":Lorg/restlet/representation/Representation;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "timeToLive":J
    :goto_2
    return-void

    .line 104
    .restart local v5    # "modificationDate":Ljava/util/Date;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ClapClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    const-string v13, "Unable to get the resource. The selected classloader is null."

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .restart local v7    # "output":Lorg/restlet/representation/Representation;
    .restart local v10    # "timeToLive":J
    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_3

    .line 137
    :try_start_1
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v10

    add-long v14, v14, v16

    invoke-direct {v12, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v12}, Lorg/restlet/representation/Representation;->setExpirationDate(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    .end local v7    # "output":Lorg/restlet/representation/Representation;
    .end local v10    # "timeToLive":J
    :catch_0
    move-exception v3

    .line 151
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/local/ClapClientHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v12

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v14, "Unable to open the representation\'s input stream"

    invoke-virtual {v12, v13, v14, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    sget-object v12, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_2

    .line 157
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_6
    sget-object v12, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_2

    .line 160
    .end local v5    # "modificationDate":Ljava/util/Date;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :cond_7
    sget-object v12, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v12

    sget-object v13, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual/range {p2 .. p2}, Lorg/restlet/Response;->getAllowedMethods()Ljava/util/Set;

    move-result-object v12

    sget-object v13, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected handleLocal(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/String;)V
    .locals 7
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;
    .param p3, "decodedPath"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Reference;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "scheme":Ljava/lang/String;
    sget-object v4, Lorg/restlet/data/Protocol;->CLAP:Lorg/restlet/data/Protocol;

    invoke-virtual {v4}, Lorg/restlet/data/Protocol;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 172
    new-instance v2, Lorg/restlet/data/LocalReference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/restlet/data/LocalReference;-><init>(Lorg/restlet/data/Reference;)V

    .line 173
    .local v2, "cr":Lorg/restlet/data/LocalReference;
    const/4 v0, 0x0

    .line 175
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v2}, Lorg/restlet/data/LocalReference;->getClapAuthorityType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Lorg/restlet/data/LocalReference;->getClapAuthorityType()I

    move-result v4

    if-nez v4, :cond_4

    .line 179
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    const-string v5, "org.restlet.clap.classLoader"

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "classLoaderAttribute":Ljava/lang/Object;
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 183
    check-cast v0, Ljava/lang/ClassLoader;

    .line 201
    .end local v1    # "classLoaderAttribute":Ljava/lang/Object;
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/engine/local/ClapClientHelper;->handleClassLoader(Lorg/restlet/Request;Lorg/restlet/Response;Ljava/lang/ClassLoader;)V

    .line 208
    return-void

    .line 186
    .restart local v1    # "classLoaderAttribute":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    const-string v5, "org.restlet.clap.classloader"

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 190
    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 195
    .end local v1    # "classLoaderAttribute":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v2}, Lorg/restlet/data/LocalReference;->getClapAuthorityType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 196
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_5
    invoke-virtual {v2}, Lorg/restlet/data/LocalReference;->getClapAuthorityType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 203
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "cr":Lorg/restlet/data/LocalReference;
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Protocol \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" not supported by the connector. Only CLAP is supported."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
