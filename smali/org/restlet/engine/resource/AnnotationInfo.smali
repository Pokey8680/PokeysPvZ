.class public Lorg/restlet/engine/resource/AnnotationInfo;
.super Ljava/lang/Object;
.source "AnnotationInfo.java"


# instance fields
.field private final input:Ljava/lang/String;

.field private final javaMethod:Ljava/lang/reflect/Method;

.field private final javaMethodImpl:Ljava/lang/reflect/Method;

.field private final output:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final restletMethod:Lorg/restlet/data/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/restlet/data/Method;Ljava/lang/reflect/Method;Ljava/lang/String;)V
    .locals 9
    .param p2, "restletMethod"    # Lorg/restlet/data/Method;
    .param p3, "javaMethod"    # Ljava/lang/reflect/Method;
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/restlet/data/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->resourceClass:Ljava/lang/Class;

    .line 195
    iput-object p2, p0, Lorg/restlet/engine/resource/AnnotationInfo;->restletMethod:Lorg/restlet/data/Method;

    .line 196
    iput-object p3, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethod:Ljava/lang/reflect/Method;

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 204
    :goto_0
    if-eqz v2, :cond_0

    .line 205
    iput-object v2, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    .line 211
    :goto_1
    if-eqz p4, :cond_3

    const-string v4, ""

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 212
    const/16 v4, 0x3f

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 214
    .local v3, "queryIndex":I
    if-eq v3, v7, :cond_1

    .line 215
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p4, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/restlet/engine/resource/AnnotationInfo;->query:Ljava/lang/String;

    .line 216
    invoke-virtual {p4, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 221
    :goto_2
    const/16 v4, 0x3a

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 223
    .local v1, "ioSeparatorIndex":I
    if-eq v1, v7, :cond_2

    .line 224
    invoke-virtual {p4, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/restlet/engine/resource/AnnotationInfo;->input:Ljava/lang/String;

    .line 225
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p4, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/restlet/engine/resource/AnnotationInfo;->output:Ljava/lang/String;

    .line 236
    .end local v1    # "ioSeparatorIndex":I
    .end local v3    # "queryIndex":I
    :goto_3
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    move-object v2, p3

    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object p3, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 218
    .restart local v3    # "queryIndex":I
    :cond_1
    iput-object v6, p0, Lorg/restlet/engine/resource/AnnotationInfo;->query:Ljava/lang/String;

    goto :goto_2

    .line 227
    .restart local v1    # "ioSeparatorIndex":I
    :cond_2
    iput-object p4, p0, Lorg/restlet/engine/resource/AnnotationInfo;->input:Ljava/lang/String;

    .line 228
    iput-object p4, p0, Lorg/restlet/engine/resource/AnnotationInfo;->output:Ljava/lang/String;

    goto :goto_3

    .line 232
    .end local v1    # "ioSeparatorIndex":I
    .end local v3    # "queryIndex":I
    :cond_3
    iput-object v6, p0, Lorg/restlet/engine/resource/AnnotationInfo;->query:Ljava/lang/String;

    .line 233
    iput-object v6, p0, Lorg/restlet/engine/resource/AnnotationInfo;->input:Ljava/lang/String;

    .line 234
    iput-object v6, p0, Lorg/restlet/engine/resource/AnnotationInfo;->output:Ljava/lang/String;

    goto :goto_3
.end method

.method private static getJavaActualType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "genericTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 79
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    if-nez v2, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 86
    .local v1, "interfaceTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v2, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 87
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    .end local v1    # "interfaceTypes":[Ljava/lang/reflect/Type;
    :cond_0
    return-object v2
.end method

.method private getJavaActualType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 6
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "initialType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p1

    .line 323
    .local v3, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    instance-of v5, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_0

    .line 324
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    move-object v2, v0

    .line 325
    .local v2, "genericTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "genericTypeName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 332
    .end local v1    # "genericTypeName":Ljava/lang/String;
    .end local v2    # "genericTypeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 328
    :catch_0
    move-exception v4

    .line 329
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static getJavaActualType(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "currentType"    # Ljava/lang/reflect/Type;
    .param p1, "genericTypeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v4, 0x0

    .line 107
    .local v4, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 108
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_1

    .line 110
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "currentType":Ljava/lang/reflect/Type;
    invoke-static {p0, p1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 128
    :cond_0
    return-object v4

    .line 112
    .restart local p0    # "currentType":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_0

    move-object v2, p0

    .line 113
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 114
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 115
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 117
    .local v0, "actualTypeArguments":[Ljava/lang/reflect/Type;
    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 119
    .local v5, "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v1, 0x0

    .line 120
    .local v1, "i":I
    :goto_0
    if-nez v4, :cond_0

    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 121
    aget-object v6, v5, v1

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    aget-object v6, v0, v1

    invoke-static {v6}, Lorg/restlet/engine/resource/AnnotationInfo;->getTypeClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getJavaInputType(I)Ljava/lang/Class;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 142
    check-cast v2, Ljava/lang/Class;

    .line 155
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object v2

    .line 143
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 144
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lorg/restlet/engine/resource/AnnotationInfo;->getTypeClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 145
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_0

    .line 146
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 148
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getTypeClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method

.method private getVariants(Lorg/restlet/service/MetadataService;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p2, "annotationValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/service/MetadataService;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    const/16 v17, 0x0

    .line 489
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-eqz p2, :cond_e

    .line 490
    const-string v21, "\\|"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 492
    .local v20, "variants":[Ljava/lang/String;
    move-object/from16 v2, v20

    .local v2, "arr$":[Ljava/lang/String;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v9, v7

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_e

    aget-object v19, v2, v9

    .line 493
    .local v19, "variantValue":Ljava/lang/String;
    const/16 v18, 0x0

    .line 494
    .local v18, "variant":Lorg/restlet/representation/Variant;
    const-string v21, "\\+"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 495
    .local v6, "extensions":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 496
    .local v14, "mediaTypes":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    const/4 v10, 0x0

    .line 497
    .local v10, "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    const/4 v4, 0x0

    .line 499
    .local v4, "characterSet":Lorg/restlet/data/CharacterSet;
    move-object v3, v6

    .local v3, "arr$":[Ljava/lang/String;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v7, 0x0

    .end local v9    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v12, :cond_7

    aget-object v5, v3, v8

    .line 500
    .local v5, "extension":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/restlet/service/MetadataService;->getAllMetadata(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 504
    .local v16, "metadataList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Metadata;>;"
    if-eqz v16, :cond_6

    .line 505
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/restlet/data/Metadata;

    .line 506
    .local v15, "metadata":Lorg/restlet/data/Metadata;
    instance-of v0, v15, Lorg/restlet/data/MediaType;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 507
    if-nez v14, :cond_1

    .line 508
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "mediaTypes":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .restart local v14    # "mediaTypes":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    :cond_1
    check-cast v15, Lorg/restlet/data/MediaType;

    .end local v15    # "metadata":Lorg/restlet/data/Metadata;
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 512
    .restart local v15    # "metadata":Lorg/restlet/data/Metadata;
    :cond_2
    instance-of v0, v15, Lorg/restlet/data/Language;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 513
    if-nez v10, :cond_3

    .line 514
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .restart local v10    # "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    :cond_3
    check-cast v15, Lorg/restlet/data/Language;

    .end local v15    # "metadata":Lorg/restlet/data/Metadata;
    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 518
    .restart local v15    # "metadata":Lorg/restlet/data/Metadata;
    :cond_4
    instance-of v0, v15, Lorg/restlet/data/CharacterSet;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 519
    if-nez v4, :cond_5

    move-object v4, v15

    .line 520
    check-cast v4, Lorg/restlet/data/CharacterSet;

    goto :goto_2

    .line 522
    :cond_5
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v21

    const-string v22, "A representation variant can have only one character set. Please check your annotation value."

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 499
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v15    # "metadata":Lorg/restlet/data/Metadata;
    .end local v16    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Metadata;>;"
    :cond_6
    add-int/lit8 v7, v8, 0x1

    .local v7, "i$":I
    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .line 533
    .end local v5    # "extension":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_d

    .line 534
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8    # "i$":I
    .local v7, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/restlet/data/MediaType;

    .line 535
    .local v13, "mediaType":Lorg/restlet/data/MediaType;
    if-eqz v17, :cond_9

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 536
    :cond_9
    if-nez v17, :cond_a

    .line 537
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_a
    new-instance v18, Lorg/restlet/representation/Variant;

    .end local v18    # "variant":Lorg/restlet/representation/Variant;
    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lorg/restlet/representation/Variant;-><init>(Lorg/restlet/data/MediaType;)V

    .line 542
    .restart local v18    # "variant":Lorg/restlet/representation/Variant;
    if-eqz v10, :cond_b

    .line 543
    invoke-virtual/range {v18 .. v18}, Lorg/restlet/representation/Variant;->getLanguages()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 546
    :cond_b
    if-eqz v4, :cond_c

    .line 547
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/restlet/representation/Variant;->setCharacterSet(Lorg/restlet/data/CharacterSet;)V

    .line 550
    :cond_c
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 492
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "mediaType":Lorg/restlet/data/MediaType;
    :cond_d
    add-int/lit8 v7, v9, 0x1

    .local v7, "i$":I
    move v9, v7

    .end local v7    # "i$":I
    .restart local v9    # "i$":I
    goto/16 :goto_0

    .line 557
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "characterSet":Lorg/restlet/data/CharacterSet;
    .end local v6    # "extensions":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "languages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    .end local v12    # "len$":I
    .end local v14    # "mediaTypes":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    .end local v18    # "variant":Lorg/restlet/representation/Variant;
    .end local v19    # "variantValue":Ljava/lang/String;
    .end local v20    # "variants":[Ljava/lang/String;
    :cond_e
    return-object v17
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    instance-of v1, p1, Lorg/restlet/engine/resource/AnnotationInfo;

    .line 249
    .local v1, "result":Z
    if-eqz v1, :cond_11

    if-eq p1, p0, :cond_11

    move-object v0, p1

    .line 250
    check-cast v0, Lorg/restlet/engine/resource/AnnotationInfo;

    .line 253
    .local v0, "otherAnnotation":Lorg/restlet/engine/resource/AnnotationInfo;
    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_1
    move v1, v3

    .line 261
    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 262
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getResourceClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_4
    move v1, v3

    .line 269
    :cond_5
    :goto_1
    if-eqz v1, :cond_8

    .line 270
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    if-eqz v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_7
    move v1, v3

    .line 277
    :cond_8
    :goto_2
    if-eqz v1, :cond_b

    .line 278
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_a
    move v1, v3

    .line 284
    :cond_b
    :goto_3
    if-eqz v1, :cond_e

    .line 285
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_d
    move v1, v3

    .line 291
    :cond_e
    :goto_4
    if-eqz v1, :cond_11

    .line 292
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    :cond_f
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_10
    move v1, v3

    .line 298
    .end local v0    # "otherAnnotation":Lorg/restlet/engine/resource/AnnotationInfo;
    :cond_11
    :goto_5
    return v1

    .restart local v0    # "otherAnnotation":Lorg/restlet/engine/resource/AnnotationInfo;
    :cond_12
    move v1, v2

    .line 254
    goto/16 :goto_0

    :cond_13
    move v1, v2

    .line 262
    goto/16 :goto_1

    :cond_14
    move v1, v2

    .line 270
    goto :goto_2

    :cond_15
    move v1, v2

    .line 278
    goto :goto_3

    :cond_16
    move v1, v2

    .line 285
    goto :goto_4

    :cond_17
    move v1, v2

    .line 292
    goto :goto_5
.end method

.method public getInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->input:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaInputTypes()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v1, v3

    .line 355
    .local v1, "count":I
    new-array v0, v1, [Ljava/lang/Class;

    .line 357
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 358
    invoke-direct {p0, v2}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaInputType(I)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-object v0
.end method

.method public getJavaMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getJavaOutputType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethodImpl:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaActualType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getOutput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->output:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestVariants(Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Ljava/util/List;
    .locals 5
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p2, "converterService"    # Lorg/restlet/service/ConverterService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/service/MetadataService;",
            "Lorg/restlet/service/ConverterService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaInputTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 414
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 415
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/restlet/engine/resource/AnnotationInfo;->getVariants(Lorg/restlet/service/MetadataService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 417
    if-nez v2, :cond_0

    .line 418
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 419
    .local v1, "inputClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 420
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lorg/restlet/service/ConverterService;->getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;

    move-result-object v2

    .line 426
    .end local v1    # "inputClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object v2
.end method

.method public getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getResponseVariants(Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Ljava/util/List;
    .locals 3
    .param p1, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p2, "converterService"    # Lorg/restlet/service/ConverterService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/service/MetadataService;",
            "Lorg/restlet/service/ConverterService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/representation/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    .line 455
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/restlet/engine/resource/AnnotationInfo;->getVariants(Lorg/restlet/service/MetadataService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 457
    if-nez v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaOutputType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/restlet/service/ConverterService;->getVariants(Ljava/lang/Class;Lorg/restlet/representation/Variant;)Ljava/util/List;

    move-result-object v0

    .line 463
    :cond_0
    return-object v0
.end method

.method public getRestletMethod()Lorg/restlet/data/Method;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lorg/restlet/engine/resource/AnnotationInfo;->restletMethod:Lorg/restlet/data/Method;

    return-object v0
.end method

.method public isCompatible(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Z
    .locals 4
    .param p1, "restletMethod"    # Lorg/restlet/data/Method;
    .param p2, "queryParams"    # Lorg/restlet/data/Form;
    .param p3, "requestEntity"    # Lorg/restlet/representation/Representation;
    .param p4, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p5, "converterService"    # Lorg/restlet/service/ConverterService;

    .prologue
    .line 577
    const/4 v2, 0x1

    .line 580
    .local v2, "result":Z
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 581
    new-instance v1, Lorg/restlet/data/Form;

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/restlet/data/Form;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, "requiredParams":Lorg/restlet/data/Form;
    invoke-virtual {v1}, Lorg/restlet/data/Form;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 584
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 585
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/restlet/data/Form;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 590
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/restlet/data/Parameter;>;"
    .end local v1    # "requiredParams":Lorg/restlet/data/Form;
    :cond_0
    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getRestletMethod()Lorg/restlet/data/Method;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/restlet/data/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 595
    :cond_1
    if-eqz v2, :cond_2

    .line 596
    invoke-virtual {p0, p3, p4, p5}, Lorg/restlet/engine/resource/AnnotationInfo;->isCompatibleRequestEntity(Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Z

    move-result v2

    .line 601
    :cond_2
    return v2
.end method

.method public isCompatibleRequestEntity(Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Z
    .locals 4
    .param p1, "requestEntity"    # Lorg/restlet/representation/Representation;
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p3, "converterService"    # Lorg/restlet/service/ConverterService;

    .prologue
    .line 620
    const/4 v2, 0x1

    .line 622
    .local v2, "result":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/restlet/representation/Representation;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    invoke-virtual {p0, p2, p3}, Lorg/restlet/engine/resource/AnnotationInfo;->getRequestVariants(Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Ljava/util/List;

    move-result-object v1

    .line 626
    .local v1, "requestVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 628
    const/4 v2, 0x0

    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 631
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/representation/Variant;

    invoke-virtual {v3, p1}, Lorg/restlet/representation/Variant;->isCompatible(Lorg/restlet/representation/Variant;)Z

    move-result v2

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    .line 639
    .end local v1    # "requestVariants":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/representation/Variant;>;"
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationInfo [javaMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->javaMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resourceInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->resourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restletMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/restlet/engine/resource/AnnotationInfo;->restletMethod:Lorg/restlet/data/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/engine/resource/AnnotationInfo;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
