.class public Lorg/restlet/engine/application/TunnelFilter;
.super Lorg/restlet/routing/Filter;
.source "TunnelFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    }
.end annotation


# instance fields
.field private final acceptEncodingReplacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;",
            ">;"
        }
    .end annotation
.end field

.field private final acceptReplacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/restlet/routing/Filter;-><init>(Lorg/restlet/Context;)V

    .line 181
    invoke-direct {p0}, Lorg/restlet/engine/application/TunnelFilter;->getAcceptEncodingReplacers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptEncodingReplacers:Ljava/util/List;

    .line 184
    invoke-direct {p0}, Lorg/restlet/engine/application/TunnelFilter;->getAcceptReplacers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptReplacers:Ljava/util/List;

    .line 194
    return-void
.end method

.method private getAcceptEncodingReplacers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "org/restlet/service/accept-encoding.properties"

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const-string v1, "acceptEncodingOld"

    const-string v2, "acceptEncodingNew"

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/engine/application/TunnelFilter;->getheaderReplacers(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAcceptReplacers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "org/restlet/service/accept.properties"

    invoke-static {v0}, Lorg/restlet/engine/Engine;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const-string v1, "acceptOld"

    const-string v2, "acceptNew"

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/engine/application/TunnelFilter;->getheaderReplacers(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/service/MetadataService;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v0

    return-object v0
.end method

.method private getheaderReplacers(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "userAgentPropertiesUrl"    # Ljava/net/URL;
    .param p2, "oldHeaderName"    # Ljava/lang/String;
    .param p3, "newHeaderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "headerReplacers":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;>;"
    if-eqz p1, :cond_5

    .line 269
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    sget-object v11, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v11}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sget v10, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v7, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 273
    .local v7, "reader":Ljava/io/BufferedReader;
    new-instance v1, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;

    invoke-direct {v1}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .local v1, "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    move-object v2, v1

    .line 279
    .end local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .local v2, "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    :goto_0
    if-eqz v6, :cond_4

    .line 280
    :try_start_2
    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 281
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "keyValue":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 283
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 286
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v8}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->setOldValue(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 279
    .end local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyValue":[Ljava/lang/String;
    .restart local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    move-object v2, v1

    .end local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    goto :goto_0

    .line 288
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keyValue":[Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 289
    invoke-virtual {v2, v8}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->setNewValue(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->build()Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;

    invoke-direct {v1}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;-><init>()V

    .end local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    goto :goto_1

    .line 295
    .end local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    :cond_2
    invoke-virtual {v2, v4, v8}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;->putAgentAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keyValue":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    goto :goto_1

    .line 302
    .end local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    :cond_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 311
    .end local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    return-object v3

    .line 302
    .restart local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 304
    .end local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getContext()Lorg/restlet/Context;

    move-result-object v9

    invoke-virtual {v9}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' due to: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    .restart local v1    # "headerReplacerBuilder":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer$Builder;
    goto :goto_3
.end method

.method private processExtensions(Lorg/restlet/Request;)Z
    .locals 14
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v12

    .line 357
    .local v12, "tunnelService":Lorg/restlet/service/TunnelService;
    const/4 v5, 0x0

    .line 360
    .local v5, "extensionsModified":Z
    invoke-virtual {p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v10

    .line 361
    .local v10, "method":Lorg/restlet/data/Method;
    invoke-virtual {v12}, Lorg/restlet/service/TunnelService;->isPreferencesTunnel()Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v10, v13}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v10, v13}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 363
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v11

    .line 365
    .local v11, "resourceRef":Lorg/restlet/data/Reference;
    invoke-virtual {v11}, Lorg/restlet/data/Reference;->hasExtensions()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 366
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v1

    .line 367
    .local v1, "clientInfo":Lorg/restlet/data/ClientInfo;
    const/4 v2, 0x0

    .line 368
    .local v2, "encodingFound":Z
    const/4 v0, 0x0

    .line 369
    .local v0, "characterSetFound":Z
    const/4 v8, 0x0

    .line 370
    .local v8, "mediaTypeFound":Z
    const/4 v6, 0x0

    .line 371
    .local v6, "languageFound":Z
    invoke-virtual {v11}, Lorg/restlet/data/Reference;->getExtensions()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "extensions":Ljava/lang/String;
    :goto_0
    const/16 v13, 0x2e

    invoke-virtual {v4, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 379
    .local v7, "lastIndexOfPoint":I
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "extension":Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/restlet/engine/application/TunnelFilter;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v9

    .line 383
    .local v9, "metadata":Lorg/restlet/data/Metadata;
    if-nez v8, :cond_1

    instance-of v13, v9, Lorg/restlet/data/MediaType;

    if-eqz v13, :cond_1

    .line 384
    invoke-direct {p0, v1, v9}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 385
    const/4 v8, 0x1

    .line 400
    :goto_1
    if-lez v7, :cond_4

    .line 401
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 386
    :cond_1
    if-nez v6, :cond_2

    instance-of v13, v9, Lorg/restlet/data/Language;

    if-eqz v13, :cond_2

    .line 387
    invoke-direct {p0, v1, v9}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 388
    const/4 v6, 0x1

    goto :goto_1

    .line 389
    :cond_2
    if-nez v0, :cond_3

    instance-of v13, v9, Lorg/restlet/data/CharacterSet;

    if-eqz v13, :cond_3

    .line 391
    invoke-direct {p0, v1, v9}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 392
    const/4 v0, 0x1

    goto :goto_1

    .line 393
    :cond_3
    if-nez v2, :cond_5

    instance-of v13, v9, Lorg/restlet/data/Encoding;

    if-eqz v13, :cond_5

    .line 394
    invoke-direct {p0, v1, v9}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 395
    const/4 v2, 0x1

    goto :goto_1

    .line 404
    :cond_4
    const-string v4, ""

    .line 410
    :cond_5
    if-nez v2, :cond_6

    if-nez v0, :cond_6

    if-nez v8, :cond_6

    if-eqz v6, :cond_7

    .line 412
    :cond_6
    invoke-virtual {v11, v4}, Lorg/restlet/data/Reference;->setExtensions(Ljava/lang/String;)V

    .line 413
    const/4 v5, 0x1

    .line 418
    .end local v0    # "characterSetFound":Z
    .end local v1    # "clientInfo":Lorg/restlet/data/ClientInfo;
    .end local v2    # "encodingFound":Z
    .end local v3    # "extension":Ljava/lang/String;
    .end local v4    # "extensions":Ljava/lang/String;
    .end local v6    # "languageFound":Z
    .end local v7    # "lastIndexOfPoint":I
    .end local v8    # "mediaTypeFound":Z
    .end local v9    # "metadata":Lorg/restlet/data/Metadata;
    .end local v11    # "resourceRef":Lorg/restlet/data/Reference;
    :cond_7
    return v5
.end method

.method private processHeaders(Lorg/restlet/Request;)V
    .locals 5
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 429
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v2

    .line 431
    .local v2, "tunnelService":Lorg/restlet/service/TunnelService;
    invoke-virtual {v2}, Lorg/restlet/service/TunnelService;->isMethodTunnel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    const-string v4, "org.restlet.http.headers"

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/util/Series;

    .line 436
    .local v0, "extraHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/service/TunnelService;->getMethodHeader()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "newMethodValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 444
    invoke-static {v1}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 448
    .end local v0    # "extraHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    .end local v1    # "newMethodValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private processQuery(Lorg/restlet/Request;)Z
    .locals 21
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v17

    .line 460
    .local v17, "tunnelService":Lorg/restlet/service/TunnelService;
    const/4 v15, 0x0

    .line 461
    .local v15, "queryModified":Z
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v16

    .line 463
    .local v16, "resourceRef":Lorg/restlet/data/Reference;
    invoke-virtual/range {v16 .. v16}, Lorg/restlet/data/Reference;->hasQuery()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 464
    invoke-virtual/range {v16 .. v16}, Lorg/restlet/data/Reference;->getQueryAsForm()Lorg/restlet/data/Form;

    move-result-object v14

    .line 467
    .local v14, "query":Lorg/restlet/data/Form;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getMethod()Lorg/restlet/data/Method;

    move-result-object v12

    .line 468
    .local v12, "method":Lorg/restlet/data/Method;
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->isMethodTunnel()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 469
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getMethodParameter()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 472
    .local v13, "methodName":Ljava/lang/String;
    invoke-static {v13}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v18

    .line 474
    .local v18, "tunnelledMethod":Lorg/restlet/data/Method;
    if-eqz v18, :cond_1

    sget-object v19, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    sget-object v19, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 477
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 478
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getMethodParameter()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/restlet/data/Form;->removeFirst(Ljava/lang/String;)Z

    .line 479
    const/4 v15, 0x1

    .line 484
    .end local v13    # "methodName":Ljava/lang/String;
    .end local v18    # "tunnelledMethod":Lorg/restlet/data/Method;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->isPreferencesTunnel()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 486
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getCharacterSetParameter()Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "charSetParameter":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getEncodingParameter()Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, "encodingParameter":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getLanguageParameter()Ljava/lang/String;

    move-result-object v9

    .line 490
    .local v9, "languageParameter":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/service/TunnelService;->getMediaTypeParameter()Ljava/lang/String;

    move-result-object v10

    .line 494
    .local v10, "mediaTypeParameter":Ljava/lang/String;
    invoke-virtual {v14, v6}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "acceptedCharSet":Ljava/lang/String;
    invoke-virtual {v14, v8}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, "acceptedEncoding":Ljava/lang/String;
    invoke-virtual {v14, v9}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "acceptedLanguage":Ljava/lang/String;
    invoke-virtual {v14, v10}, Lorg/restlet/data/Form;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "acceptedMediaType":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v7

    .line 504
    .local v7, "clientInfo":Lorg/restlet/data/ClientInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/restlet/engine/application/TunnelFilter;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v11

    .line 506
    .local v11, "metadata":Lorg/restlet/data/Metadata;
    if-nez v11, :cond_2

    if-eqz v2, :cond_2

    .line 507
    invoke-static {v2}, Lorg/restlet/data/CharacterSet;->valueOf(Ljava/lang/String;)Lorg/restlet/data/CharacterSet;

    move-result-object v11

    .line 510
    :cond_2
    instance-of v0, v11, Lorg/restlet/data/CharacterSet;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 511
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 512
    invoke-virtual {v14, v6}, Lorg/restlet/data/Form;->removeFirst(Ljava/lang/String;)Z

    .line 513
    const/4 v15, 0x1

    .line 516
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/restlet/engine/application/TunnelFilter;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v11

    .line 518
    if-nez v11, :cond_4

    if-eqz v3, :cond_4

    .line 519
    invoke-static {v3}, Lorg/restlet/data/Encoding;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Encoding;

    move-result-object v11

    .line 522
    :cond_4
    instance-of v0, v11, Lorg/restlet/data/Encoding;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 523
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 524
    invoke-virtual {v14, v8}, Lorg/restlet/data/Form;->removeFirst(Ljava/lang/String;)Z

    .line 525
    const/4 v15, 0x1

    .line 528
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/restlet/engine/application/TunnelFilter;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v11

    .line 530
    if-nez v11, :cond_6

    if-eqz v4, :cond_6

    .line 531
    invoke-static {v4}, Lorg/restlet/data/Language;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Language;

    move-result-object v11

    .line 534
    :cond_6
    instance-of v0, v11, Lorg/restlet/data/Language;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 535
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 536
    invoke-virtual {v14, v9}, Lorg/restlet/data/Form;->removeFirst(Ljava/lang/String;)Z

    .line 537
    const/4 v15, 0x1

    .line 540
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/restlet/engine/application/TunnelFilter;->getMetadata(Ljava/lang/String;)Lorg/restlet/data/Metadata;

    move-result-object v11

    .line 542
    if-nez v11, :cond_8

    if-eqz v5, :cond_8

    .line 543
    invoke-static {v5}, Lorg/restlet/data/MediaType;->valueOf(Ljava/lang/String;)Lorg/restlet/data/MediaType;

    move-result-object v11

    .line 546
    :cond_8
    instance-of v0, v11, Lorg/restlet/data/MediaType;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/restlet/engine/application/TunnelFilter;->updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V

    .line 548
    invoke-virtual {v14, v10}, Lorg/restlet/data/Form;->removeFirst(Ljava/lang/String;)Z

    .line 549
    const/4 v15, 0x1

    .line 554
    .end local v2    # "acceptedCharSet":Ljava/lang/String;
    .end local v3    # "acceptedEncoding":Ljava/lang/String;
    .end local v4    # "acceptedLanguage":Ljava/lang/String;
    .end local v5    # "acceptedMediaType":Ljava/lang/String;
    .end local v6    # "charSetParameter":Ljava/lang/String;
    .end local v7    # "clientInfo":Lorg/restlet/data/ClientInfo;
    .end local v8    # "encodingParameter":Ljava/lang/String;
    .end local v9    # "languageParameter":Ljava/lang/String;
    .end local v10    # "mediaTypeParameter":Ljava/lang/String;
    .end local v11    # "metadata":Lorg/restlet/data/Metadata;
    :cond_9
    if-eqz v15, :cond_a

    .line 555
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/restlet/data/Form;->getQueryString(Lorg/restlet/data/CharacterSet;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/restlet/data/Reference;->setQuery(Ljava/lang/String;)V

    .line 559
    .end local v12    # "method":Lorg/restlet/data/Method;
    .end local v14    # "query":Lorg/restlet/data/Form;
    :cond_a
    return v15
.end method

.method private processUserAgent(Lorg/restlet/Request;)V
    .locals 11
    .param p1, "request"    # Lorg/restlet/Request;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 595
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v2

    .line 597
    .local v2, "agentAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 598
    iget-object v8, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptReplacers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptEncodingReplacers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 602
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/Request;->getAttributes()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v8

    const-string v9, "org.restlet.http.headers"

    invoke-interface {v8, v9}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/restlet/util/Series;

    .line 605
    .local v5, "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-eqz v5, :cond_5

    const-string v8, "Accept"

    invoke-virtual {v5, v8, v10}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "acceptOld":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptReplacers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;

    .line 609
    .local v4, "headerReplacer":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    invoke-virtual {v4, v2, v1}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->matchesConditions(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 611
    new-instance v3, Lorg/restlet/data/ClientInfo;

    invoke-direct {v3}, Lorg/restlet/data/ClientInfo;-><init>()V

    .line 612
    .local v3, "clientInfo":Lorg/restlet/data/ClientInfo;
    invoke-virtual {v4}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->getHeaderNew()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lorg/restlet/engine/header/PreferenceReader;->addMediaTypes(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V

    .line 614
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v8

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/restlet/data/ClientInfo;->setAcceptedMediaTypes(Ljava/util/List;)V

    .line 619
    .end local v3    # "clientInfo":Lorg/restlet/data/ClientInfo;
    .end local v4    # "headerReplacer":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    :cond_2
    if-eqz v5, :cond_6

    const-string v7, "Accept-Encoding"

    invoke-virtual {v5, v7, v10}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "acceptEncodingOld":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lorg/restlet/engine/application/TunnelFilter;->acceptEncodingReplacers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;

    .line 624
    .restart local v4    # "headerReplacer":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    invoke-virtual {v4, v2, v0}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->matchesConditions(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 626
    new-instance v3, Lorg/restlet/data/ClientInfo;

    invoke-direct {v3}, Lorg/restlet/data/ClientInfo;-><init>()V

    .line 627
    .restart local v3    # "clientInfo":Lorg/restlet/data/ClientInfo;
    invoke-virtual {v4}, Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;->getHeaderNew()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/restlet/engine/header/PreferenceReader;->addEncodings(Ljava/lang/String;Lorg/restlet/data/ClientInfo;)V

    .line 629
    invoke-virtual {p1}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v7

    invoke-virtual {v3}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/restlet/data/ClientInfo;->setAcceptedEncodings(Ljava/util/List;)V

    .line 636
    .end local v0    # "acceptEncodingOld":Ljava/lang/String;
    .end local v1    # "acceptOld":Ljava/lang/String;
    .end local v3    # "clientInfo":Lorg/restlet/data/ClientInfo;
    .end local v4    # "headerReplacer":Lorg/restlet/engine/application/TunnelFilter$HeaderReplacer;
    .end local v5    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void

    .restart local v5    # "headers":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :cond_5
    move-object v1, v7

    .line 605
    goto :goto_0

    .restart local v1    # "acceptOld":Ljava/lang/String;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object v0, v7

    .line 619
    goto :goto_1
.end method

.method private updateMetadata(Lorg/restlet/data/ClientInfo;Lorg/restlet/data/Metadata;)V
    .locals 2
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;
    .param p2, "metadata"    # Lorg/restlet/data/Metadata;

    .prologue
    .line 648
    if-eqz p2, :cond_0

    .line 649
    instance-of v0, p2, Lorg/restlet/data/CharacterSet;

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 651
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p2, Lorg/restlet/data/CharacterSet;

    .end local p2    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_0
    :goto_0
    return-void

    .line 653
    .restart local p2    # "metadata":Lorg/restlet/data/Metadata;
    :cond_1
    instance-of v0, p2, Lorg/restlet/data/Encoding;

    if-eqz v0, :cond_2

    .line 654
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 655
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p2, Lorg/restlet/data/Encoding;

    .end local p2    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    .restart local p2    # "metadata":Lorg/restlet/data/Metadata;
    :cond_2
    instance-of v0, p2, Lorg/restlet/data/Language;

    if-eqz v0, :cond_3

    .line 658
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 659
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p2, Lorg/restlet/data/Language;

    .end local p2    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    .restart local p2    # "metadata":Lorg/restlet/data/Metadata;
    :cond_3
    instance-of v0, p2, Lorg/restlet/data/MediaType;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p2, Lorg/restlet/data/MediaType;

    .end local p2    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public beforeHandle(Lorg/restlet/Request;Lorg/restlet/Response;)I
    .locals 1
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/service/TunnelService;->isUserAgentTunnel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lorg/restlet/engine/application/TunnelFilter;->processUserAgent(Lorg/restlet/Request;)V

    .line 202
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/service/TunnelService;->isExtensionsTunnel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lorg/restlet/engine/application/TunnelFilter;->processExtensions(Lorg/restlet/Request;)Z

    .line 206
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/service/TunnelService;->isQueryTunnel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-direct {p0, p1}, Lorg/restlet/engine/application/TunnelFilter;->processQuery(Lorg/restlet/Request;)Z

    .line 210
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/service/TunnelService;->isHeadersTunnel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    invoke-direct {p0, p1}, Lorg/restlet/engine/application/TunnelFilter;->processHeaders(Lorg/restlet/Request;)V

    .line 214
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public getMetadataService()Lorg/restlet/service/MetadataService;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getApplication()Lorg/restlet/Application;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Application;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v0

    return-object v0
.end method

.method public getTunnelService()Lorg/restlet/service/TunnelService;
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lorg/restlet/engine/application/TunnelFilter;->getApplication()Lorg/restlet/Application;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Application;->getTunnelService()Lorg/restlet/service/TunnelService;

    move-result-object v0

    return-object v0
.end method
