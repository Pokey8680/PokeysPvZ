.class public abstract Lorg/restlet/engine/adapter/ServerCall;
.super Lorg/restlet/engine/adapter/Call;
.source "ServerCall.java"


# instance fields
.field private volatile hostParsed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "serverAddress"    # Ljava/lang/String;
    .param p2, "serverPort"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/restlet/engine/adapter/Call;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerCall;->setServerAddress(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p2}, Lorg/restlet/engine/adapter/ServerCall;->setServerPort(I)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/engine/adapter/ServerCall;->hostParsed:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/restlet/Server;)V
    .locals 2
    .param p1, "server"    # Lorg/restlet/Server;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/restlet/Server;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/restlet/Server;->getPort()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/adapter/ServerCall;-><init>(Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method private parseHost()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 336
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v2

    const-string v3, "Host"

    invoke-virtual {v2, v3, v4}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 341
    const/16 v2, 0x3a

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 343
    .local v0, "colonIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Lorg/restlet/engine/adapter/Call;->setHostDomain(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-super {p0, v2}, Lorg/restlet/engine/adapter/Call;->setHostPort(I)V

    .line 356
    .end local v0    # "colonIndex":I
    :goto_0
    iput-boolean v4, p0, Lorg/restlet/engine/adapter/ServerCall;->hostParsed:Z

    .line 357
    return-void

    .line 348
    .restart local v0    # "colonIndex":I
    :cond_0
    invoke-super {p0, v1}, Lorg/restlet/engine/adapter/Call;->setHostDomain(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getProtocol()Lorg/restlet/data/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v2

    invoke-super {p0, v2}, Lorg/restlet/engine/adapter/Call;->setHostPort(I)V

    goto :goto_0

    .line 352
    .end local v0    # "colonIndex":I
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Couldn\'t find the mandatory \"Host\" HTTP header."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract abort()Z
.end method

.method public complete()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getContentLength()J
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->getContentLength(Lorg/restlet/util/Series;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHostDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/restlet/engine/adapter/ServerCall;->hostParsed:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/restlet/engine/adapter/ServerCall;->parseHost()V

    .line 155
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/adapter/Call;->getHostDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostPort()I
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/restlet/engine/adapter/ServerCall;->hostParsed:Z

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lorg/restlet/engine/adapter/ServerCall;->parseHost()V

    .line 168
    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/adapter/Call;->getHostPort()I

    move-result v0

    return v0
.end method

.method public getRequestEntity()Lorg/restlet/representation/Representation;
    .locals 19

    .prologue
    .line 177
    const/4 v14, 0x0

    .line 178
    .local v14, "result":Lorg/restlet/representation/Representation;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/ServerCall;->getContentLength()J

    move-result-wide v4

    .line 179
    .local v4, "contentLength":J
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v15

    invoke-static {v15}, Lorg/restlet/engine/header/HeaderUtils;->isChunkedEncoding(Lorg/restlet/util/Series;)Z

    move-result v2

    .line 182
    .local v2, "chunkedEncoding":Z
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v15

    invoke-static {v15}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v3

    .line 186
    .local v3, "connectionClosed":Z
    const-wide/16 v16, -0x1

    cmp-long v15, v4, v16

    if-eqz v15, :cond_0

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-nez v15, :cond_1

    :cond_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_6

    .line 189
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/restlet/engine/adapter/ServerCall;->getRequestEntityStream(J)Ljava/io/InputStream;

    move-result-object v13

    .line 191
    .local v13, "requestStream":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 194
    new-instance v12, Ljava/io/PushbackInputStream;

    invoke-direct {v12, v13}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 197
    .local v12, "pbi":Ljava/io/PushbackInputStream;
    :try_start_0
    invoke-virtual {v12}, Ljava/io/PushbackInputStream;->read()I

    move-result v11

    .line 199
    .local v11, "next":I
    const/4 v15, -0x1

    if-eq v11, v15, :cond_4

    .line 200
    invoke-virtual {v12, v11}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    move-object v13, v12

    .line 210
    .end local v11    # "next":I
    .end local v12    # "pbi":Ljava/io/PushbackInputStream;
    :cond_2
    :goto_0
    if-eqz v13, :cond_5

    .line 211
    new-instance v14, Lorg/restlet/representation/InputRepresentation;

    .end local v14    # "result":Lorg/restlet/representation/Representation;
    const/4 v15, 0x0

    invoke-direct {v14, v13, v15, v4, v5}, Lorg/restlet/representation/InputRepresentation;-><init>(Ljava/io/InputStream;Lorg/restlet/data/MediaType;J)V

    .line 217
    .restart local v14    # "result":Lorg/restlet/representation/Representation;
    :goto_1
    invoke-virtual {v14, v4, v5}, Lorg/restlet/representation/Representation;->setSize(J)V

    .line 223
    .end local v13    # "requestStream":Ljava/io/InputStream;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v15

    invoke-virtual {v15}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/restlet/engine/header/Header;

    .line 224
    .local v8, "header":Lorg/restlet/engine/header/Header;
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Encoding"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 226
    new-instance v15, Lorg/restlet/engine/header/EncodingReader;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/restlet/engine/header/EncodingReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getEncodings()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/restlet/engine/header/EncodingReader;->addValues(Ljava/util/Collection;)V

    goto :goto_3

    .line 203
    .end local v8    # "header":Lorg/restlet/engine/header/Header;
    .end local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "next":I
    .restart local v12    # "pbi":Ljava/io/PushbackInputStream;
    .restart local v13    # "requestStream":Ljava/io/InputStream;
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 205
    .end local v11    # "next":I
    :catch_0
    move-exception v7

    .line 206
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/adapter/ServerCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v15

    const-string v16, "Unable to read request entity"

    invoke-virtual/range {v15 .. v16}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pbi":Ljava/io/PushbackInputStream;
    :cond_5
    new-instance v14, Lorg/restlet/representation/EmptyRepresentation;

    .end local v14    # "result":Lorg/restlet/representation/Representation;
    invoke-direct {v14}, Lorg/restlet/representation/EmptyRepresentation;-><init>()V

    .restart local v14    # "result":Lorg/restlet/representation/Representation;
    goto :goto_1

    .line 219
    .end local v13    # "requestStream":Ljava/io/InputStream;
    :cond_6
    new-instance v14, Lorg/restlet/representation/EmptyRepresentation;

    .end local v14    # "result":Lorg/restlet/representation/Representation;
    invoke-direct {v14}, Lorg/restlet/representation/EmptyRepresentation;-><init>()V

    .restart local v14    # "result":Lorg/restlet/representation/Representation;
    goto :goto_2

    .line 228
    .restart local v8    # "header":Lorg/restlet/engine/header/Header;
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Language"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 230
    new-instance v15, Lorg/restlet/engine/header/LanguageReader;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/restlet/engine/header/LanguageReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lorg/restlet/representation/Representation;->getLanguages()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/restlet/engine/header/LanguageReader;->addValues(Ljava/util/Collection;)V

    goto :goto_3

    .line 232
    :cond_8
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Type"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 234
    new-instance v6, Lorg/restlet/engine/header/ContentType;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Lorg/restlet/engine/header/ContentType;-><init>(Ljava/lang/String;)V

    .line 235
    .local v6, "contentType":Lorg/restlet/engine/header/ContentType;
    invoke-virtual {v6}, Lorg/restlet/engine/header/ContentType;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/representation/Representation;->setMediaType(Lorg/restlet/data/MediaType;)V

    .line 236
    invoke-virtual {v6}, Lorg/restlet/engine/header/ContentType;->getCharacterSet()Lorg/restlet/data/CharacterSet;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/representation/Representation;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    goto/16 :goto_3

    .line 237
    .end local v6    # "contentType":Lorg/restlet/engine/header/ContentType;
    :cond_9
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Range"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 239
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v14}, Lorg/restlet/engine/header/RangeReader;->update(Ljava/lang/String;Lorg/restlet/representation/Representation;)V

    goto/16 :goto_3

    .line 240
    :cond_a
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-MD5"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 242
    new-instance v15, Lorg/restlet/data/Digest;

    const-string v16, "MD5"

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/restlet/engine/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/restlet/data/Digest;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v14, v15}, Lorg/restlet/representation/Representation;->setDigest(Lorg/restlet/data/Digest;)V

    goto/16 :goto_3

    .line 244
    :cond_b
    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Disposition"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 247
    :try_start_1
    new-instance v15, Lorg/restlet/engine/header/DispositionReader;

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/restlet/engine/header/DispositionReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lorg/restlet/engine/header/DispositionReader;->readValue()Lorg/restlet/data/Disposition;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/restlet/representation/Representation;->setDisposition(Lorg/restlet/data/Disposition;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 249
    :catch_1
    move-exception v10

    .line 250
    .local v10, "ioe":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v15

    sget-object v16, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error during Content-Disposition header parsing. Header: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Lorg/restlet/engine/header/Header;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 258
    .end local v8    # "header":Lorg/restlet/engine/header/Header;
    .end local v10    # "ioe":Ljava/io/IOException;
    :cond_c
    return-object v14
.end method

.method public abstract getRequestEntityStream(J)Ljava/io/InputStream;
.end method

.method public abstract getRequestHeadStream()Ljava/io/InputStream;
.end method

.method public abstract getResponseEntityStream()Ljava/io/OutputStream;
.end method

.method public getSslKeySize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSslSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getSslSessionIdBytes()[B

    move-result-object v0

    .line 304
    .local v0, "byteArray":[B
    if-eqz v0, :cond_0

    .line 305
    invoke-static {v0}, Lorg/restlet/engine/io/BioUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 307
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSslSessionIdBytes()[B
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isClientKeepAlive()Z
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/HeaderUtils;->isConnectionClose(Lorg/restlet/util/Series;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isServerKeepAlive()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected readRequestHead(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "headStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 369
    .local v1, "next":I
    :goto_0
    if-eq v1, v4, :cond_0

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 370
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    .line 374
    :cond_0
    if-ne v1, v4, :cond_1

    .line 375
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to parse the request method. End of stream reached too early."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/ServerCall;->setMethod(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 384
    :goto_1
    if-eq v1, v4, :cond_2

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 385
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1

    .line 389
    :cond_2
    if-ne v1, v4, :cond_3

    .line 390
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to parse the request URI. End of stream reached too early."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/ServerCall;->setRequestUri(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 398
    :goto_2
    if-eq v1, v4, :cond_4

    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isCarriageReturn(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 399
    int-to-char v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_2

    .line 403
    :cond_4
    if-ne v1, v4, :cond_5

    .line 404
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to parse the HTTP version. End of stream reached too early."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 407
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 409
    invoke-static {v1}, Lorg/restlet/engine/header/HeaderUtils;->isLineFeed(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/restlet/engine/adapter/ServerCall;->setVersion(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 414
    invoke-static {p1, v2}, Lorg/restlet/engine/header/HeaderReader;->readHeader(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Lorg/restlet/engine/header/Header;

    move-result-object v0

    .line 416
    .local v0, "header":Lorg/restlet/engine/header/Header;
    :goto_3
    if-eqz v0, :cond_7

    .line 417
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getRequestHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-static {p1, v2}, Lorg/restlet/engine/header/HeaderReader;->readHeader(Ljava/io/InputStream;Ljava/lang/StringBuilder;)Lorg/restlet/engine/header/Header;

    move-result-object v0

    goto :goto_3

    .line 421
    .end local v0    # "header":Lorg/restlet/engine/header/Header;
    :cond_6
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to parse the HTTP version. The carriage return must be followed by a line feed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    .restart local v0    # "header":Lorg/restlet/engine/header/Header;
    :cond_7
    return-void
.end method

.method public sendResponse(Lorg/restlet/Response;)V
    .locals 7
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    if-eqz p1, :cond_3

    .line 441
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    .line 442
    .local v2, "responseEntity":Lorg/restlet/representation/Representation;
    invoke-static {}, Lorg/restlet/engine/ConnectorHelper;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v0

    .line 445
    .local v0, "connectorService":Lorg/restlet/service/ConnectorService;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, v2}, Lorg/restlet/service/ConnectorService;->beforeSend(Lorg/restlet/representation/Representation;)V

    .line 450
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerCall;->writeResponseHead(Lorg/restlet/Response;)V

    .line 452
    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getResponseEntityStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 454
    .local v3, "responseEntityStream":Ljava/io/OutputStream;
    invoke-virtual {p0, v2, v3}, Lorg/restlet/engine/adapter/ServerCall;->writeResponseBody(Lorg/restlet/representation/Representation;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-eqz v3, :cond_1

    .line 458
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .end local v3    # "responseEntityStream":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 472
    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->release()V

    .line 475
    :cond_2
    if-eqz v0, :cond_3

    .line 476
    invoke-virtual {v0, v2}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    .line 480
    .end local v0    # "connectorService":Lorg/restlet/service/ConnectorService;
    .end local v2    # "responseEntity":Lorg/restlet/representation/Representation;
    :cond_3
    return-void

    .line 460
    .restart local v0    # "connectorService":Lorg/restlet/service/ConnectorService;
    .restart local v2    # "responseEntity":Lorg/restlet/representation/Representation;
    .restart local v3    # "responseEntityStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 463
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Exception while flushing and closing the entity stream."

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 471
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v3    # "responseEntityStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_4

    .line 472
    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->release()V

    .line 475
    :cond_4
    if-eqz v0, :cond_5

    .line 476
    invoke-virtual {v0, v2}, Lorg/restlet/service/ConnectorService;->afterSend(Lorg/restlet/representation/Representation;)V

    :cond_5
    throw v4
.end method

.method public shouldResponseBeChunked(Lorg/restlet/Response;)Z
    .locals 1
    .param p1, "response"    # Lorg/restlet/Response;

    .prologue
    .line 491
    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->hasKnownSize()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeResponseBody(Lorg/restlet/representation/Representation;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .param p2, "responseEntityStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    if-eqz p2, :cond_0

    .line 510
    invoke-virtual {p1, p2}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 511
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 513
    :cond_0
    return-void
.end method

.method protected writeResponseHead(Lorg/restlet/Response;)V
    .locals 0
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    return-void
.end method

.method protected writeResponseHead(Lorg/restlet/Response;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "response"    # Lorg/restlet/Response;
    .param p2, "headStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/16 v8, 0xd

    const/16 v7, 0xa

    .line 538
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v2, "1.1"

    .line 539
    .local v2, "version":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 540
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 541
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 543
    invoke-virtual {p2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 545
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 546
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/engine/util/StringUtils;->getLatin1Bytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 552
    :goto_1
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 553
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 556
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    const-string v4, "Connection"

    const-string v5, "close"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    .line 560
    invoke-virtual {p0, p1}, Lorg/restlet/engine/adapter/ServerCall;->shouldResponseBeChunked(Lorg/restlet/Response;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    const-string v4, "Transfer-Encoding"

    const-string v5, "chunked"

    invoke-virtual {v3, v4, v5}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 566
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getResponseHeaders()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/header/Header;

    .line 567
    .local v0, "header":Lorg/restlet/engine/header/Header;
    invoke-static {v0, p2}, Lorg/restlet/engine/header/HeaderUtils;->writeHeaderLine(Lorg/restlet/engine/header/Header;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 538
    .end local v0    # "header":Lorg/restlet/engine/header/Header;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 548
    .restart local v2    # "version":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/ServerCall;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/engine/util/StringUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    .line 571
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    .line 572
    invoke-virtual {p2, v7}, Ljava/io/OutputStream;->write(I)V

    .line 573
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 574
    return-void
.end method
