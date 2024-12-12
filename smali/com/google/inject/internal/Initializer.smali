.class final Lcom/google/inject/internal/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Initializer$InjectableReference;
    }
.end annotation


# instance fields
.field private final creatingThread:Ljava/lang/Thread;

.field private final pendingInjection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Initializer$InjectableReference",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final pendingMembersInjectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/MembersInjectorImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final ready:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    .line 47
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    .line 50
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    .line 54
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Initializer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/inject/internal/Initializer;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Initializer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->creatingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Initializer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Initializer;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method injectAll(Lcom/google/inject/internal/Errors;)V
    .locals 6
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 106
    iget-object v3, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/Initializer$InjectableReference;

    .line 108
    .local v2, "reference":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<*>;"
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/google/inject/internal/Initializer$InjectableReference;->get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 114
    .end local v0    # "e":Lcom/google/inject/internal/ErrorsException;
    .end local v2    # "reference":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<*>;"
    :cond_0
    iget-object v3, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to satisfy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/google/inject/internal/Initializer;->ready:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 119
    return-void
.end method

.method requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;
    .locals 7
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p4, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "TT;",
            "Lcom/google/inject/Binding",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;)",
            "Lcom/google/inject/internal/Initializable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "instance":Ljava/lang/Object;, "TT;"
    .local p3, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<TT;>;"
    .local p5, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    const/4 v4, 0x0

    .line 66
    invoke-static {p4}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-nez p3, :cond_1

    move-object v5, v4

    .line 72
    .local v5, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v1}, Lcom/google/inject/internal/MembersInjectorStore;->hasTypeListeners()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->hasListeners()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object v0

    .line 81
    :goto_1
    return-object v0

    .line 68
    .end local v5    # "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    :cond_1
    iget-object v1, p1, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v1, p3}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v5

    goto :goto_0

    .line 78
    .restart local v5    # "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    :cond_2
    new-instance v0, Lcom/google/inject/internal/Initializer$InjectableReference;

    if-nez p3, :cond_3

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/Initializer$InjectableReference;-><init>(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;)V

    .line 80
    .local v0, "initializable":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    .end local v0    # "initializable":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    :cond_3
    invoke-interface {p3}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    goto :goto_2
.end method

.method validateOustandingInjections(Lcom/google/inject/internal/Errors;)V
    .locals 6
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/google/inject/internal/Initializer;->pendingInjection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/Initializer$InjectableReference;

    .line 91
    .local v2, "reference":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/google/inject/internal/Initializer;->pendingMembersInjectors:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/inject/internal/Initializer$InjectableReference;->access$000(Lcom/google/inject/internal/Initializer$InjectableReference;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p1}, Lcom/google/inject/internal/Initializer$InjectableReference;->validate(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 96
    .end local v0    # "e":Lcom/google/inject/internal/ErrorsException;
    .end local v2    # "reference":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<*>;"
    :cond_0
    return-void
.end method
