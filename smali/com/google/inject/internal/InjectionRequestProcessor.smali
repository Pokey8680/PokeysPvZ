.class final Lcom/google/inject/internal/InjectionRequestProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    }
.end annotation


# instance fields
.field private final initializer:Lcom/google/inject/internal/Initializer;

.field private final staticInjections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Initializer;)V
    .locals 1
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "initializer"    # Lcom/google/inject/internal/Initializer;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 39
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    .line 45
    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 3

    .prologue
    .line 78
    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 79
    .local v1, "staticInjection":Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    invoke-virtual {v1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injectMembers()V

    goto :goto_0

    .line 81
    .end local v1    # "staticInjection":Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    :cond_0
    return-void
.end method

.method validate()V
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 68
    .local v1, "staticInjection":Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    invoke-virtual {v1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;->validate()V

    goto :goto_0

    .line 70
    .end local v1    # "staticInjection":Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    :cond_0
    return-void
.end method

.method public visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionRequest",
            "<*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "request":Lcom/google/inject/spi/InjectionRequest;, "Lcom/google/inject/spi/InjectionRequest<*>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInjectionPoints()Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 61
    .local v5, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :goto_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/google/inject/internal/Initializer;

    iget-object v1, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getInstance()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    .end local v5    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    :catch_0
    move-exception v6

    .line 57
    .local v6, "e":Lcom/google/inject/ConfigurationException;
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v6}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    .line 58
    invoke-virtual {v6}, Lcom/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .restart local v5    # "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "request"    # Lcom/google/inject/spi/StaticInjectionRequest;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    new-instance v1, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    iget-object v2, p0, Lcom/google/inject/internal/InjectionRequestProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-direct {v1, p0, v2, p1}, Lcom/google/inject/internal/InjectionRequestProcessor$StaticInjection;-><init>(Lcom/google/inject/internal/InjectionRequestProcessor;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/StaticInjectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/InjectionRequest;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/StaticInjectionRequest;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
