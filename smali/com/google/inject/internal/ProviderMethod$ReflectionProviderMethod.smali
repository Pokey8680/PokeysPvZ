.class final Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;
.super Lcom/google/inject/internal/ProviderMethod;
.source "ProviderMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProviderMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectionProviderMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderMethod",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 8
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Provider",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;, "Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "dependencies":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lcom/google/inject/spi/Dependency<*>;>;"
    .local p5, "parameterProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Provider<*>;>;"
    .local p6, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/ProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Lcom/google/inject/internal/ProviderMethod$1;)V

    .line 246
    return-void
.end method


# virtual methods
.method doProvision([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;, "Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
