.class public Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;
.super Ljava/lang/Object;
.source "DefaultInterfaceConfigBuilderFactory.java"

# interfaces
.implements Lorg/codegist/crest/config/InterfaceConfigBuilderFactory;


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

.field private final mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V
    .locals 0
    .param p1, "crestConfig"    # Lorg/codegist/crest/CRestConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/CRestConfig;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/String;",
            "Lorg/codegist/crest/serializer/Deserializer;",
            ">;",
            "Lorg/codegist/crest/util/ComponentRegistry",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codegist/crest/serializer/Serializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "mimeDeserializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/String;Lorg/codegist/crest/serializer/Deserializer;>;"
    .local p3, "classSerializerRegistry":Lorg/codegist/crest/util/ComponentRegistry;, "Lorg/codegist/crest/util/ComponentRegistry<Ljava/lang/Class<*>;Lorg/codegist/crest/serializer/Serializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->crestConfig:Lorg/codegist/crest/CRestConfig;

    .line 44
    iput-object p2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 45
    iput-object p3, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    .line 46
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Lorg/codegist/crest/config/InterfaceConfigBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codegist/crest/config/InterfaceConfigBuilder;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;

    iget-object v1, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->crestConfig:Lorg/codegist/crest/CRestConfig;

    iget-object v2, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->mimeDeserializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    iget-object v3, p0, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilderFactory;->classSerializerRegistry:Lorg/codegist/crest/util/ComponentRegistry;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/codegist/crest/config/DefaultInterfaceConfigBuilder;-><init>(Ljava/lang/Class;Lorg/codegist/crest/CRestConfig;Lorg/codegist/crest/util/ComponentRegistry;Lorg/codegist/crest/util/ComponentRegistry;)V

    return-object v0
.end method
