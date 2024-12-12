.class Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;
.super Ljava/lang/Object;
.source "NoOpAnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/NoOpAnnotatedBindingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpScopedBindingBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public asEagerSingleton()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/inject/Scope;

    .prologue
    .line 181
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
    .line 176
    .local p1, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    return-void
.end method
