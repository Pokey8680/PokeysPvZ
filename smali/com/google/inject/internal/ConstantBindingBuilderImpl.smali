.class public final Lcom/google/inject/internal/ConstantBindingBuilderImpl;
.super Lcom/google/inject/internal/AbstractBindingBuilder;
.source "ConstantBindingBuilderImpl.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;
.implements Lcom/google/inject/binder/ConstantBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/AbstractBindingBuilder",
        "<TT;>;",
        "Lcom/google/inject/binder/AnnotatedConstantBindingBuilder;",
        "Lcom/google/inject/binder/ConstantBindingBuilder;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .param p1, "binder"    # Lcom/google/inject/Binder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Element;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    .local p2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Element;>;"
    sget-object v0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->NULL_KEY:Lcom/google/inject/Key;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/inject/internal/AbstractBindingBuilder;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lcom/google/inject/Key;)V

    .line 42
    return-void
.end method

.method private toConstant(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 101
    move-object v7, p1

    .line 103
    .local v7, "typeAsClassT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v5, p2

    .line 105
    .local v5, "instanceAsT":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->keyTypeIsSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->binder:Lcom/google/inject/Binder;

    const-string v1, "Constant value is set more than once."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->getBinding()Lcom/google/inject/internal/BindingImpl;

    move-result-object v6

    .line 112
    .local v6, "base":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v2

    .line 120
    .local v2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    :goto_1
    if-nez v5, :cond_1

    .line 121
    iget-object v0, p0, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->binder:Lcom/google/inject/Binder;

    const-string v1, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_1
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getScoping()Lcom/google/inject/internal/Scoping;

    move-result-object v3

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->setBinding(Lcom/google/inject/internal/BindingImpl;)Lcom/google/inject/internal/BindingImpl;

    goto :goto_0

    .line 114
    .end local v2    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    :cond_2
    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {v6}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .restart local v2    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    goto :goto_1

    .line 117
    .end local v2    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    :cond_3
    invoke-static {v7}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v2

    .restart local v2    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    goto :goto_1
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/google/inject/binder/ConstantBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/binder/ConstantBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->annotatedWithInternal(Ljava/lang/Class;)Lcom/google/inject/internal/BindingImpl;

    .line 46
    return-object p0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/ConstantBindingBuilder;
    .locals 0
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 50
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->annotatedWithInternal(Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/BindingImpl;

    .line 51
    return-object p0
.end method

.method public to(B)V
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 87
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Byte;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public to(C)V
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 83
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Character;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public to(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 71
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Double;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public to(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 75
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public to(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public to(J)V
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 63
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public to(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    .local p1, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public to(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(TE;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    .local p1, "value":Ljava/lang/Enum;, "TE;"
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public to(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public to(S)V
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 79
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Short;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public to(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 67
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/inject/internal/ConstantBindingBuilderImpl;->toConstant(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Lcom/google/inject/internal/ConstantBindingBuilderImpl;, "Lcom/google/inject/internal/ConstantBindingBuilderImpl<TT;>;"
    const-string v0, "ConstantBindingBuilder"

    return-object v0
.end method
