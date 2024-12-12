.class public Lroboguice/event/ObservesTypeListener;
.super Ljava/lang/Object;
.source "ObservesTypeListener.java"

# interfaces
.implements Lcom/google/inject/spi/TypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;
    }
.end annotation


# instance fields
.field protected eventManagerProvider:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lroboguice/event/EventManager;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field protected observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;


# direct methods
.method public constructor <init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V
    .locals 0
    .param p2, "observerThreadingDecorator"    # Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider",
            "<",
            "Lroboguice/event/EventManager;",
            ">;",
            "Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "eventManagerProvider":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<Lroboguice/event/EventManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    .line 31
    iput-object p2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    .line 32
    return-void
.end method

.method private isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v1, Lroboguice/event/Observes;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected checkMethodParameters(Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Annotation @Observes must only annotate one parameter, which must be the only parameter in the listener method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method

.method protected findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 11
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "iTypeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 59
    .local v6, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_2

    .line 60
    aget-object v1, v6, v3

    .line 61
    .local v1, "annotationArray":[Ljava/lang/annotation/Annotation;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 62
    .local v8, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    aget-object v7, v8, v3

    .line 64
    .local v7, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 65
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lroboguice/event/Observes;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 66
    check-cast v0, Lroboguice/event/Observes;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lroboguice/event/Observes;->value()Lroboguice/event/EventThread;

    move-result-object v9

    invoke-virtual {p0, p2, p1, v7, v9}, Lroboguice/event/ObservesTypeListener;->registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    .line 64
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "annotationArray":[Ljava/lang/annotation/Annotation;
    .end local v2    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method public hear(Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeEncounter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TI;>;",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "iTypeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TI;>;"
    .local p2, "iTypeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    iget-object v7, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    if-nez v7, :cond_0

    .line 36
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v7

    iput-object v7, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 41
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-direct {p0, v1}, Lroboguice/event/ObservesTypeListener;->isWorthScanning(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 42
    iget-object v7, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v8, Lroboguice/event/Observes;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 43
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v6, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    goto :goto_2

    .line 38
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    iget-object v7, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v7}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    goto :goto_0

    .line 45
    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 46
    .local v4, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lroboguice/event/ObservesTypeListener;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v8, Lroboguice/event/Observes;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 47
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0, v6, p2}, Lroboguice/event/ObservesTypeListener;->findContextObserver(Ljava/lang/reflect/Method;Lcom/google/inject/spi/TypeEncounter;)V

    goto :goto_4

    .line 45
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_3

    .line 49
    .end local v4    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 51
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_4
    return-void
.end method

.method protected registerContextObserver(Lcom/google/inject/spi/TypeEncounter;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V
    .locals 6
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p4, "threadType"    # Lroboguice/event/EventThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/TypeEncounter",
            "<TI;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lroboguice/event/EventThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "iTypeEncounter":Lcom/google/inject/spi/TypeEncounter;, "Lcom/google/inject/spi/TypeEncounter<TI;>;"
    .local p3, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p2}, Lroboguice/event/ObservesTypeListener;->checkMethodParameters(Ljava/lang/reflect/Method;)V

    .line 81
    new-instance v0, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;

    iget-object v1, p0, Lroboguice/event/ObservesTypeListener;->eventManagerProvider:Lcom/google/inject/Provider;

    iget-object v2, p0, Lroboguice/event/ObservesTypeListener;->observerThreadingDecorator:Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lroboguice/event/ObservesTypeListener$ContextObserverMethodInjector;-><init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;Ljava/lang/reflect/Method;Ljava/lang/Class;Lroboguice/event/EventThread;)V

    invoke-interface {p1, v0}, Lcom/google/inject/spi/TypeEncounter;->register(Lcom/google/inject/spi/InjectionListener;)V

    .line 82
    return-void
.end method
