.class public Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;
.super Ljava/lang/Object;
.source "DefaultParamConfigBuilderFactory.java"

# interfaces
.implements Lorg/codegist/crest/config/ParamConfigBuilderFactory;


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

.field private final crestConfig:Lorg/codegist/crest/CRestConfig;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;->crestConfig:Lorg/codegist/crest/CRestConfig;

    .line 43
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 44
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lorg/codegist/crest/config/ParamConfigBuilder;
    .locals 3
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lorg/codegist/crest/config/ParamConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codegist/crest/config/DefaultParamConfigBuilder;

    iget-object v1, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;->crestConfig:Lorg/codegist/crest/CRestConfig;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultParamConfigBuilderFactory;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/codegist/crest/config/DefaultParamConfigBuilder;-><init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method
