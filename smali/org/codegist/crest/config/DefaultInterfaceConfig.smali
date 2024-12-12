.class Lorg/codegist/crest/config/DefaultInterfaceConfig;
.super Ljava/lang/Object;
.source "DefaultInterfaceConfig.java"

# interfaces
.implements Lorg/codegist/crest/config/InterfaceConfig;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lorg/codegist/crest/config/MethodConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaze:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lorg/codegist/crest/config/MethodConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Method;Lorg/codegist/crest/config/MethodConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codegist/crest/config/DefaultInterfaceConfig;->interfaze:Ljava/lang/Class;

    .line 39
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfig;->cache:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public getInterface()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfig;->interfaze:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethodConfig(Ljava/lang/reflect/Method;)Lorg/codegist/crest/config/MethodConfig;
    .locals 1
    .param p1, "meth"    # Ljava/lang/reflect/Method;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/codegist/crest/config/DefaultInterfaceConfig;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodConfig;

    return-object v0
.end method
