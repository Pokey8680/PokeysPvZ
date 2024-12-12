.class final Lcom/google/inject/internal/SingleFieldInjector;
.super Ljava/lang/Object;
.source "SingleFieldInjector.java"

# interfaces
.implements Lcom/google/inject/internal/SingleMemberInjector;


# instance fields
.field final binding:Lcom/google/inject/internal/BindingImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;"
        }
    .end annotation
.end field

.field final dependency:Lcom/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/spi/Dependency",
            "<*>;"
        }
    .end annotation
.end field

.field final field:Ljava/lang/reflect/Field;

.field final injectionPoint:Lcom/google/inject/spi/InjectionPoint;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "injectionPoint"    # Lcom/google/inject/spi/InjectionPoint;
    .param p3, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 37
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    .line 38
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Dependency;

    iput-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    .line 41
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {v0}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p1, v0, p3, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    .line 43
    return-void
.end method


# virtual methods
.method public getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V
    .locals 6
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v3, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    .line 52
    iget-object v3, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    iget-object v4, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v4}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Lcom/google/inject/internal/InternalContext;->pushDependency(Lcom/google/inject/spi/Dependency;Ljava/lang/Object;)Lcom/google/inject/spi/Dependency;

    move-result-object v1

    .line 54
    .local v1, "previous":Lcom/google/inject/spi/Dependency;
    :try_start_0
    iget-object v3, p0, Lcom/google/inject/internal/SingleFieldInjector;->binding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v3}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/inject/internal/SingleFieldInjector;->dependency:Lcom/google/inject/spi/Dependency;

    const/4 v5, 0x0

    invoke-interface {v3, p1, p2, v4, v5}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "value":Ljava/lang/Object;
    iget-object v3, p0, Lcom/google/inject/internal/SingleFieldInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    .line 63
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    :try_start_1
    iget-object v3, p0, Lcom/google/inject/internal/SingleFieldInjector;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {p1, v3}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    goto :goto_0

    .line 58
    .end local v0    # "e":Lcom/google/inject/internal/ErrorsException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v1}, Lcom/google/inject/internal/InternalContext;->popStateAndSetDependency(Lcom/google/inject/spi/Dependency;)V

    throw v3
.end method
