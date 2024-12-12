.class public abstract Lorg/restlet/resource/ServerResource;
.super Lorg/restlet/resource/UniformResource;
.source "ServerResource.java"


# instance fields
.field private volatile annotated:Z

.field private volatile conditional:Z

.field private volatile existing:Z

.field private volatile negotiated:Z

.field private volatile variants:Ljava/util/List;
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
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-direct {p0}, Lorg/restlet/resource/UniformResource;-><init>()V

    .line 124
    iput-boolean v0, p0, Lorg/restlet/resource/ServerResource;->annotated:Z

    .line 125
    iput-boolean v0, p0, Lorg/restlet/resource/ServerResource;->conditional:Z

    .line 126
    iput-boolean v0, p0, Lorg/restlet/resource/ServerResource;->existing:Z

    .line 127
    iput-boolean v0, p0, Lorg/restlet/resource/ServerResource;->negotiated:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/restlet/resource/ServerResource;->variants:Ljava/util/List;

    .line 137
    return-void
.end method

.method private doGetInfo()Lorg/restlet/representation/RepresentationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v1, 0x0

    .line 374
    .local v1, "result":Lorg/restlet/representation/RepresentationInfo;
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, v2}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 376
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v0, :cond_0

    .line 377
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 382
    :goto_0
    return-object v1

    .line 379
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getInfo()Lorg/restlet/representation/RepresentationInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private doGetInfo(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/RepresentationInfo;
    .locals 2
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "result":Lorg/restlet/representation/RepresentationInfo;
    if-eqz p1, :cond_2

    .line 399
    instance-of v1, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 400
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    .line 402
    :cond_0
    instance-of v1, p1, Lorg/restlet/representation/RepresentationInfo;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 403
    check-cast v0, Lorg/restlet/representation/RepresentationInfo;

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->getInfo(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/RepresentationInfo;

    move-result-object v0

    goto :goto_0

    .line 408
    :cond_2
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->doGetInfo()Lorg/restlet/representation/RepresentationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private doHandle(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 3
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "query"    # Lorg/restlet/data/Form;
    .param p3, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-direct {p0, p1}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 551
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v0, :cond_0

    .line 552
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 560
    .end local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    :goto_0
    return-object v1

    .line 555
    .restart local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    :cond_0
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0

    .line 558
    .end local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    :cond_1
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method private doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 16
    .param p1, "annotationInfo"    # Lorg/restlet/engine/resource/AnnotationInfo;
    .param p2, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 468
    const/4 v10, 0x0

    .line 469
    .local v10, "result":Lorg/restlet/representation/Representation;
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaInputTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 472
    .local v8, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v11, 0x0

    .line 474
    .local v11, "resultObject":Ljava/lang/Object;
    :try_start_0
    array-length v12, v8

    if-lez v12, :cond_5

    .line 475
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v9, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 478
    .local v6, "parameter":Ljava/lang/Object;
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .end local v6    # "parameter":Ljava/lang/Object;
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v2, v4

    .line 479
    .local v7, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Lorg/restlet/representation/Variant;

    invoke-virtual {v12, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 480
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    invoke-virtual {v12}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 488
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v7}, Lorg/restlet/resource/ServerResource;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 491
    .restart local v6    # "parameter":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 492
    new-instance v12, Lorg/restlet/resource/ResourceException;

    sget-object v13, Lorg/restlet/data/Status;->CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:Lorg/restlet/data/Status;

    invoke-direct {v12, v13}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 508
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "parameter":Ljava/lang/Object;
    .end local v7    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v12, Lorg/restlet/resource/ResourceException;

    invoke-direct {v12, v3}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 496
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    const/4 v6, 0x0

    .line 499
    :cond_2
    :try_start_1
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 510
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_1
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v12, Lorg/restlet/resource/ResourceException;

    invoke-direct {v12, v3}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 503
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "arr$":[Ljava/lang/Class;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    invoke-interface {v9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 520
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2
    if-eqz v11, :cond_4

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/restlet/resource/ServerResource;->toRepresentation(Ljava/lang/Object;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v10

    .line 524
    :cond_4
    return-object v10

    .line 506
    :cond_5
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    goto :goto_2

    .line 512
    :catch_2
    move-exception v3

    .line 513
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v12

    instance-of v12, v12, Lorg/restlet/resource/ResourceException;

    if-eqz v12, :cond_6

    .line 514
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Lorg/restlet/resource/ResourceException;

    throw v12

    .line 517
    :cond_6
    new-instance v12, Lorg/restlet/resource/ResourceException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    throw v12
.end method

.method private getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;
    .locals 2
    .param p1, "method"    # Lorg/restlet/data/Method;

    .prologue
    .line 724
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAnnotation(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/engine/resource/AnnotationInfo;
    .locals 6
    .param p1, "method"    # Lorg/restlet/data/Method;
    .param p2, "query"    # Lorg/restlet/data/Form;
    .param p3, "entity"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 740
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isAnnotated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/restlet/engine/resource/AnnotationUtils;->getAnnotation(Ljava/util/List;Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAnnotations()Ljava/util/List;
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
    .line 754
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isAnnotated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/resource/AnnotationUtils;->getAnnotations(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->abort()V

    .line 145
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->commit()V

    .line 154
    return-void
.end method

.method protected delete()Lorg/restlet/representation/Representation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, "result":Lorg/restlet/representation/Representation;
    sget-object v2, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-direct {p0, v2}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 175
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v0, :cond_0

    .line 176
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .line 178
    :cond_0
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected delete(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "result":Lorg/restlet/representation/Representation;
    instance-of v1, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 208
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 211
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected describeVariants()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 235
    .local v0, "result":Lorg/restlet/representation/Representation;
    return-object v0
.end method

.method protected doCatch(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 249
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 250
    .local v0, "level":Ljava/util/logging/Level;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lorg/restlet/service/StatusService;->getStatus(Ljava/lang/Throwable;Lorg/restlet/resource/Resource;)Lorg/restlet/data/Status;

    move-result-object v1

    .line 252
    .local v1, "status":Lorg/restlet/data/Status;
    invoke-virtual {v1}, Lorg/restlet/data/Status;->isServerError()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 260
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Exception or error caught in server resource"

    invoke-virtual {v2, v0, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 266
    :cond_1
    return-void

    .line 254
    :cond_2
    invoke-virtual {v1}, Lorg/restlet/data/Status;->isConnectorError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 255
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v1}, Lorg/restlet/data/Status;->isClientError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0
.end method

.method protected doConditionalHandle()Lorg/restlet/representation/Representation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Conditions;->hasSome()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 281
    const/4 v2, 0x0

    .line 283
    .local v2, "resultInfo":Lorg/restlet/representation/RepresentationInfo;
    iget-boolean v4, p0, Lorg/restlet/resource/ServerResource;->existing:Z

    if-eqz v4, :cond_8

    .line 284
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isNegotiated()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 285
    sget-object v4, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0, v4}, Lorg/restlet/resource/ServerResource;->getVariants(Lorg/restlet/data/Method;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/restlet/resource/ServerResource;->getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;

    move-result-object v0

    .line 287
    .local v0, "preferredVariant":Lorg/restlet/representation/Variant;
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/service/ConnegService;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    sget-object v4, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    invoke-virtual {p0, v4}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    .line 297
    .end local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    :goto_0
    if-nez v2, :cond_6

    .line 298
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 301
    :cond_0
    sget-object v4, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p0, v4}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    .line 331
    :cond_1
    :goto_1
    sget-object v4, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_2
    instance-of v4, v2, Lorg/restlet/representation/Representation;

    if-eqz v4, :cond_a

    move-object v1, v2

    .line 334
    check-cast v1, Lorg/restlet/representation/Representation;

    .line 354
    .end local v2    # "resultInfo":Lorg/restlet/representation/RepresentationInfo;
    :cond_3
    :goto_2
    return-object v1

    .line 291
    .restart local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    .restart local v2    # "resultInfo":Lorg/restlet/representation/RepresentationInfo;
    :cond_4
    invoke-direct {p0, v0}, Lorg/restlet/resource/ServerResource;->doGetInfo(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/RepresentationInfo;

    move-result-object v2

    goto :goto_0

    .line 294
    .end local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    :cond_5
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->doGetInfo()Lorg/restlet/representation/RepresentationInfo;

    move-result-object v2

    goto :goto_0

    .line 307
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/restlet/data/Conditions;->getStatus(Lorg/restlet/data/Method;Lorg/restlet/representation/RepresentationInfo;)Lorg/restlet/data/Status;

    move-result-object v3

    .line 310
    .local v3, "status":Lorg/restlet/data/Status;
    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {v3}, Lorg/restlet/data/Status;->isError()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 312
    invoke-virtual {p0, v3}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_1

    .line 314
    :cond_7
    invoke-virtual {p0, v3}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_1

    .line 319
    .end local v3    # "status":Lorg/restlet/data/Status;
    :cond_8
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConditions()Lorg/restlet/data/Conditions;

    move-result-object v4

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/restlet/data/Conditions;->getStatus(Lorg/restlet/data/Method;Lorg/restlet/representation/RepresentationInfo;)Lorg/restlet/data/Status;

    move-result-object v3

    .line 322
    .restart local v3    # "status":Lorg/restlet/data/Status;
    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {v3}, Lorg/restlet/data/Status;->isError()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 324
    invoke-virtual {p0, v3}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_1

    .line 326
    :cond_9
    invoke-virtual {p0, v3}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;)V

    goto :goto_1

    .line 335
    .end local v3    # "status":Lorg/restlet/data/Status;
    :cond_a
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 338
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isNegotiated()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 340
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getVariants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 341
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doNegotiatedHandle()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_2

    .line 343
    :cond_b
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doHandle()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_2

    .line 347
    .end local v2    # "resultInfo":Lorg/restlet/representation/RepresentationInfo;
    :cond_c
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isNegotiated()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 348
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doNegotiatedHandle()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_2

    .line 350
    :cond_d
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doHandle()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_2
.end method

.method protected doError(Lorg/restlet/data/Status;)V
    .locals 0
    .param p1, "errorStatus"    # Lorg/restlet/data/Status;

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;)V

    .line 363
    return-void
.end method

.method protected doHandle()Lorg/restlet/representation/Representation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    .line 428
    .local v0, "method":Lorg/restlet/data/Method;
    if-nez v0, :cond_0

    .line 429
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v3, "No method specified"

    invoke-virtual {p0, v2, v3}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-object v1

    .line 431
    :cond_0
    sget-object v2, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->put(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 434
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->get()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 436
    :cond_2
    sget-object v2, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 437
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->post(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 438
    :cond_3
    sget-object v2, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->delete()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 440
    :cond_4
    sget-object v2, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 441
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->head()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 442
    :cond_5
    sget-object v2, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 443
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->options()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 445
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 448
    :cond_7
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected doHandle(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 4
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    .line 579
    .local v0, "method":Lorg/restlet/data/Method;
    if-nez v0, :cond_0

    .line 580
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    const-string v3, "No method specified"

    invoke-virtual {p0, v2, v3}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 619
    :goto_0
    return-object v1

    .line 582
    :cond_0
    sget-object v2, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/restlet/resource/ServerResource;->put(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isExisting()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 585
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 586
    instance-of v2, p1, Lorg/restlet/representation/Representation;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 587
    check-cast v1, Lorg/restlet/representation/Representation;

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->get(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 591
    :cond_3
    sget-object v2, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 592
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/restlet/resource/ServerResource;->post(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 593
    :cond_4
    sget-object v2, Lorg/restlet/data/Method;->DELETE:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 594
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->delete(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 595
    :cond_5
    sget-object v2, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 596
    instance-of v2, p1, Lorg/restlet/representation/Representation;

    if-eqz v2, :cond_6

    move-object v1, p1

    .line 597
    check-cast v1, Lorg/restlet/representation/Representation;

    goto :goto_0

    .line 599
    :cond_6
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->head(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 601
    :cond_7
    sget-object v2, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-virtual {v0, v2}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 602
    instance-of v2, p1, Lorg/restlet/representation/Representation;

    if-eqz v2, :cond_8

    move-object v1, p1

    .line 603
    check-cast v1, Lorg/restlet/representation/Representation;

    goto :goto_0

    .line 605
    :cond_8
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->options(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 607
    :cond_9
    instance-of v2, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v2, :cond_a

    move-object v2, p1

    .line 608
    check-cast v2, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v2}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto/16 :goto_0

    .line 612
    :cond_a
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto/16 :goto_0

    .line 615
    :cond_b
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto/16 :goto_0
.end method

.method protected doNegotiatedHandle()Lorg/restlet/representation/Representation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 639
    .local v1, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getVariants()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getVariants()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 640
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getVariants()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;

    move-result-object v0

    .line 642
    .local v0, "preferredVariant":Lorg/restlet/representation/Variant;
    if-nez v0, :cond_0

    .line 644
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    .line 645
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->describeVariants()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 656
    .end local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    :goto_0
    return-object v1

    .line 648
    .restart local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->updateDimensions()V

    .line 649
    invoke-virtual {p0, v0}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0

    .line 653
    .end local v0    # "preferredVariant":Lorg/restlet/representation/Variant;
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doHandle()Lorg/restlet/representation/Representation;

    move-result-object v1

    goto :goto_0
.end method

.method protected get()Lorg/restlet/representation/Representation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "result":Lorg/restlet/representation/Representation;
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {p0, v2}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 677
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v0, :cond_0

    .line 678
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 683
    :goto_0
    return-object v1

    .line 680
    :cond_0
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected get(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 706
    .local v0, "result":Lorg/restlet/representation/Representation;
    instance-of v1, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 707
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 713
    :goto_0
    return-object v0

    .line 710
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequestAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 770
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getInfo()Lorg/restlet/representation/RepresentationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->get()Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected getInfo(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/RepresentationInfo;
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->get(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public getOnSent()Lorg/restlet/Uniform;
    .locals 1

    .prologue
    .line 819
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->getOnSent()Lorg/restlet/Uniform;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;)",
            "Lorg/restlet/representation/Variant;"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    const/4 v0, 0x0

    .line 836
    .local v0, "result":Lorg/restlet/representation/Variant;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 837
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lorg/restlet/service/ConnegService;->getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;

    move-result-object v0

    .line 841
    :cond_0
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
    .line 853
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/resource/ServerResource;->getVariants(Lorg/restlet/data/Method;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getVariants(Lorg/restlet/data/Method;)Ljava/util/List;
    .locals 17
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
    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/restlet/resource/ServerResource;->variants:Ljava/util/List;

    .line 869
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-nez v13, :cond_7

    .line 870
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .restart local v13    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->isAnnotated()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->hasAnnotations()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 874
    const/4 v9, 0x0

    .line 875
    .local v9, "annoVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    sget-object v2, Lorg/restlet/data/Method;->HEAD:Lorg/restlet/data/Method;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p1, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    .line 877
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/resource/AnnotationInfo;

    .line 878
    .local v1, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequestEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/restlet/engine/resource/AnnotationInfo;->isCompatible(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getConverterService()Lorg/restlet/service/ConverterService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/restlet/engine/resource/AnnotationInfo;->getResponseVariants(Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Ljava/util/List;

    move-result-object v9

    .line 884
    if-eqz v9, :cond_1

    .line 887
    const/high16 v14, 0x3f000000    # 0.5f

    .line 888
    .local v14, "score":F
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 890
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getRequest()Lorg/restlet/Request;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Request;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v10

    .line 892
    .local v10, "emt":Lorg/restlet/data/MediaType;
    invoke-virtual/range {p0 .. p0}, Lorg/restlet/resource/ServerResource;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    invoke-virtual {v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/service/MetadataService;->getAllMediaTypes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 895
    .local v8, "amts":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    if-eqz v8, :cond_5

    .line 896
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/restlet/data/MediaType;

    .line 897
    .local v7, "amt":Lorg/restlet/data/MediaType;
    invoke-virtual {v7, v10}, Lorg/restlet/data/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 898
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_0

    .line 899
    :cond_3
    invoke-virtual {v7, v10}, Lorg/restlet/data/MediaType;->includes(Lorg/restlet/data/Metadata;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_0

    .line 901
    :cond_4
    invoke-virtual {v7, v10}, Lorg/restlet/data/MediaType;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_0

    .line 908
    .end local v7    # "amt":Lorg/restlet/data/MediaType;
    .end local v8    # "amts":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    .end local v10    # "emt":Lorg/restlet/data/MediaType;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/restlet/representation/Variant;

    .line 909
    .local v15, "v":Lorg/restlet/representation/Variant;
    new-instance v16, Lorg/restlet/engine/resource/VariantInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v1}, Lorg/restlet/engine/resource/VariantInfo;-><init>(Lorg/restlet/representation/Variant;Lorg/restlet/engine/resource/AnnotationInfo;)V

    .line 911
    .local v16, "vi":Lorg/restlet/engine/resource/VariantInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/restlet/engine/resource/VariantInfo;->setInputScore(F)V

    .line 912
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 919
    .end local v1    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    .end local v9    # "annoVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "score":F
    .end local v15    # "v":Lorg/restlet/representation/Variant;
    .end local v16    # "vi":Lorg/restlet/engine/resource/VariantInfo;
    :cond_6
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/restlet/resource/ServerResource;->variants:Ljava/util/List;

    .line 922
    :cond_7
    return-object v13
.end method

.method public handle()Lorg/restlet/representation/Representation;
    .locals 4

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 947
    .local v0, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isExisting()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/data/Method;->isSafe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    .line 979
    :cond_0
    :goto_0
    return-object v0

    .line 951
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isConditional()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 952
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doConditionalHandle()Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 959
    :goto_1
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 961
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/restlet/Response;->setEntity(Lorg/restlet/representation/Representation;)V

    .line 964
    :cond_2
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 965
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->updateAllowedMethods()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v1

    .line 975
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doCatch(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 953
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->isNegotiated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 954
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doNegotiatedHandle()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_1

    .line 956
    :cond_4
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->doHandle()Lorg/restlet/representation/Representation;

    move-result-object v0

    goto :goto_1

    .line 966
    :cond_5
    sget-object v2, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponseEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponseEntity()Lorg/restlet/representation/Representation;

    move-result-object v2

    invoke-virtual {v2}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 970
    :cond_6
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "A response with a 200 (Ok) status should have an entity. Changing the status to 204 (No content)."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 972
    sget-object v2, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->setStatus(Lorg/restlet/data/Status;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected hasAnnotations()Z
    .locals 1

    .prologue
    .line 988
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->getAnnotations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected head()Lorg/restlet/representation/Representation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->get()Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected head(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 1
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-virtual {p0, p1}, Lorg/restlet/resource/ServerResource;->get(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotated()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lorg/restlet/resource/ServerResource;->annotated:Z

    return v0
.end method

.method public isAutoCommitting()Z
    .locals 1

    .prologue
    .line 1053
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->isAutoCommitting()Z

    move-result v0

    return v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1062
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Response;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isConditional()Z
    .locals 1

    .prologue
    .line 1071
    iget-boolean v0, p0, Lorg/restlet/resource/ServerResource;->conditional:Z

    return v0
.end method

.method public isExisting()Z
    .locals 1

    .prologue
    .line 1080
    iget-boolean v0, p0, Lorg/restlet/resource/ServerResource;->existing:Z

    return v0
.end method

.method public isInRole(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 1092
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getApplication()Lorg/restlet/Application;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/restlet/Application;->getRole(Ljava/lang/String;)Lorg/restlet/security/Role;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNegotiated()Z
    .locals 1

    .prologue
    .line 1103
    iget-boolean v0, p0, Lorg/restlet/resource/ServerResource;->negotiated:Z

    return v0
.end method

.method protected options()Lorg/restlet/representation/Representation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1118
    const/4 v1, 0x0

    .line 1119
    .local v1, "result":Lorg/restlet/representation/Representation;
    sget-object v2, Lorg/restlet/data/Method;->OPTIONS:Lorg/restlet/data/Method;

    invoke-direct {p0, v2}, Lorg/restlet/resource/ServerResource;->getAnnotation(Lorg/restlet/data/Method;)Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v0

    .line 1122
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->updateAllowedMethods()V

    .line 1124
    if-eqz v0, :cond_0

    .line 1125
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 1130
    :goto_0
    return-object v1

    .line 1127
    :cond_0
    sget-object v2, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v2}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected options(Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1151
    const/4 v0, 0x0

    .line 1154
    .local v0, "result":Lorg/restlet/representation/Representation;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->updateAllowedMethods()V

    .line 1156
    instance-of v1, p1, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1157
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 1163
    :goto_0
    return-object v0

    .line 1160
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected post(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1186
    sget-object v0, Lorg/restlet/data/Method;->POST:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected post(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .param p2, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1213
    const/4 v0, 0x0

    .line 1215
    .local v0, "result":Lorg/restlet/representation/Representation;
    instance-of v1, p2, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 1216
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 1222
    :goto_0
    return-object v0

    .line 1219
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method protected put(Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "entity"    # Lorg/restlet/representation/Representation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1244
    sget-object v0, Lorg/restlet/data/Method;->PUT:Lorg/restlet/data/Method;

    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getQuery()Lorg/restlet/data/Form;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;)Lorg/restlet/representation/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected put(Lorg/restlet/representation/Representation;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;
    .locals 2
    .param p1, "representation"    # Lorg/restlet/representation/Representation;
    .param p2, "variant"    # Lorg/restlet/representation/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/restlet/resource/ResourceException;
        }
    .end annotation

    .prologue
    .line 1272
    const/4 v0, 0x0

    .line 1274
    .local v0, "result":Lorg/restlet/representation/Representation;
    instance-of v1, p2, Lorg/restlet/engine/resource/VariantInfo;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 1275
    check-cast v1, Lorg/restlet/engine/resource/VariantInfo;

    invoke-virtual {v1}, Lorg/restlet/engine/resource/VariantInfo;->getAnnotationInfo()Lorg/restlet/engine/resource/AnnotationInfo;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/restlet/resource/ServerResource;->doHandle(Lorg/restlet/engine/resource/AnnotationInfo;Lorg/restlet/representation/Variant;)Lorg/restlet/representation/Representation;

    move-result-object v0

    .line 1281
    :goto_0
    return-object v0

    .line 1278
    :cond_0
    sget-object v1, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    invoke-virtual {p0, v1}, Lorg/restlet/resource/ServerResource;->doError(Lorg/restlet/data/Status;)V

    goto :goto_0
.end method

.method public redirectPermanent(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 1309
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1310
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectPermanent(Ljava/lang/String;)V

    .line 1312
    :cond_0
    return-void
.end method

.method public redirectPermanent(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1292
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectPermanent(Lorg/restlet/data/Reference;)V

    .line 1295
    :cond_0
    return-void
.end method

.method public redirectSeeOther(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectSeeOther(Ljava/lang/String;)V

    .line 1348
    :cond_0
    return-void
.end method

.method public redirectSeeOther(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1325
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1326
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectSeeOther(Lorg/restlet/data/Reference;)V

    .line 1328
    :cond_0
    return-void
.end method

.method public redirectTemporary(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetUri"    # Ljava/lang/String;

    .prologue
    .line 1375
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectTemporary(Ljava/lang/String;)V

    .line 1378
    :cond_0
    return-void
.end method

.method public redirectTemporary(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "targetRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1358
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->redirectTemporary(Lorg/restlet/data/Reference;)V

    .line 1361
    :cond_0
    return-void
.end method

.method public setAllowedMethods(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1390
    .local p1, "allowedMethods":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Method;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAllowedMethods(Ljava/util/Set;)V

    .line 1393
    :cond_0
    return-void
.end method

.method public setAnnotated(Z)V
    .locals 0
    .param p1, "annotated"    # Z

    .prologue
    .line 1402
    iput-boolean p1, p0, Lorg/restlet/resource/ServerResource;->annotated:Z

    .line 1403
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1414
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponseAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    return-void
.end method

.method public setAutoCommitting(Z)V
    .locals 1
    .param p1, "autoCommitting"    # Z

    .prologue
    .line 1424
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setAutoCommitting(Z)V

    .line 1425
    return-void
.end method

.method public setChallengeRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setChallengeRequests(Ljava/util/List;)V

    .line 1441
    :cond_0
    return-void
.end method

.method public setCommitted(Z)V
    .locals 1
    .param p1, "committed"    # Z

    .prologue
    .line 1450
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setCommitted(Z)V

    .line 1451
    return-void
.end method

.method public setConditional(Z)V
    .locals 0
    .param p1, "conditional"    # Z

    .prologue
    .line 1460
    iput-boolean p1, p0, Lorg/restlet/resource/ServerResource;->conditional:Z

    .line 1461
    return-void
.end method

.method public setCookieSettings(Lorg/restlet/util/Series;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/CookieSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1471
    .local p1, "cookieSettings":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/CookieSetting;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setCookieSettings(Lorg/restlet/util/Series;)V

    .line 1474
    :cond_0
    return-void
.end method

.method public setDimensions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/data/Dimension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1486
    .local p1, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/data/Dimension;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1487
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setDimensions(Ljava/util/Set;)V

    .line 1489
    :cond_0
    return-void
.end method

.method public setExisting(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 1498
    iput-boolean p1, p0, Lorg/restlet/resource/ServerResource;->existing:Z

    .line 1499
    return-void
.end method

.method public setLocationRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "locationUri"    # Ljava/lang/String;

    .prologue
    .line 1527
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setLocationRef(Ljava/lang/String;)V

    .line 1530
    :cond_0
    return-void
.end method

.method public setLocationRef(Lorg/restlet/data/Reference;)V
    .locals 1
    .param p1, "locationRef"    # Lorg/restlet/data/Reference;

    .prologue
    .line 1510
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1511
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setLocationRef(Lorg/restlet/data/Reference;)V

    .line 1513
    :cond_0
    return-void
.end method

.method public setNegotiated(Z)V
    .locals 0
    .param p1, "negotiateContent"    # Z

    .prologue
    .line 1540
    iput-boolean p1, p0, Lorg/restlet/resource/ServerResource;->negotiated:Z

    .line 1541
    return-void
.end method

.method public setOnSent(Lorg/restlet/Uniform;)V
    .locals 1
    .param p1, "onSentCallback"    # Lorg/restlet/Uniform;

    .prologue
    .line 1550
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setOnSent(Lorg/restlet/Uniform;)V

    .line 1551
    return-void
.end method

.method public setProxyChallengeRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1564
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1565
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setProxyChallengeRequests(Ljava/util/List;)V

    .line 1567
    :cond_0
    return-void
.end method

.method public setServerInfo(Lorg/restlet/data/ServerInfo;)V
    .locals 1
    .param p1, "serverInfo"    # Lorg/restlet/data/ServerInfo;

    .prologue
    .line 1577
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1578
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setServerInfo(Lorg/restlet/data/ServerInfo;)V

    .line 1580
    :cond_0
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;

    .prologue
    .line 1590
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1591
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;)V

    .line 1593
    :cond_0
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1605
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/String;)V

    .line 1608
    :cond_0
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1620
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V

    .line 1623
    :cond_0
    return-void
.end method

.method public setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1637
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1638
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getResponse()Lorg/restlet/Response;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/restlet/Response;->setStatus(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1640
    :cond_0
    return-void
.end method

.method public updateAllowedMethods()V
    .locals 5

    .prologue
    .line 1649
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getAllowedMethods()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1650
    invoke-direct {p0}, Lorg/restlet/resource/ServerResource;->getAnnotations()Ljava/util/List;

    move-result-object v1

    .line 1652
    .local v1, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-eqz v1, :cond_1

    .line 1653
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/resource/AnnotationInfo;

    .line 1654
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getAllowedMethods()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1656
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getAllowedMethods()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1660
    .end local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected updateDimensions()V
    .locals 2

    .prologue
    .line 1668
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getDimensions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Dimension;->CHARACTER_SET:Lorg/restlet/data/Dimension;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1669
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getDimensions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Dimension;->ENCODING:Lorg/restlet/data/Dimension;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1670
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getDimensions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Dimension;->LANGUAGE:Lorg/restlet/data/Dimension;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1671
    invoke-virtual {p0}, Lorg/restlet/resource/ServerResource;->getDimensions()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/restlet/data/Dimension;->MEDIA_TYPE:Lorg/restlet/data/Dimension;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1672
    return-void
.end method
