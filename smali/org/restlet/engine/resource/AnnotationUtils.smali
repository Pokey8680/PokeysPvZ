.class public Lorg/restlet/engine/resource/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/restlet/engine/resource/AnnotationUtils;->cache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method private static addAnnotationDescriptors(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/util/List;
    .locals 15
    .param p3, "javaMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    .local p1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "initialResourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, p0

    .line 79
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-nez v9, :cond_0

    .line 80
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 83
    .restart local v9    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v2, v3, v5

    .line 84
    .local v2, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    const-class v14, Lorg/restlet/engine/Method;

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 87
    .local v7, "methodAnnotation":Ljava/lang/annotation/Annotation;
    if-eqz v7, :cond_2

    .line 88
    check-cast v7, Lorg/restlet/engine/Method;

    .end local v7    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v7}, Lorg/restlet/engine/Method;->value()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/restlet/data/Method;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Method;

    move-result-object v8

    .line 92
    .local v8, "restletMethod":Lorg/restlet/data/Method;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "toString":Ljava/lang/String;
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v10, v13, 0x8

    .line 95
    .local v10, "startIndex":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .line 96
    .local v4, "endIndex":I
    const/4 v12, 0x0

    .line 98
    .local v12, "value":Ljava/lang/String;
    if-le v4, v10, :cond_1

    .line 99
    invoke-virtual {v11, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 101
    const-string v13, ""

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 102
    const/4 v12, 0x0

    .line 105
    :cond_1
    new-instance v13, Lorg/restlet/engine/resource/AnnotationInfo;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v8, v1, v12}, Lorg/restlet/engine/resource/AnnotationInfo;-><init>(Ljava/lang/Class;Lorg/restlet/data/Method;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v4    # "endIndex":I
    .end local v8    # "restletMethod":Lorg/restlet/data/Method;
    .end local v10    # "startIndex":I
    .end local v11    # "toString":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    return-object v9
.end method

.method private static addAnnotations(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "initialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, p0

    .line 130
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-eqz p1, :cond_4

    const-class v7, Lorg/restlet/resource/ServerResource;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 132
    if-nez v6, :cond_0

    .line 133
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 137
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v4, v0, v1

    .line 139
    .local v4, "javaMethod":Ljava/lang/reflect/Method;
    invoke-static {v6, p1, p2, v4}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotationDescriptors(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/util/List;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "i$":I
    .end local v4    # "javaMethod":Ljava/lang/reflect/Method;
    .end local v5    # "len$":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v4, v0, v1

    .line 145
    .restart local v4    # "javaMethod":Ljava/lang/reflect/Method;
    invoke-static {v6, p1, p2, v4}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotationDescriptors(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/util/List;

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v4    # "javaMethod":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 153
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v3, :cond_3

    .line 154
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v2, v0, v1

    .line 155
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6, v2, p2}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotations(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7, p2}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotations(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    .line 164
    .end local v1    # "i$":I
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "len$":I
    :cond_4
    return-object v6
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lorg/restlet/engine/resource/AnnotationUtils;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 172
    return-void
.end method

.method public static getAnnotation(Ljava/util/List;Ljava/lang/reflect/Method;)Lorg/restlet/engine/resource/AnnotationInfo;
    .locals 3
    .param p1, "javaMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lorg/restlet/engine/resource/AnnotationInfo;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/resource/AnnotationInfo;

    .line 188
    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    invoke-virtual {v0}, Lorg/restlet/engine/resource/AnnotationInfo;->getJavaMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    .end local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAnnotation(Ljava/util/List;Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Lorg/restlet/engine/resource/AnnotationInfo;
    .locals 7
    .param p1, "restletMethod"    # Lorg/restlet/data/Method;
    .param p2, "query"    # Lorg/restlet/data/Form;
    .param p3, "entity"    # Lorg/restlet/representation/Representation;
    .param p4, "metadataService"    # Lorg/restlet/service/MetadataService;
    .param p5, "converterService"    # Lorg/restlet/service/ConverterService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;",
            "Lorg/restlet/data/Method;",
            "Lorg/restlet/data/Form;",
            "Lorg/restlet/representation/Representation;",
            "Lorg/restlet/service/MetadataService;",
            "Lorg/restlet/service/ConverterService;",
            ")",
            "Lorg/restlet/engine/resource/AnnotationInfo;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "annotations":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-eqz p0, :cond_1

    .line 220
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/resource/AnnotationInfo;

    .local v0, "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 221
    invoke-virtual/range {v0 .. v5}, Lorg/restlet/engine/resource/AnnotationInfo;->isCompatible(Lorg/restlet/data/Method;Lorg/restlet/data/Form;Lorg/restlet/representation/Representation;Lorg/restlet/service/MetadataService;Lorg/restlet/service/ConverterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    .end local v0    # "annotationInfo":Lorg/restlet/engine/resource/AnnotationInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAnnotations(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lorg/restlet/engine/resource/AnnotationUtils;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 241
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-nez v1, :cond_0

    .line 243
    invoke-static {v1, p0, p0}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotations(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 246
    sget-object v2, Lorg/restlet/engine/resource/AnnotationUtils;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    .local v0, "prev":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    if-eqz v0, :cond_0

    .line 250
    move-object v1, v0

    .line 254
    .end local v0    # "prev":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/engine/resource/AnnotationInfo;>;"
    :cond_0
    return-object v1
.end method

.method public static getAnnotations(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/util/List;
    .locals 1
    .param p1, "javaMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/resource/AnnotationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p0, p1}, Lorg/restlet/engine/resource/AnnotationUtils;->addAnnotationDescriptors(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
