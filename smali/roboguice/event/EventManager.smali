.class public Lroboguice/event/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected context:Landroid/content/Context;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected registrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lroboguice/event/EventListener",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected copyObservers(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lroboguice/event/EventListener",
            "<*>;>;)",
            "Ljava/util/Set",
            "<",
            "Lroboguice/event/EventListener",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    monitor-enter p1

    .line 134
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 140
    iget-object v2, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lroboguice/event/EventListener<*>;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/util/Set<Lroboguice/event/EventListener<*>;>;>;"
    :cond_0
    iget-object v2, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 143
    return-void
.end method

.method public fire(Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v3, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 122
    .local v2, "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    if-nez v2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventListener;

    .line 126
    .local v1, "observer":Lroboguice/event/EventListener;
    invoke-interface {v1, p1}, Lroboguice/event/EventListener;->onEvent(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lroboguice/event/EventListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "event":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lroboguice/event/EventListener;, "Lroboguice/event/EventListener<*>;"
    iget-object v1, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 47
    .local v0, "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .end local v0    # "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 49
    .restart local v0    # "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    iget-object v1, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public registerObserver(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p3, "event":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lroboguice/event/eventListener/ObserverMethodListener;

    invoke-direct {v0, p1, p2}, Lroboguice/event/eventListener/ObserverMethodListener;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, p3, v0}, Lroboguice/event/EventManager;->registerObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V

    .line 65
    return-void
.end method

.method public unregisterObserver(Ljava/lang/Class;Lroboguice/event/EventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lroboguice/event/EventListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "event":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listener":Lroboguice/event/EventListener;, "Lroboguice/event/EventListener<TT;>;"
    iget-object v1, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 77
    .local v0, "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterObserver(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 6
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "event":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v5, p0, Lroboguice/event/EventManager;->registrations:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 91
    .local v3, "observers":Ljava/util/Set;, "Ljava/util/Set<Lroboguice/event/EventListener<*>;>;"
    if-nez v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v4, 0x0

    .line 97
    .local v4, "toRemove":Lroboguice/event/eventListener/ObserverMethodListener;, "Lroboguice/event/eventListener/ObserverMethodListener<*>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lroboguice/event/EventListener<*>;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventListener;

    .line 99
    .local v1, "listener":Lroboguice/event/EventListener;, "Lroboguice/event/EventListener<*>;"
    instance-of v5, v1, Lroboguice/event/eventListener/ObserverMethodListener;

    if-eqz v5, :cond_2

    move-object v2, v1

    .line 100
    check-cast v2, Lroboguice/event/eventListener/ObserverMethodListener;

    .line 101
    .local v2, "observer":Lroboguice/event/eventListener/ObserverMethodListener;, "Lroboguice/event/eventListener/ObserverMethodListener<*>;"
    invoke-virtual {v2}, Lroboguice/event/eventListener/ObserverMethodListener;->getInstance()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    .line 102
    move-object v4, v2

    .line 107
    .end local v1    # "listener":Lroboguice/event/EventListener;, "Lroboguice/event/EventListener<*>;"
    .end local v2    # "observer":Lroboguice/event/eventListener/ObserverMethodListener;, "Lroboguice/event/eventListener/ObserverMethodListener<*>;"
    :cond_3
    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
