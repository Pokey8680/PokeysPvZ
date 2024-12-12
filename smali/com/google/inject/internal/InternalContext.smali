.class final Lcom/google/inject/internal/InternalContext;
.super Ljava/lang/Object;
.source "InternalContext.java"


# instance fields
.field private constructionContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/ConstructionContext",
            "<*>;>;"
        }
    .end annotation
.end field

.field private dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation
.end field

.field private final state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    .line 50
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/ConstructionContext",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ConstructionContext;

    .line 56
    .local v0, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/inject/internal/ConstructionContext;

    .end local v0    # "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    invoke-direct {v0}, Lcom/google/inject/internal/ConstructionContext;-><init>()V

    .line 58
    .restart local v0    # "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->constructionContexts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-object v0
.end method

.method public getDependency()Lcom/google/inject/spi/Dependency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    return-object v0
.end method

.method public getDependencyChain()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/DependencyAndSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 97
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder<Lcom/google/inject/spi/DependencyAndSource;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    new-instance v3, Lcom/google/inject/spi/DependencyAndSource;

    iget-object v2, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/Dependency;

    iget-object v4, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/inject/spi/DependencyAndSource;-><init>(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    .line 97
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method public popState()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "newDependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/InternalContext;->popState()V

    .line 79
    iput-object p1, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    .line 80
    return-void
.end method

.method public pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;
    .locals 2
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/Dependency",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    .line 70
    .local v0, "previous":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iput-object p1, p0, Lcom/google/inject/internal/InternalContext;->dependency:Lcom/google/inject/spi/Dependency;

    .line 71
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-object v0
.end method

.method public pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V
    .locals 2
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    iget-object v1, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/google/inject/internal/InternalContext;->state:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void

    .line 84
    :cond_0
    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v0

    goto :goto_0
.end method
