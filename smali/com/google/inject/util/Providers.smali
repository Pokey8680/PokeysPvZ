.class public final Lcom/google/inject/util/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/util/Providers$1;,
        Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;,
        Lcom/google/inject/util/Providers$GuicifiedProvider;,
        Lcom/google/inject/util/Providers$ConstantProvider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guicify(Ljavax/inject/Provider;)Lcom/google/inject/Provider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    const/4 v7, 0x0

    .line 90
    instance-of v6, p0, Lcom/google/inject/Provider;

    if-eqz v6, :cond_0

    .line 91
    check-cast p0, Lcom/google/inject/Provider;

    .line 107
    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    .local v0, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    .local v3, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :goto_0
    return-object p0

    .line 94
    .end local v0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    .end local v3    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    .restart local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_0
    const-string v6, "provider"

    invoke-static {p0, v6}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 97
    .restart local v0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/google/inject/spi/InjectionPoint;->forInstanceMethodsAndFields(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    .line 99
    .restart local v3    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    new-instance p0, Lcom/google/inject/util/Providers$GuicifiedProvider;

    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0, v0, v7}, Lcom/google/inject/util/Providers$GuicifiedProvider;-><init>(Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V

    goto :goto_0

    .line 102
    .restart local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 103
    .local v5, "mutableDeps":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/Dependency<*>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/spi/InjectionPoint;

    .line 104
    .local v4, "ip":Lcom/google/inject/spi/InjectionPoint;
    invoke-virtual {v4}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 106
    .end local v4    # "ip":Lcom/google/inject/spi/InjectionPoint;
    :cond_2
    invoke-static {v5}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    .line 107
    .local v1, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/Dependency<*>;>;"
    new-instance p0, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;

    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0, v1, v0, v7}, Lcom/google/inject/util/Providers$GuicifiedProviderWithDependencies;-><init>(Ljava/util/Set;Ljavax/inject/Provider;Lcom/google/inject/util/Providers$1;)V

    goto :goto_0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/google/inject/util/Providers$ConstantProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/util/Providers$ConstantProvider;-><init>(Ljava/lang/Object;Lcom/google/inject/util/Providers$1;)V

    return-object v0
.end method
