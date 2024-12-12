.class final Lcom/google/inject/internal/ProviderInstanceBindingImpl;
.super Lcom/google/inject/internal/BindingImpl;
.source "ProviderInstanceBindingImpl.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderInstanceBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/BindingImpl",
        "<TT;>;",
        "Lcom/google/inject/spi/ProviderInstanceBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field final providerInstance:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Ljavax/inject/Provider;Ljava/util/Set;)V
    .locals 1
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .param p5, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljavax/inject/Provider",
            "<+TT;>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    .local p6, "providerInstance":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p7, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/inject/internal/BindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;)V

    .line 45
    iput-object p6, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    .line 46
    invoke-static {p7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p3, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Ljavax/inject/Provider",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    .local p5, "providerInstance":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/BindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;)V

    .line 52
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 53
    iput-object p5, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    .line 54
    return-void
.end method


# virtual methods
.method public acceptTargetVisitor(Lcom/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor",
            "<-TT;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<-TT;TV;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    instance-of v0, v0, Lcom/google/inject/spi/ProviderWithExtensionVisitor;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    check-cast v0, Lcom/google/inject/spi/ProviderWithExtensionVisitor;

    invoke-interface {v0, p1, p0}, Lcom/google/inject/spi/ProviderWithExtensionVisitor;->acceptExtensionVisitor(Lcom/google/inject/spi/BindingTargetVisitor;Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public applyTo(Lcom/google/inject/Binder;)V
    .locals 3
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 95
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getUserSuppliedProvider()Ljavax/inject/Provider;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Scoping;->applyTo(Lcom/google/inject/binder/ScopedBindingBuilder;)V

    .line 97
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    const/4 v1, 0x0

    .line 111
    instance-of v2, p1, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    .line 113
    .local v0, "o":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<*>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/inject/internal/Scoping;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    invoke-static {v2, v3}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 117
    .end local v0    # "o":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<*>;"
    :cond_0
    return v1
.end method

.method public getDependencies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    instance-of v0, v0, Lcom/google/inject/spi/HasDependencies;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    check-cast v0, Lcom/google/inject/spi/HasDependencies;

    invoke-interface {v0}, Lcom/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-static {v0}, Lcom/google/inject/spi/Dependency;->forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getInjectionPoints()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getProviderInstance()Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Provider",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/google/inject/util/Providers;->guicify(Ljavax/inject/Provider;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method public getUserSuppliedProvider()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 123
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    const-class v0, Lcom/google/inject/spi/ProviderInstanceBinding;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKey(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    iget-object v5, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public withScoping(Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/BindingImpl;
    .locals 6
    .param p1, "scoping"    # Lcom/google/inject/internal/Scoping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Scoping;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/inject/internal/ProviderInstanceBindingImpl;, "Lcom/google/inject/internal/ProviderInstanceBindingImpl<TT;>;"
    new-instance v0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    iget-object v4, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->injectionPoints:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    iget-object v5, p0, Lcom/google/inject/internal/ProviderInstanceBindingImpl;->providerInstance:Ljavax/inject/Provider;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljavax/inject/Provider;)V

    return-object v0
.end method
