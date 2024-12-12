.class abstract Lcom/google/inject/internal/AbstractBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "AbstractBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/AbstractBindingProcessor$Processor;
    }
.end annotation


# static fields
.field private static final FORBIDDEN_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final bindingData:Lcom/google/inject/internal/ProcessedBindingData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 45
    const-class v0, Lcom/google/inject/AbstractModule;

    const-class v1, Lcom/google/inject/Binder;

    const-class v2, Lcom/google/inject/Binding;

    const-class v3, Lcom/google/inject/Injector;

    const-class v4, Lcom/google/inject/Key;

    const-class v5, Lcom/google/inject/MembersInjector;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/google/inject/Module;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/google/inject/Provider;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Lcom/google/inject/Scope;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Lcom/google/inject/Stage;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-class v8, Lcom/google/inject/TypeLiteral;

    aput-object v8, v6, v7

    invoke-static/range {v0 .. v6}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/ProcessedBindingData;)V
    .locals 0
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "bindingData"    # Lcom/google/inject/internal/ProcessedBindingData;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 62
    iput-object p2, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/AbstractBindingProcessor;Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/inject/internal/AbstractBindingProcessor;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lcom/google/inject/Key;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/AbstractBindingProcessor;->validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V

    return-void
.end method

.method private isOkayDuplicate(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/State;)Z
    .locals 5
    .param p3, "state"    # Lcom/google/inject/internal/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;",
            "Lcom/google/inject/internal/State;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "original":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    .local p2, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    const/4 v2, 0x0

    .line 113
    instance-of v3, p1, Lcom/google/inject/internal/ExposedBindingImpl;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/google/inject/internal/ExposedBindingImpl;

    .line 115
    .local v0, "exposed":Lcom/google/inject/internal/ExposedBindingImpl;
    invoke-virtual {v0}, Lcom/google/inject/internal/ExposedBindingImpl;->getPrivateElements()Lcom/google/inject/spi/PrivateElements;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/inject/spi/PrivateElements;->getInjector()Lcom/google/inject/Injector;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/InjectorImpl;

    .line 116
    .local v1, "exposedFrom":Lcom/google/inject/internal/InjectorImpl;
    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getInjector()Lcom/google/inject/internal/InjectorImpl;

    move-result-object v3

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    .line 124
    .end local v0    # "exposed":Lcom/google/inject/internal/ExposedBindingImpl;
    .end local v1    # "exposedFrom":Lcom/google/inject/internal/InjectorImpl;
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    invoke-interface {p3}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "original":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    check-cast p1, Lcom/google/inject/internal/BindingImpl;

    .line 121
    .restart local p1    # "original":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/Object;Lcom/google/inject/Key;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/inject/Key",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p2}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-static {v0, p1, v1}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;
    .locals 1
    .param p1, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/UntargettedBindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v0, Lcom/google/inject/internal/UntargettedBindingImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/inject/internal/UntargettedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected putBinding(Lcom/google/inject/internal/BindingImpl;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v0

    .line 73
    .local v0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {v0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 74
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/google/inject/internal/AbstractBindingProcessor;->FORBIDDEN_TYPES:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/inject/internal/Errors;->cannotBindToGuiceType(Ljava/lang/String;)Lcom/google/inject/internal/Errors;

    .line 103
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    invoke-virtual {v4, v0}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    .line 80
    .local v1, "original":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    if-eqz v1, :cond_2

    .line 82
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v4, v0}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 84
    :try_start_0
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-direct {p0, v1, p1, v4}, Lcom/google/inject/internal/AbstractBindingProcessor;->isOkayDuplicate(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/State;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/inject/internal/Errors;->bindingAlreadySet(Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v3

    .line 89
    .local v3, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/inject/internal/Errors;->errorCheckingDuplicateBinding(Lcom/google/inject/Key;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 95
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v4, v0}, Lcom/google/inject/internal/Errors;->jitBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v4}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object v4

    iget-object v5, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v5, v5, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v0, v5, v6}, Lcom/google/inject/internal/State;->blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 102
    iget-object v4, p0, Lcom/google/inject/internal/AbstractBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v4, v0, p1}, Lcom/google/inject/internal/State;->putBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    goto :goto_0
.end method
