.class Lcom/google/inject/internal/ProvidedByInternalFactory;
.super Lcom/google/inject/internal/ProviderInternalFactory;
.source "ProvidedByInternalFactory.java"

# interfaces
.implements Lcom/google/inject/internal/DelayedInitialize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderInternalFactory",
        "<TT;>;",
        "Lcom/google/inject/internal/DelayedInitialize;"
    }
.end annotation


# instance fields
.field private providerBinding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl",
            "<+",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final providerKey:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final providerType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/inject/Provider",
            "<*>;>;"
        }
    .end annotation
.end field

.field private provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/inject/Key;Z)V
    .locals 0
    .param p4, "allowProxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/inject/Provider",
            "<*>;>;",
            "Lcom/google/inject/Key",
            "<+",
            "Lcom/google/inject/Provider",
            "<TT;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "providerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Provider<*>;>;"
    .local p3, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Lcom/google/inject/Provider<TT;>;>;"
    invoke-direct {p0, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;-><init>(Ljava/lang/Object;Z)V

    .line 48
    iput-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    .line 49
    iput-object p2, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerType:Ljava/lang/Class;

    .line 50
    iput-object p3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    .line 51
    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 7
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p3, "dependency"    # Lcom/google/inject/spi/Dependency;
    .param p4, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    const/4 v0, 0x1

    .line 64
    iget-object v2, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    if-eqz v2, :cond_0

    :goto_0
    const-string v2, "not initialized"

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v2}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v0}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/Provider;

    .line 71
    .local v1, "provider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<+TT;>;"
    iget-object v6, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/ProvidedByInternalFactory;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 73
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object v0

    .line 64
    .end local v1    # "provider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<+TT;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw v0
.end method

.method public initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerKey:Lcom/google/inject/Key;

    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerBinding:Lcom/google/inject/internal/BindingImpl;

    .line 60
    return-void
.end method

.method protected provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 5
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
    .line 82
    .local p0, "this":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    .local p4, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->providerType:Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->rawType:Ljava/lang/Class;

    invoke-virtual {p2, v3, v4}, Lcom/google/inject/internal/Errors;->subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v3

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v3

    throw v3

    .line 87
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    move-object v2, v1

    .line 88
    .local v2, "t":Ljava/lang/Object;, "TT;"
    return-object v2
.end method

.method setProvisionListenerCallback(Lcom/google/inject/internal/ProvisionListenerStackCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    .local p1, "listener":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    iput-object p1, p0, Lcom/google/inject/internal/ProvidedByInternalFactory;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 55
    return-void
.end method
