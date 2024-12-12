.class final Lcom/google/inject/internal/BoundProviderFactory;
.super Lcom/google/inject/internal/ProviderInternalFactory;
.source "BoundProviderFactory.java"

# interfaces
.implements Lcom/google/inject/internal/CreationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderInternalFactory",
        "<TT;>;",
        "Lcom/google/inject/internal/CreationListener;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private providerFactory:Lcom/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/InternalFactory",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field private final provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V
    .locals 1
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .param p4, "allowProxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<+",
            "Ljavax/inject/Provider",
            "<+TT;>;>;",
            "Ljava/lang/Object;",
            "Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    .local p2, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    .local p5, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    invoke-direct {p0, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;-><init>(Ljava/lang/Object;Z)V

    .line 44
    const-string v0, "provisionCallback"

    invoke-static {p5, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iput-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 45
    iput-object p1, p0, Lcom/google/inject/internal/BoundProviderFactory;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 46
    iput-object p2, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    .line 47
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p4, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    .line 63
    .local v1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    iget-object v6, p0, Lcom/google/inject/internal/BoundProviderFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/BoundProviderFactory;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object v0

    .end local v1    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw v0
.end method

.method public notify(Lcom/google/inject/internal/Errors;)V
    .locals 5
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 51
    .local p0, "this":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/BoundProviderFactory;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    sget-object v4, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method protected provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 2
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;",
            "Lcom/google/inject/internal/ConstructionContext",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    .local p4, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "userException":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {v0}, Lcom/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
