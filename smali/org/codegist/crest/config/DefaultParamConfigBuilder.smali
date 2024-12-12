.class Lorg/codegist/crest/config/DefaultParamConfigBuilder;
.super Lorg/codegist/crest/config/ConfigBuilder;
.source "DefaultParamConfigBuilder.java"

# interfaces
.implements Lorg/codegist/crest/config/ParamConfigBuilder;


# instance fields
.field private final classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private encoded:Ljava/lang/Boolean;

.field private final genericType:Ljava/lang/reflect/Type;

.field private listSeparator:Ljava/lang/String;

.field private final metas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final paramProcessor:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/param/ParamProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lorg/codegist/crest/config/MethodConfigBuilder;

.field private serializer:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/codegist/crest/config/ParamType;


# direct methods
.method constructor <init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .param p4, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/config/MethodConfigBuilder;)V

    .line 61
    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/config/MethodConfigBuilder;)V
    .locals 4
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .param p4, "genericType"    # Ljava/lang/reflect/Type;
    .param p5, "parent"    # Lorg/codegist/crest/config/MethodConfigBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lorg/codegist/crest/config/MethodConfigBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p1}, Lorg/codegist/crest/config/ConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;)V

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    .line 51
    iput-object v3, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    .line 52
    iput-object v3, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->defaultValue:Ljava/lang/String;

    .line 53
    invoke-static {}, Lorg/codegist/crest/config/ParamType;->getDefault()Lorg/codegist/crest/config/ParamType;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    .line 54
    iput-object v3, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->listSeparator:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    .line 56
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->encoded:Ljava/lang/Boolean;

    .line 65
    iput-object p5, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->parent:Lorg/codegist/crest/config/MethodConfigBuilder;

    .line 66
    invoke-static {p3, p4}, Lorg/codegist/common/reflect/Types;->getComponentClass(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->clazz:Ljava/lang/Class;

    .line 67
    invoke-static {p3, p4}, Lorg/codegist/common/reflect/Types;->getComponentType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->genericType:Ljava/lang/reflect/Type;

    .line 68
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 70
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_NAME:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    .line 71
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_VALUE:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->defaultValue:Ljava/lang/String;

    .line 72
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codegist/crest/config/ParamType;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    .line 73
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_LIST_SEPARATOR:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->listSeparator:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->listSeparator:Ljava/lang/String;

    .line 74
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_SERIALIZER:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    .line 75
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_ENCODED:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->encoded:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->encoded:Ljava/lang/Boolean;

    .line 76
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_PROCESSOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->paramProcessor:Ljava/lang/Class;

    .line 78
    sget-object v1, Lorg/codegist/crest/config/ParamConfig;->PARAM_CONFIG_DEFAULT_METAS:Ljava/lang/String;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-virtual {p0, v1, v2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->override(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 79
    .local v0, "pMetas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 81
    iget-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    :cond_0
    return-void
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    const-string v1, "Parameter name is mandatory. This is probably due to a missing or empty named param annotation (one of the following: @CookieParam, @FormParam, @HeaderParam, @MatrixParam, @MultiPartParam, @PathParam, @QueryParam).\nLocation information:\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lorg/codegist/common/lang/State;->notBlank(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-void
.end method


# virtual methods
.method public build()Lorg/codegist/crest/config/ParamConfig;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->validate()V

    .line 90
    new-instance v0, Lorg/codegist/crest/config/DefaultParamConfig;

    iget-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->genericType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->defaultValue:Ljava/lang/String;

    iget-object v5, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    iget-object v6, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    iget-object v7, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    invoke-virtual {p0, v7}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codegist/crest/serializer/Serializer;

    :goto_0
    sget-object v8, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    iget-object v9, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {v8, v9}, Lorg/codegist/crest/config/ParamType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lorg/codegist/crest/config/ParamType;->HEADER:Lorg/codegist/crest/config/ParamType;

    iget-object v9, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {v8, v9}, Lorg/codegist/crest/config/ParamType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_1
    iget-object v9, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->paramProcessor:Ljava/lang/Class;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->paramProcessor:Ljava/lang/Class;

    invoke-virtual {p0, v9}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->instantiate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/codegist/crest/param/ParamProcessor;

    :goto_2
    invoke-direct/range {v0 .. v9}, Lorg/codegist/crest/config/DefaultParamConfig;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/codegist/crest/config/ParamType;Ljava/util/Map;Lorg/codegist/crest/serializer/Serializer;ZLorg/codegist/crest/param/ParamProcessor;)V

    return-object v0

    :cond_1
    iget-object v7, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    iget-object v8, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->clazz:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Lorg/codegist/crest/util/ComponentRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codegist/crest/serializer/Serializer;

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->encoded:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    iget-object v10, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->listSeparator:Ljava/lang/String;

    invoke-static {v9, v10}, Lorg/codegist/crest/param/ParamProcessors;->newInstance(Lorg/codegist/crest/config/ParamType;Ljava/lang/String;)Lorg/codegist/crest/param/ParamProcessor;

    move-result-object v9

    goto :goto_2
.end method

.method public forCookie()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forForm()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forHeader()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lorg/codegist/crest/config/ParamType;->HEADER:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forMatrix()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lorg/codegist/crest/config/ParamType;->MATRIX:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forMultiPart()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-static {v0}, Lorg/codegist/crest/util/MultiParts;->asMultipart(Ljava/util/Map;)V

    .line 169
    invoke-virtual {p0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->forForm()Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forPath()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lorg/codegist/crest/config/ParamType;->PATH:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public forQuery()Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {p0, v0}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->defaultValue:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setEncoded(Z)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1
    .param p1, "encoded"    # Z

    .prologue
    .line 128
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->encoded:Ljava/lang/Boolean;

    .line 129
    return-object p0
.end method

.method public setListSeparator(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 0
    .param p1, "listSeparator"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->listSeparator:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public setMetaDatas(Ljava/util/Map;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->metas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->name:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setSerializer(Ljava/lang/Class;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/codegist/crest/serializer/Serializer;>;"
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->serializer:Ljava/lang/Class;

    .line 140
    return-object p0
.end method

.method public setType(Lorg/codegist/crest/config/ParamType;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 0
    .param p1, "type"    # Lorg/codegist/crest/config/ParamType;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    .line 119
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v0, Lorg/codegist/common/lang/ToStringBuilder;

    const-string v1, "Param"

    invoke-direct {v0, v1}, Lorg/codegist/common/lang/ToStringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "class"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->type:Lorg/codegist/crest/config/ParamType;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    const-string v1, "method"

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;->parent:Lorg/codegist/crest/config/MethodConfigBuilder;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/common/lang/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/codegist/common/lang/ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/common/lang/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
