.class public Lcom/google/inject/NoOpAnnotatedBindingBuilder;
.super Ljava/lang/Object;
.source "NoOpAnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;,
        Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;,
        Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/binder/AnnotatedBindingBuilder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/NoOpAnnotatedBindingBuilder",
            "<TT;>.NoOp",
            "LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;

    invoke-direct {v0, v1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V

    iput-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 17
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V

    iput-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    .line 171
    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    return-object v0
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0
    .param p1, "annotation"    # Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/binder/LinkedBindingBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    return-object p0
.end method

.method public asEagerSingleton()V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    return-void
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/inject/Scope;

    .prologue
    .line 87
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "targetKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "implementation":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor",
            "<TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TS;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor",
            "<TS;>;",
            "Lcom/google/inject/TypeLiteral",
            "<+TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TS;>;"
    .local p2, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TS;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "provider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toProvider(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "providerType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+Ljavax/inject/Provider<+TT;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "providerType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/inject/Provider<+TT;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object v0
.end method
