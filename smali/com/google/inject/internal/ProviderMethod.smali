.class public abstract Lcom/google/inject/internal/ProviderMethod;
.super Ljava/lang/Object;
.source "ProviderMethod.java"

# interfaces
.implements Lcom/google/inject/spi/ProviderWithExtensionVisitor;
.implements Lcom/google/inject/spi/HasDependencies;
.implements Lcom/google/inject/spi/ProvidesMethodBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProviderMethod$1;,
        Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/ProviderWithExtensionVisitor",
        "<TT;>;",
        "Lcom/google/inject/spi/HasDependencies;",
        "Lcom/google/inject/spi/ProvidesMethodBinding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final exposed:Z

.field protected final instance:Ljava/lang/Object;

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final method:Ljava/lang/reflect/Method;

.field private final parameterProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Provider",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final scopeAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V
    .locals 1
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
    .line 97
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p4, "dependencies":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lcom/google/inject/spi/Dependency<*>;>;"
    .local p5, "parameterProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Provider<*>;>;"
    .local p6, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    .line 99
    iput-object p6, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    .line 100
    iput-object p3, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    .line 101
    iput-object p4, p0, Lcom/google/inject/internal/ProviderMethod;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 102
    iput-object p2, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    .line 103
    iput-object p5, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    .line 104
    const-class v0, Lcom/google/inject/Exposed;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Lcom/google/inject/internal/ProviderMethod$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/inject/Key;
    .param p2, "x1"    # Ljava/lang/reflect/Method;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/lang/Class;
    .param p7, "x6"    # Lcom/google/inject/internal/ProviderMethod$1;

    .prologue
    .line 49
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/inject/internal/ProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-void
.end method

.method static create(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Z)Lcom/google/inject/internal/ProviderMethod;
    .locals 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p6, "skipFastClassGeneration"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
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
            ">;Z)",
            "Lcom/google/inject/internal/ProviderMethod",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p3, "dependencies":Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<Lcom/google/inject/spi/Dependency<*>;>;"
    .local p4, "parameterProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Provider<*>;>;"
    .local p5, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    .line 74
    .local v7, "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    :cond_1
    new-instance v0, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/ProviderMethod$ReflectionProviderMethod;-><init>(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public acceptExtensionVisitor(Lcom/google/inject/spi/BindingTargetVisitor;Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/BindingTargetVisitor",
            "<TB;TV;>;",
            "Lcom/google/inject/spi/ProviderInstanceBinding",
            "<+TB;>;)TV;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    .local p1, "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<TB;TV;>;"
    .local p2, "binding":Lcom/google/inject/spi/ProviderInstanceBinding;, "Lcom/google/inject/spi/ProviderInstanceBinding<+TB;>;"
    instance-of v0, p1, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;

    .end local p1    # "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<TB;TV;>;"
    invoke-interface {p1, p0}, Lcom/google/inject/spi/ProvidesMethodTargetVisitor;->visit(Lcom/google/inject/spi/ProvidesMethodBinding;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    .restart local p1    # "visitor":Lcom/google/inject/spi/BindingTargetVisitor;, "Lcom/google/inject/spi/BindingTargetVisitor<TB;TV;>;"
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/inject/spi/BindingTargetVisitor;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public configure(Lcom/google/inject/Binder;)V
    .locals 2
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 125
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->scopeAnnotation:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 133
    :goto_0
    iget-boolean v0, p0, Lcom/google/inject/internal/ProviderMethod;->exposed:Z

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Lcom/google/inject/PrivateBinder;

    .end local p1    # "binder":Lcom/google/inject/Binder;
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/PrivateBinder;->expose(Lcom/google/inject/Key;)V

    .line 138
    :cond_0
    return-void

    .line 130
    .restart local p1    # "binder":Lcom/google/inject/Binder;
    :cond_1
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    goto :goto_0
.end method

.method abstract doProvision([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    const/4 v1, 0x0

    .line 180
    instance-of v2, p1, Lcom/google/inject/internal/ProviderMethod;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 181
    check-cast v0, Lcom/google/inject/internal/ProviderMethod;

    .line 182
    .local v0, "o":Lcom/google/inject/internal/ProviderMethod;
    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 185
    .end local v0    # "o":Lcom/google/inject/internal/ProviderMethod;
    :cond_0
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v4, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Object;

    .line 142
    .local v2, "parameters":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/google/inject/internal/ProviderMethod;->parameterProviders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/Provider;

    invoke-interface {v4}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/inject/internal/ProviderMethod;->doProvision([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 149
    .local v3, "result":Ljava/lang/Object;, "TT;"
    return-object v3

    .line 150
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 152
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/google/inject/internal/Exceptions;->rethrowCause(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
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
    .line 162
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->dependencies:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method

.method public getEnclosingInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->instance:Ljava/lang/Object;

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
    .line 108
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->key:Lcom/google/inject/Key;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 194
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    .local p0, "this":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Provides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {v1}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
