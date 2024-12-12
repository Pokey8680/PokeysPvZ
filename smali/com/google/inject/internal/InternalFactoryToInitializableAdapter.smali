.class final Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;
.super Lcom/google/inject/internal/ProviderInternalFactory;
.source "InternalFactoryToInitializableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ProviderInternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final initializable:Lcom/google/inject/internal/Initializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/Initializable",
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
.method public constructor <init>(Lcom/google/inject/internal/Initializable;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V
    .locals 1
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "allowProxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Initializable",
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
    .line 39
    .local p0, "this":Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;, "Lcom/google/inject/internal/InternalFactoryToInitializableAdapter<TT;>;"
    .local p1, "initializable":Lcom/google/inject/internal/Initializable;, "Lcom/google/inject/internal/Initializable<+Ljavax/inject/Provider<+TT;>;>;"
    .local p4, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/google/inject/internal/ProviderInternalFactory;-><init>(Ljava/lang/Object;Z)V

    .line 40
    const-string v0, "provisionCallback"

    invoke-static {p4, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iput-object v0, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 41
    const-string v0, "provider"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/Initializable;

    iput-object v0, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->initializable:Lcom/google/inject/internal/Initializable;

    .line 42
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
    .line 46
    .local p0, "this":Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;, "Lcom/google/inject/internal/InternalFactoryToInitializableAdapter<TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->initializable:Lcom/google/inject/internal/Initializable;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/Initializable;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->circularGet(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 54
    .local p0, "this":Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;, "Lcom/google/inject/internal/InternalFactoryToInitializableAdapter<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    .local p4, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/ProviderInternalFactory;->provision(Ljavax/inject/Provider;Lcom/google/inject/internal/Errors;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "userException":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->source:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;, "Lcom/google/inject/internal/InternalFactoryToInitializableAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;->initializable:Lcom/google/inject/internal/Initializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
