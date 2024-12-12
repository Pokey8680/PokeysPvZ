.class public Lorg/restlet/engine/resource/ClientInvocationHandler;
.super Ljava/lang/Object;
.source "ClientInvocationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final clientResource:Lorg/restlet/resource/ClientResource;


# direct methods
.method public constructor <init>(Lorg/restlet/resource/ClientResource;Ljava/lang/Class;)V
    .locals 1
    .param p1, "clientResource"    # Lorg/restlet/resource/ClientResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/resource/ClientResource;",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler;, "Lorg/restlet/engine/resource/ClientInvocationHandler<TT;>;"
    .local p2, "resourceInterface":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/restlet/engine/resource/ClientInvocationHandler;->clientResource:Lorg/restlet/resource/ClientResource;

    .line 84
    invoke-static {p2}, Lorg/restlet/engine/resource/AnnotationUtils;->getAnnotations(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/engine/resource/ClientInvocationHandler;->annotations:Ljava/util/List;

    .line 85
    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler;, "Lorg/restlet/engine/resource/ClientInvocationHandler<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/resource/ClientInvocationHandler;->annotations:Ljava/util/List;

    return-object v0
.end method

.method public getClientResource()Lorg/restlet/resource/ClientResource;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler;, "Lorg/restlet/engine/resource/ClientInvocationHandler<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/resource/ClientInvocationHandler;->clientResource:Lorg/restlet/resource/ClientResource;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "javaMethod"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler;, "Lorg/restlet/engine/resource/ClientInvocationHandler<TT;>;"
    const/16 v19, 0x0

    .line 113
    .local v19, "result":Ljava/lang/Object;
    const-class v20, Ljava/lang/Object;

    const-string v21, "toString"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 115
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ClientProxy for resource: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/resource/ClientInvocationHandler;->clientResource:Lorg/restlet/resource/ClientResource;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 250
    .end local v19    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v19

    .line 116
    .restart local v19    # "result":Ljava/lang/Object;
    :cond_1
    const-class v20, Lorg/restlet/resource/ClientProxy;

    const-string v21, "getClientResource"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/resource/ClientInvocationHandler;->clientResource:Lorg/restlet/resource/ClientResource;

    move-object/from16 v19, v0

    .local v19, "result":Lorg/restlet/resource/ClientResource;
    goto :goto_0

    .line 120
    .local v19, "result":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/restlet/engine/resource/ClientInvocationHandler;->annotations:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/restlet/engine/resource/AnnotationUtils;->getAnnotation(Ljava/util/List;Ljava/lang/reflect/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v4

    .line 123
    .local v4, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v4, :cond_0

    .line 124
    const/16 v16, 0x0

    .line 125
    .local v16, "requestEntity":Lorg/restlet/representation/Representation;
    const/4 v9, 0x1

    .line 127
    .local v9, "isSynchronous":Z
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_7

    .line 130
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_7

    .line 131
    aget-object v10, p3, v8

    .line 133
    .local v10, "o":Ljava/lang/Object;
    if-nez v10, :cond_3

    .line 134
    const/16 v16, 0x0

    .line 130
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 135
    :cond_3
    const-class v20, Lorg/restlet/resource/Result;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 138
    const/4 v9, 0x0

    move-object v14, v10

    .line 141
    check-cast v14, Lorg/restlet/resource/Result;

    .line 142
    .local v14, "rCallback":Lorg/restlet/resource/Result;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 144
    .local v7, "genericParameterTypes":[Ljava/lang/reflect/Type;
    aget-object v6, v7, v8

    .line 145
    .local v6, "genericParameterType":Ljava/lang/reflect/Type;
    instance-of v0, v6, Ljava/lang/reflect/ParameterizedType;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .end local v6    # "genericParameterType":Ljava/lang/reflect/Type;
    move-object v11, v6

    .line 147
    .local v11, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :goto_3
    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    invoke-interface {v11}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    check-cast v20, Ljava/lang/Class;

    move-object/from16 v3, v20

    .line 152
    .local v3, "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    new-instance v5, Lorg/restlet/engine/resource/ClientInvocationHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14, v3}, Lorg/restlet/engine/resource/ClientInvocationHandler$1;-><init>(Lorg/restlet/engine/resource/ClientInvocationHandler;Lorg/restlet/resource/Result;Ljava/lang/Class;)V

    .line 187
    .local v5, "callback":Lorg/restlet/Uniform;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/restlet/resource/ClientResource;->setOnResponse(Lorg/restlet/Uniform;)V

    goto :goto_2

    .line 145
    .end local v3    # "actualType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "callback":Lorg/restlet/Uniform;
    .end local v11    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .restart local v6    # "genericParameterType":Ljava/lang/reflect/Type;
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 147
    .end local v6    # "genericParameterType":Ljava/lang/reflect/Type;
    .restart local v11    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 189
    .end local v7    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v11    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "rCallback":Lorg/restlet/resource/Result;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    aget-object v21, p3, v8

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lorg/restlet/resource/ClientResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v16

    goto :goto_2

    .line 196
    .end local v8    # "i":I
    .end local v10    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/resource/ClientResource;->createRequest()Lorg/restlet/Request;

    move-result-object v15

    .line 199
    .local v15, "request":Lorg/restlet/Request;
    invoke-virtual {v4}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/restlet/Request;->setMethod(Lorg/restlet/data/Method;)V

    .line 202
    invoke-virtual {v4}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v12

    .line 204
    .local v12, "query":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 205
    new-instance v13, Lorg/restlet/data/Form;

    invoke-virtual {v4}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;)V

    .line 206
    .local v13, "queryParams":Lorg/restlet/data/Form;
    invoke-virtual {v15}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/restlet/data/Reference;->addQueryParameters(Ljava/lang/Iterable;)Lorg/restlet/data/Reference;

    .line 210
    .end local v13    # "queryParams":Lorg/restlet/data/Form;
    :cond_8
    invoke-virtual/range {v15 .. v16}, Lorg/restlet/Request;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 213
    invoke-virtual {v15}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual {v15}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual {v15}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    invoke-virtual {v15}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_9

    .line 220
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/resource/ClientResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/restlet/resource/ClientResource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getResponseVariants(Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Ljava/util/List;

    move-result-object v18

    .line 225
    .local v18, "responseVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-eqz v18, :cond_9

    .line 226
    new-instance v20, Lorg/restlet/data/ClientInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/restlet/data/ClientInfo;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 231
    .end local v18    # "responseVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lorg/restlet/resource/ClientResource;->handleOutbound(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v17

    .line 234
    .local v17, "response":Lorg/restlet/Response;
    if-eqz v9, :cond_0

    .line 235
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/restlet/data/Status;->isError()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 236
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/restlet/resource/ClientResource;->doError(Lorg/restlet/data/Status;)V

    .line 239
    :cond_a
    invoke-virtual {v4}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v20

    sget-object v21, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v21

    if-nez v17, :cond_b

    const/16 v20, 0x0

    :goto_5
    invoke-virtual {v4}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/restlet/resource/ClientResource;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {v17 .. v17}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v20

    goto :goto_5
.end method
