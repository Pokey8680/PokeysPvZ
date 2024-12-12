.class public Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;
.super Ljava/lang/Object;
.source "AnnotationDrivenInterfaceConfigFactory.java"

# interfaces
.implements Lorg/codegist/crest/config/InterfaceConfigFactory;


# instance fields
.field private final handlersRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final icbf:Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 0
    .param p1, "icbf"    # Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lorg/codegist/crest/config/annotate/AnnotationHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "handlersRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;Lorg/codegist/crest/config/annotate/AnnotationHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->handlersRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 50
    iput-object p1, p0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->icbf:Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;

    .line 51
    return-void
.end method


# virtual methods
.method public newConfig(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfig;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/config/InterfaceConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->icbf:Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;->newInstance(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;

    move-result-object v7

    .line 57
    .local v7, "config":Lorg/codegist/crest/config/InterfaceConfigBuilder;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v3, v5, v10

    .line 58
    .local v3, "annotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->handlersRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    move-object/from16 v24, v0

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/codegist/crest/config/annotate/AnnotationHandler;

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v7}, Lorg/codegist/crest/config/annotate/AnnotationHandler;->handleInterfaceAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/InterfaceConfigBuilder;)V

    .line 57
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .local v5, "arr$":[Ljava/lang/reflect/Method;
    array-length v12, v5

    const/4 v10, 0x0

    move v11, v10

    .end local v5    # "arr$":[Ljava/lang/reflect/Method;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v15, v5, v11

    .line 62
    .local v15, "meth":Ljava/lang/reflect/Method;
    invoke-interface {v7, v15}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->startMethodConfig(Ljava/lang/reflect/Method;)Lorg/codegist/crest/config/MethodConfigBuilder;

    move-result-object v17

    .line 63
    .local v17, "methodConfigBuilder":Lorg/codegist/crest/config/MethodConfigBuilder;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v13, v6

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2
    if-ge v10, v13, :cond_1

    aget-object v16, v6, v10

    .line 64
    .local v16, "methAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->handlersRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    move-object/from16 v24, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/codegist/crest/config/annotate/AnnotationHandler;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/codegist/crest/config/annotate/AnnotationHandler;->handleMethodAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    .line 63
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 67
    .end local v16    # "methAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    .line 68
    .local v23, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 69
    .local v8, "genParamTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v22

    .line 70
    .local v22, "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, v23

    array-length v14, v0

    .local v14, "max":I
    :goto_3
    if-ge v9, v14, :cond_3

    .line 71
    aget-object v20, v8, v9

    .line 72
    .local v20, "pType":Ljava/lang/reflect/Type;
    aget-object v24, v23, v9

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lorg/codegist/common/reflect/Types;->getComponentClass(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 73
    .local v19, "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Ljava/lang/annotation/Annotation;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [[Ljava/lang/annotation/Annotation;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    aget-object v27, v22, v9

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lorg/codegist/common/collect/Arrays;->merge(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    .line 75
    .local v4, "annotations":[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/codegist/crest/config/MethodConfigBuilder;->startParamConfig(I)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v18

    .line 76
    .local v18, "methodParamConfigBuilder":Lorg/codegist/crest/config/ParamConfigBuilder;
    move-object v6, v4

    array-length v13, v6

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v13, :cond_2

    aget-object v21, v6, v10

    .line 77
    .local v21, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codegist/crest/config/AnnotationDrivenInterfaceConfigFactory;->handlersRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    move-object/from16 v24, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/codegist/crest/config/annotate/AnnotationHandler;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/codegist/crest/config/annotate/AnnotationHandler;->handleParameterAnnotation(Ljava/lang/annotation/Annotation;Lorg/codegist/crest/config/ParamConfigBuilder;)V

    .line 76
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 70
    .end local v21    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 61
    .end local v4    # "annotations":[Ljava/lang/annotation/Annotation;
    .end local v18    # "methodParamConfigBuilder":Lorg/codegist/crest/config/ParamConfigBuilder;
    .end local v19    # "pClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "pType":Ljava/lang/reflect/Type;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto/16 :goto_1

    .line 82
    .end local v6    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v8    # "genParamTypes":[Ljava/lang/reflect/Type;
    .end local v9    # "i":I
    .end local v13    # "len$":I
    .end local v14    # "max":I
    .end local v15    # "meth":Ljava/lang/reflect/Method;
    .end local v17    # "methodConfigBuilder":Lorg/codegist/crest/config/MethodConfigBuilder;
    .end local v22    # "paramAnnotations":[[Ljava/lang/annotation/Annotation;
    .end local v23    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    invoke-interface {v7}, Lorg/codegist/crest/config/InterfaceConfigBuilder;->build()Lorg/codegist/crest/config/InterfaceConfig;

    move-result-object v24

    return-object v24
.end method
