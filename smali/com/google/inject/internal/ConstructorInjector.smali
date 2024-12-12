.class final Lcom/google/inject/internal/ConstructorInjector;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final constructionProxy:Lcom/google/inject/internal/ConstructionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ConstructionProxy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/inject/internal/SingleParameterInjector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/inject/internal/ConstructionProxy;[Lcom/google/inject/internal/SingleParameterInjector;Lcom/google/inject/internal/MembersInjectorImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/google/inject/internal/ConstructionProxy",
            "<TT;>;[",
            "Lcom/google/inject/internal/SingleParameterInjector",
            "<*>;",
            "Lcom/google/inject/internal/MembersInjectorImpl",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/inject/internal/ConstructorInjector;, "Lcom/google/inject/internal/ConstructorInjector<TT;>;"
    .local p1, "injectableMembers":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    .local p2, "constructionProxy":Lcom/google/inject/internal/ConstructionProxy;, "Lcom/google/inject/internal/ConstructionProxy<TT;>;"
    .local p3, "parameterInjectors":[Lcom/google/inject/internal/SingleParameterInjector;, "[Lcom/google/inject/internal/SingleParameterInjector<*>;"
    .local p4, "membersInjector":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 44
    iput-object p2, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    .line 45
    iput-object p3, p0, Lcom/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    .line 46
    iput-object p4, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ConstructorInjector;
    .param p1, "x1"    # Lcom/google/inject/internal/Errors;
    .param p2, "x2"    # Lcom/google/inject/internal/InternalContext;
    .param p3, "x3"    # Lcom/google/inject/internal/ConstructionContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/ConstructorInjector;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
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
    .line 107
    .local p0, "this":Lcom/google/inject/internal/ConstructorInjector;, "Lcom/google/inject/internal/ConstructorInjector<TT;>;"
    .local p3, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    :try_start_0
    iget-object v4, p0, Lcom/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/google/inject/internal/SingleParameterInjector;

    invoke-static {p1, p2, v4}, Lcom/google/inject/internal/SingleParameterInjector;->getAll(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;[Lcom/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object v1

    .line 108
    .local v1, "parameters":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    invoke-interface {v4, v1}, Lcom/google/inject/internal/ConstructionProxy;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    .line 115
    invoke-virtual {p3, v2}, Lcom/google/inject/internal/ConstructionContext;->setCurrentReference(Ljava/lang/Object;)V

    .line 117
    iget-object v4, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, p1, p2, v5}, Lcom/google/inject/internal/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V

    .line 118
    iget-object v4, p0, Lcom/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/google/inject/internal/MembersInjectorImpl;

    invoke-virtual {v4, v2, p1}, Lcom/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    return-object v2

    .line 111
    .end local v1    # "parameters":[Ljava/lang/Object;
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw v4
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "userException":Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 125
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    iget-object v4, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    invoke-interface {v4}, Lcom/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/inject/internal/Errors;->errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v4

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v3    # "userException":Ljava/lang/reflect/InvocationTargetException;
    :catchall_1
    move-exception v4

    invoke-virtual {p3}, Lcom/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    throw v4

    .restart local v3    # "userException":Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    move-object v0, v3

    .line 122
    goto :goto_0
.end method


# virtual methods
.method construct(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Class;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)Ljava/lang/Object;
    .locals 3
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p4, "allowProxy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Ljava/lang/Class",
            "<*>;Z",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/inject/internal/ConstructorInjector;, "Lcom/google/inject/internal/ConstructorInjector<TT;>;"
    .local p3, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    invoke-virtual {p2, p0}, Lcom/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/google/inject/internal/ConstructionContext;

    move-result-object v0

    .line 68
    .local v0, "constructionContext":Lcom/google/inject/internal/ConstructionContext;, "Lcom/google/inject/internal/ConstructionContext<TT;>;"
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    if-nez p4, :cond_0

    .line 70
    invoke-virtual {p1, p3}, Lcom/google/inject/internal/Errors;->circularProxiesDisabled(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v2

    throw v2

    .line 73
    :cond_0
    invoke-virtual {v0, p1, p3}, Lcom/google/inject/internal/ConstructionContext;->createProxy(Lcom/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 97
    :cond_1
    :goto_0
    return-object v1

    .line 79
    :cond_2
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->getCurrentReference()Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "t":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->startConstruction()V

    .line 87
    :try_start_0
    invoke-virtual {p5}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result v2

    if-nez v2, :cond_3

    .line 88
    invoke-direct {p0, p1, p2, v0}, Lcom/google/inject/internal/ConstructorInjector;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 97
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    goto :goto_0

    .line 90
    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    new-instance v2, Lcom/google/inject/internal/ConstructorInjector$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/inject/internal/ConstructorInjector$1;-><init>(Lcom/google/inject/internal/ConstructorInjector;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ConstructionContext;)V

    invoke-virtual {p5, p1, p2, v2}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 97
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    goto :goto_0

    .restart local v1    # "t":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw v2
.end method

.method getConstructionProxy()Lcom/google/inject/internal/ConstructionProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ConstructionProxy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/inject/internal/ConstructorInjector;, "Lcom/google/inject/internal/ConstructorInjector<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/google/inject/internal/ConstructionProxy;

    return-object v0
.end method

.method public getInjectableMembers()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/google/inject/internal/ConstructorInjector;, "Lcom/google/inject/internal/ConstructorInjector<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ConstructorInjector;->injectableMembers:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-object v0
.end method
