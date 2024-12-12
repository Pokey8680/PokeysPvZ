.class Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
.super Ljava/lang/Object;
.source "NoOpAnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/NoOpAnnotatedBindingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoOpLinkedBindingBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/binder/LinkedBindingBuilder",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;


# direct methods
.method private constructor <init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    iput-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/inject/NoOpAnnotatedBindingBuilder;
    .param p2, "x1"    # Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;

    .prologue
    .line 99
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    invoke-direct {p0, p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)V

    return-void
.end method


# virtual methods
.method public asEagerSingleton()V
    .locals 0

    .prologue
    .line 163
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    return-void
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/inject/Scope;

    .prologue
    .line 158
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
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
    .line 153
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method

.method public to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "targetKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TU;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "implementation":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TU;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "implementation":Ljava/lang/Class;, "Ljava/lang/Class<+TU;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TU;>(",
            "Ljava/lang/reflect/Constructor",
            "<TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TS;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TU;>(",
            "Ljava/lang/reflect/Constructor",
            "<TS;>;",
            "Lcom/google/inject/TypeLiteral",
            "<+TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TS;>;"
    .local p2, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+TS;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "instance":Ljava/lang/Object;, "TU;"
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
            "<+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TU;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "provider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<+TU;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

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
            "<+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "providerType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<+Ljavax/inject/Provider<+TU;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

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
            "<+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "providerType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/inject/Provider<+TU;>;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;, "Lcom/google/inject/NoOpAnnotatedBindingBuilder<TT;>.NoOpLinkedBindingBuilder<TU;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TU;>;"
    iget-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {v0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    return-object v0
.end method
