.class public final Lcom/google/inject/spi/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final injectionPoint:Lcom/google/inject/spi/InjectionPoint;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final nullable:Z

.field private final parameterIndex:I


# direct methods
.method constructor <init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V
    .locals 1
    .param p1, "injectionPoint"    # Lcom/google/inject/spi/InjectionPoint;
    .param p3, "nullable"    # Z
    .param p4, "parameterIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/Key",
            "<TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 47
    const-string v0, "key"

    invoke-static {p2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Key;

    iput-object v0, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    .line 48
    iput-boolean p3, p0, Lcom/google/inject/spi/Dependency;->nullable:Z

    .line 49
    iput p4, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    .line 50
    return-void
.end method

.method public static forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Dependency<*>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/InjectionPoint;

    .line 66
    .local v2, "injectionPoint":Lcom/google/inject/spi/InjectionPoint;
    invoke-virtual {v2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 68
    .end local v2    # "injectionPoint":Lcom/google/inject/spi/InjectionPoint;
    :cond_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v3

    return-object v3
.end method

.method public static get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/spi/Dependency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/inject/spi/Dependency;-><init>(Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/Key;ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    const/4 v1, 0x0

    .line 107
    instance-of v2, p1, Lcom/google/inject/spi/Dependency;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/google/inject/spi/Dependency;

    .line 109
    .local v0, "dependency":Lcom/google/inject/spi/Dependency;
    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    iget-object v3, v0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    iget-object v3, v0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 113
    .end local v0    # "dependency":Lcom/google/inject/spi/Dependency;
    :cond_0
    return v1
.end method

.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public getKey()Lcom/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    iget-object v0, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getParameterIndex()I
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    iget v0, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 103
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    iget-boolean v0, p0, Lcom/google/inject/spi/Dependency;->nullable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    .local p0, "this":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/inject/spi/Dependency;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    if-eqz v1, :cond_0

    .line 121
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/spi/Dependency;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 123
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/inject/spi/Dependency;->parameterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
