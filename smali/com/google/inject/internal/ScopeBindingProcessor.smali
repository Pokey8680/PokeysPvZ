.class final Lcom/google/inject/internal/ScopeBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "ScopeBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 36
    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "command"    # Lcom/google/inject/spi/ScopeBinding;

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v3

    const-string v4, "scope"

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/Scope;

    .line 40
    .local v2, "scope":Lcom/google/inject/Scope;
    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "annotation type"

    invoke-static {v3, v4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 42
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {v0}, Lcom/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v3, v0}, Lcom/google/inject/internal/Errors;->missingScopeAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v3, v0}, Lcom/google/inject/internal/Errors;->missingRuntimeRetention(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    .line 52
    :cond_1
    iget-object v3, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v3, v0}, Lcom/google/inject/internal/State;->getScopeBinding(Ljava/lang/Class;)Lcom/google/inject/spi/ScopeBinding;

    move-result-object v1

    .line 53
    .local v1, "existing":Lcom/google/inject/spi/ScopeBinding;
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    iget-object v3, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v3, v1, v0, v2}, Lcom/google/inject/internal/Errors;->duplicateScopes(Lcom/google/inject/spi/ScopeBinding;Ljava/lang/Class;Lcom/google/inject/Scope;)Lcom/google/inject/internal/Errors;

    .line 61
    :cond_2
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 58
    :cond_3
    iget-object v3, p0, Lcom/google/inject/internal/ScopeBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, v3, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v3, v0, p1}, Lcom/google/inject/internal/State;->putScopeBinding(Ljava/lang/Class;Lcom/google/inject/spi/ScopeBinding;)V

    goto :goto_0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ScopeBinding;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ScopeBindingProcessor;->visit(Lcom/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
