.class public Lorg/codegist/crest/io/http/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"

# interfaces
.implements Lorg/codegist/crest/io/RequestExecutor;
.implements Lorg/codegist/common/lang/Disposable;


# static fields
.field private static final LOGGER:Lorg/codegist/common/log/Logger;


# instance fields
.field private final baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

.field private final channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

.field private final customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/codegist/crest/io/http/HttpRequestExecutor;

    invoke-static {v0}, Lorg/codegist/common/log/Logger;->getLogger(Ljava/lang/Class;)Lorg/codegist/common/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/io/http/HttpChannelFactory;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;)V
    .locals 0
    .param p1, "channelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;
    .param p2, "baseResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;
    .param p3, "customTypeResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 67
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    .line 68
    iput-object p3, p0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    .line 69
    return-void
.end method

.method private doExecute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/http/HttpResponse;
    .locals 26
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static/range {p1 .. p1}, Lorg/codegist/crest/io/http/HttpRequests;->toUrl(Lorg/codegist/crest/io/Request;)Ljava/lang/String;

    move-result-object v19

    .line 89
    .local v19, "url":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v14

    .line 90
    .local v14, "mc":Lorg/codegist/crest/config/MethodConfig;
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    .line 92
    .local v6, "charset":Ljava/nio/charset/Charset;
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Initiating HTTP Channel: %s %s"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getType()Lorg/codegist/crest/config/MethodType;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v19, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/codegist/common/log/Logger;->trace(Ljava/lang/Object;)V

    .line 94
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getType()Lorg/codegist/crest/config/MethodType;

    move-result-object v15

    .line 95
    .local v15, "methodType":Lorg/codegist/crest/config/MethodType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v15, v1, v6}, Lorg/codegist/crest/io/http/HttpChannelFactory;->open(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/codegist/crest/io/http/HttpChannel;

    move-result-object v13

    .line 97
    .local v13, "httpChannel":Lorg/codegist/crest/io/http/HttpChannel;
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getConnectionTimeout()I

    move-result v7

    .line 98
    .local v7, "coTimeout":I
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Set Connection Timeout: %d "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-interface {v13, v7}, Lorg/codegist/crest/io/http/HttpChannel;->setConnectionTimeout(I)V

    .line 101
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getSocketTimeout()I

    move-result v18

    .line 102
    .local v18, "soTimeout":I
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Set Socket Timeout: %d "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/codegist/crest/io/http/HttpChannel;->setSocketTimeout(I)V

    .line 105
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getProduces()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 106
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Set Content-Type: %d "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getProduces()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getProduces()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/codegist/crest/io/http/HttpChannel;->setContentType(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getConsumes()[Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "consumes":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    if-lez v21, :cond_1

    .line 112
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-static {v0, v8}, Lorg/codegist/common/collect/Arrays;->join(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "accept":Ljava/lang/String;
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Set Accept: %d "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-interface {v13, v5}, Lorg/codegist/crest/io/http/HttpChannel;->setAccept(Ljava/lang/String;)V

    .line 117
    .end local v5    # "accept":Ljava/lang/String;
    :cond_1
    sget-object v21, Lorg/codegist/crest/config/ParamType;->HEADER:Lorg/codegist/crest/config/ParamType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v12

    .line 118
    .local v12, "headers":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codegist/crest/param/EncodedPair;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 119
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codegist/crest/param/EncodedPair;

    .line 120
    .local v11, "encoded":Lorg/codegist/crest/param/EncodedPair;
    invoke-interface {v11}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v16

    .line 121
    .local v16, "name":Ljava/lang/String;
    invoke-interface {v11}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 122
    .local v20, "value":Ljava/lang/String;
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Header %s: %s "

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v20, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/codegist/crest/io/http/HttpChannel;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v11    # "encoded":Lorg/codegist/crest/param/EncodedPair;
    .end local v16    # "name":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_2
    sget-object v21, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/codegist/crest/io/Request;->getEncodedParamsIterator(Lorg/codegist/crest/config/ParamType;)Ljava/util/Iterator;

    move-result-object v10

    .line 127
    .local v10, "cookies":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codegist/crest/param/EncodedPair;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 128
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/codegist/crest/param/EncodedPair;

    .line 129
    .restart local v11    # "encoded":Lorg/codegist/crest/param/EncodedPair;
    invoke-interface {v11}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v16

    .line 130
    .restart local v16    # "name":Ljava/lang/String;
    invoke-interface {v11}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 131
    .restart local v20    # "value":Ljava/lang/String;
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "%s: %s "

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v20, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/codegist/crest/io/http/HttpChannel;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v11    # "encoded":Lorg/codegist/crest/param/EncodedPair;
    .end local v16    # "name":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v15}, Lorg/codegist/crest/config/MethodType;->hasEntity()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 136
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getEntityWriter()Lorg/codegist/crest/entity/EntityWriter;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/codegist/crest/entity/EntityWriter;->getContentType(Lorg/codegist/crest/io/Request;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "contentType":Ljava/lang/String;
    invoke-static {v9}, Lorg/codegist/common/lang/Strings;->isNotBlank(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 138
    invoke-interface {v14}, Lorg/codegist/crest/config/MethodConfig;->getProduces()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_6

    .line 139
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Entity Content-Type : %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-interface {v13, v9}, Lorg/codegist/crest/io/http/HttpChannel;->setContentType(Ljava/lang/String;)V

    .line 145
    :cond_4
    :goto_2
    new-instance v21, Lorg/codegist/crest/io/http/RequestEntityWriter;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/codegist/crest/io/http/RequestEntityWriter;-><init>(Lorg/codegist/crest/io/Request;)V

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Lorg/codegist/crest/io/http/HttpChannel;->writeEntityWith(Lorg/codegist/crest/io/http/HttpEntityWriter;)V

    .line 148
    .end local v9    # "contentType":Ljava/lang/String;
    :cond_5
    invoke-interface {v13}, Lorg/codegist/crest/io/http/HttpChannel;->send()Lorg/codegist/crest/io/http/HttpChannel$Response;

    move-result-object v17

    .line 149
    .local v17, "response":Lorg/codegist/crest/io/http/HttpChannel$Response;
    new-instance v21, Lorg/codegist/crest/io/http/HttpResponse;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    move-object/from16 v23, v0

    new-instance v24, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/codegist/crest/io/http/HttpChannelResponseHttpResource;-><init>(Lorg/codegist/crest/io/http/HttpChannel$Response;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/codegist/crest/io/http/HttpResponse;-><init>(Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/io/Request;Lorg/codegist/crest/io/http/HttpResource;)V

    return-object v21

    .line 142
    .end local v17    # "response":Lorg/codegist/crest/io/http/HttpChannel$Response;
    .restart local v9    # "contentType":Ljava/lang/String;
    :cond_6
    sget-object v21, Lorg/codegist/crest/io/http/HttpRequestExecutor;->LOGGER:Lorg/codegist/common/log/Logger;

    const-string v22, "Entity Content-Type : %s (ignored as previously set)"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v9, v23, v24

    invoke-virtual/range {v21 .. v23}, Lorg/codegist/common/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpRequestExecutor;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    invoke-static {v0}, Lorg/codegist/common/lang/Disposables;->dispose(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public execute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/Response;
    .locals 4
    .param p1, "request"    # Lorg/codegist/crest/io/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0, p1}, Lorg/codegist/crest/io/http/HttpRequestExecutor;->doExecute(Lorg/codegist/crest/io/Request;)Lorg/codegist/crest/io/http/HttpResponse;

    move-result-object v1

    .line 78
    .local v1, "response":Lorg/codegist/crest/io/http/HttpResponse;
    invoke-virtual {v1}, Lorg/codegist/crest/io/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    .line 79
    new-instance v2, Lorg/codegist/crest/io/RequestException;

    invoke-virtual {v1}, Lorg/codegist/crest/io/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/codegist/crest/io/RequestException;-><init>(Ljava/lang/String;Lorg/codegist/crest/io/Response;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "response":Lorg/codegist/crest/io/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/codegist/crest/io/RequestException;

    invoke-direct {v2, v0}, Lorg/codegist/crest/io/RequestException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "response":Lorg/codegist/crest/io/http/HttpResponse;
    :cond_0
    return-object v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Lorg/codegist/crest/io/http/HttpRequestExecutor;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
