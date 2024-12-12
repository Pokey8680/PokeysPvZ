.class Lorg/codegist/crest/config/DefaultParamConfig;
.super Ljava/lang/Object;
.source "DefaultParamConfig.java"

# interfaces
.implements Lorg/codegist/crest/config/ParamConfig;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final defaultValue:Ljava/lang/String;

.field private final encoded:Z

.field private final genericType:Ljava/lang/reflect/Type;

.field private final metadatas:Ljava/util/Map;
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

.field private final name:Ljava/lang/String;

.field private final paramProcessor:Lorg/codegist/crest/param/ParamProcessor;

.field private final paramType:Lorg/codegist/crest/config/ParamType;

.field private final serializer:Lorg/codegist/crest/serializer/Serializer;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/codegist/crest/config/ParamType;Ljava/util/Map;Lorg/codegist/crest/serializer/Serializer;ZLorg/codegist/crest/param/ParamProcessor;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "paramType"    # Lorg/codegist/crest/config/ParamType;
    .param p7, "serializer"    # Lorg/codegist/crest/serializer/Serializer;
    .param p8, "encoded"    # Z
    .param p9, "paramProcessor"    # Lorg/codegist/crest/param/ParamProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/config/ParamType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/codegist/crest/serializer/Serializer;",
            "Z",
            "Lorg/codegist/crest/param/ParamProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "metadatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfig;->genericType:Ljava/lang/reflect/Type;

    .line 50
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultParamConfig;->clazz:Ljava/lang/Class;

    .line 51
    iput-object p3, p0, Lorg/codegist/crest/config/DefaultParamConfig;->name:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lorg/codegist/crest/config/DefaultParamConfig;->defaultValue:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lorg/codegist/crest/config/DefaultParamConfig;->paramType:Lorg/codegist/crest/config/ParamType;

    .line 54
    iput-object p7, p0, Lorg/codegist/crest/config/DefaultParamConfig;->serializer:Lorg/codegist/crest/serializer/Serializer;

    .line 55
    iput-boolean p8, p0, Lorg/codegist/crest/config/DefaultParamConfig;->encoded:Z

    .line 56
    iput-object p9, p0, Lorg/codegist/crest/config/DefaultParamConfig;->paramProcessor:Lorg/codegist/crest/param/ParamProcessor;

    .line 57
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->metadatas:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDatas()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->metadatas:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParamProcessor()Lorg/codegist/crest/param/ParamProcessor;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->paramProcessor:Lorg/codegist/crest/param/ParamProcessor;

    return-object v0
.end method

.method public getSerializer()Lorg/codegist/crest/serializer/Serializer;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->serializer:Lorg/codegist/crest/serializer/Serializer;

    return-object v0
.end method

.method public getType()Lorg/codegist/crest/config/ParamType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->paramType:Lorg/codegist/crest/config/ParamType;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getValueGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->genericType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isEncoded()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/codegist/crest/config/DefaultParamConfig;->encoded:Z

    return v0
.end method
