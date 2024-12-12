.class abstract Lcom/google/inject/internal/ProviderInternalFactory;
.super Ljava/lang/Object;
.source "ProviderInternalFactory.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final allowProxy:Z

.field protected final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "allowProxy"    # Z

    .prologue
    .line 38
    .local p0, "this":Lcom/google/inject/internal/ProviderInternalFactory;, "Lcom/google/inject/internal/ProviderInternalFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "source"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderInternalFactory;->source:Ljava/lang/Object;

    .line 40
    iput-boolean p2, p0, Lcom/google/inject/internal/ProviderInternalFactory;->allowProxy:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    .locals 8
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p5, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<+TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/inject/internal/ProviderInternalFactory;, "Lcom/google/inject/internal/ProviderInternalFactory<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p4, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    .local p6, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    invoke-virtual {p4}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v6

    .line 48
    .local v6, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3, p0}, Lcom/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;

    move-result-object v5

    .line 51
    .local v5, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-boolean v0, p0, Lcom/google/inject/internal/ProviderInternalFactory;->allowProxy:Z

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p2, v6}, Lcom/google/inject/internal/Errors;->circularProxiesDisabled(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 57
    :cond_0
    invoke-virtual {v5, p2, v6}, Lcom/google/inject/internal/ConstructionContext;->createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 76
    :goto_0
    return-object v7

    .line 63
    :cond_1
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->startConstruction()V

    .line 65
    :try_start_0
    invoke-virtual {p6}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0, p1, p2, p4, v5}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 75
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    .line 76
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    goto :goto_0

    .line 68
    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/inject/internal/ProviderInternalFactory$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/ProviderInternalFactory$1;-><init>(Lcom/google/inject/internal/ProviderInternalFactory;Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)V

    invoke-virtual {p6, p2, p3, v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 75
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    .line 76
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    .line 76
    invoke-virtual {v5}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw v0
.end method

.method protected provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 3
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
    .line 86
    .local p0, "this":Lcom/google/inject/internal/ProviderInternalFactory;, "Lcom/google/inject/internal/ProviderInternalFactory<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    .local p4, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/ProviderInternalFactory;->source:Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, p3}, Lcom/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p4, v0}, Lcom/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V

    .line 88
    return-object v0
.end method
