.class final Lcom/google/inject/internal/ProvisionListenerCallbackStore;
.super Ljava/lang/Object;
.source "ProvisionListenerCallbackStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;
    }
.end annotation


# static fields
.field private static final INTERNAL_BINDINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache",
            "<",
            "Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final listenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    const-class v1, Lcom/google/inject/Stage;

    invoke-static {v1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v1

    const-class v2, Ljava/util/logging/Logger;

    invoke-static {v2}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->INTERNAL_BINDINGS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/ProvisionListenerBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "listenerBindings":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ProvisionListenerBinding;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;

    invoke-direct {v1, p0}, Lcom/google/inject/internal/ProvisionListenerCallbackStore$1;-><init>(Lcom/google/inject/internal/ProvisionListenerCallbackStore;)V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    .line 59
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->listenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ProvisionListenerCallbackStore;Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ProvisionListenerCallbackStore;
    .param p1, "x1"    # Lcom/google/inject/Binding;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->create(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v0

    return-object v0
.end method

.method private create(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<TT;>;"
    const/4 v1, 0x0

    .line 93
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ProvisionListener;>;"
    iget-object v3, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->listenerBindings:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/ProvisionListenerBinding;

    .line 94
    .local v2, "provisionBinding":Lcom/google/inject/spi/ProvisionListenerBinding;
    invoke-virtual {v2}, Lcom/google/inject/spi/ProvisionListenerBinding;->getBindingMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    if-nez v1, :cond_1

    .line 96
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 98
    :cond_1
    invoke-virtual {v2}, Lcom/google/inject/spi/ProvisionListenerBinding;->getListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 101
    .end local v2    # "provisionBinding":Lcom/google/inject/spi/ProvisionListenerBinding;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    :cond_3
    invoke-static {}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->emptyListener()Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v3

    .line 106
    :goto_1
    return-object v3

    :cond_4
    new-instance v3, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-direct {v3, p1, v1}, Lcom/google/inject/internal/ProvisionListenerStackCallback;-><init>(Lcom/google/inject/Binding;Ljava/util/List;)V

    goto :goto_1
.end method


# virtual methods
.method public get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<TT;>;"
    sget-object v0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->INTERNAL_BINDINGS:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    new-instance v1, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore$KeyBinding;-><init>(Lcom/google/inject/Key;Lcom/google/inject/Binding;)V

    invoke-interface {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 71
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->emptyListener()Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v0

    goto :goto_0
.end method

.method remove(Lcom/google/inject/Binding;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "type":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->cache:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
