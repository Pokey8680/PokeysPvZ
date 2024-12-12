.class public final Lcom/google/inject/internal/PrivateElementsImpl;
.super Ljava/lang/Object;
.source "PrivateElementsImpl.java"

# interfaces
.implements Lcom/google/inject/spi/PrivateElements;


# instance fields
.field private elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private elementsMutable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private exposureBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/ExposureBuilder",
            "<*>;>;"
        }
    .end annotation
.end field

.field private injector:Lcom/google/inject/Injector;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 54
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 64
    const-string v0, "source"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    .line 65
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/ElementVisitor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "visitor":Lcom/google/inject/spi/ElementVisitor;, "Lcom/google/inject/spi/ElementVisitor<TT;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ElementVisitor;->visit(Lcom/google/inject/spi/PrivateElements;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addExposureBuilder(Lcom/google/inject/internal/ExposureBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ExposureBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "exposureBuilder":Lcom/google/inject/internal/ExposureBuilder;, "Lcom/google/inject/internal/ExposureBuilder<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 6
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 115
    iget-object v4, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    invoke-interface {p1, v4}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/inject/Binder;->newPrivateBinder()Lcom/google/inject/PrivateBinder;

    move-result-object v3

    .line 117
    .local v3, "privateBinder":Lcom/google/inject/PrivateBinder;
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Element;

    .line 118
    .local v0, "element":Lcom/google/inject/spi/Element;
    invoke-interface {v0, v3}, Lcom/google/inject/spi/Element;->applyTo(Lcom/google/inject/Binder;)V

    goto :goto_0

    .line 121
    .end local v0    # "element":Lcom/google/inject/spi/Element;
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 122
    iget-object v4, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->entrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/inject/Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/inject/PrivateBinder;->withSource(Ljava/lang/Object;)Lcom/google/inject/PrivateBinder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/Key;

    invoke-interface {v5, v4}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    goto :goto_1

    .line 125
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/inject/Key<*>;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elements:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method public getElementsMutable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->elementsMutable:Ljava/util/List;

    return-object v0
.end method

.method public getExposedKeys()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v3, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    if-nez v3, :cond_1

    .line 91
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 92
    .local v0, "exposedKeysToSourcesMutable":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/inject/Key<*>;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/ExposureBuilder;

    .line 93
    .local v1, "exposureBuilder":Lcom/google/inject/internal/ExposureBuilder;, "Lcom/google/inject/internal/ExposureBuilder<*>;"
    invoke-virtual {v1}, Lcom/google/inject/internal/ExposureBuilder;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/inject/internal/ExposureBuilder;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    .end local v1    # "exposureBuilder":Lcom/google/inject/internal/ExposureBuilder;, "Lcom/google/inject/internal/ExposureBuilder<*>;"
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 96
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposureBuilders:Ljava/util/List;

    .line 99
    .end local v0    # "exposedKeysToSourcesMutable":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/inject/Key<*>;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->keySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public getExposedSource(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    .line 129
    iget-object v1, p0, Lcom/google/inject/internal/PrivateElementsImpl;->exposedKeysToSources:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "source":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "%s not exposed by %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p0, v5, v2

    invoke-static {v1, v4, v5}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-object v0

    :cond_0
    move v1, v3

    .line 130
    goto :goto_0
.end method

.method public getInjector()Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public initInjector(Lcom/google/inject/Injector;)V
    .locals 2
    .param p1, "injector"    # Lcom/google/inject/Injector;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "injector already initialized"

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 86
    const-string v0, "injector"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Injector;

    iput-object v0, p0, Lcom/google/inject/internal/PrivateElementsImpl;->injector:Lcom/google/inject/Injector;

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const-class v0, Lcom/google/inject/spi/PrivateElements;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "exposedKeys"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getExposedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/PrivateElementsImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
