.class final Lcom/google/inject/internal/InjectorImpl;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/Injector;
.implements Lcom/google/inject/internal/Lookups;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InjectorImpl$MethodInvoker;,
        Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;,
        Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;,
        Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;,
        Lcom/google/inject/internal/InjectorImpl$JitLimitation;,
        Lcom/google/inject/internal/InjectorImpl$InjectorOptions;
    }
.end annotation


# static fields
.field public static final STRING_TYPE:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

.field final constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

.field final failedJitBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key",
            "<*>;>;"
        }
    .end annotation
.end field

.field final jitBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field lookups:Lcom/google/inject/internal/Lookups;

.field membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

.field final options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

.field final parent:Lcom/google/inject/internal/InjectorImpl;

.field provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

.field final state:Lcom/google/inject/internal/State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/google/inject/TypeLiteral;

    return-void
.end method

.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/State;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/inject/internal/InjectorImpl;
    .param p2, "state"    # Lcom/google/inject/internal/State;
    .param p3, "injectorOptions"    # Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;-><init>(Lcom/google/inject/internal/InjectorImpl$1;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    .line 114
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    .line 119
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    .line 121
    new-instance v0, Lcom/google/inject/internal/DeferredLookups;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/DeferredLookups;-><init>(Lcom/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->lookups:Lcom/google/inject/internal/Lookups;

    .line 966
    new-instance v0, Lcom/google/inject/internal/ConstructorInjectorStore;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ConstructorInjectorStore;-><init>(Lcom/google/inject/internal/InjectorImpl;)V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

    .line 124
    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    .line 125
    iput-object p2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    .line 126
    iput-object p3, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p1, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    goto :goto_0
.end method

.method private cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/Key;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    .local p2, "encountered":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/Key;>;"
    const/4 v0, 0x0

    .line 568
    .local v0, "bindingFailed":Z
    invoke-direct {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getInternalDependencies(Lcom/google/inject/internal/BindingImpl;)Ljava/util/Set;

    move-result-object v5

    .line 569
    .local v5, "deps":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/Dependency<*>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/Dependency;

    .line 570
    .local v2, "dep":Lcom/google/inject/spi/Dependency;
    invoke-virtual {v2}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v4

    .line 571
    .local v4, "depKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {v2}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v8

    .line 572
    .local v8, "ip":Lcom/google/inject/spi/InjectionPoint;
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 573
    iget-object v9, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/BindingImpl;

    .line 574
    .local v3, "depBinding":Lcom/google/inject/internal/BindingImpl;
    if-eqz v3, :cond_2

    .line 575
    invoke-direct {p0, v3, p2}, Lcom/google/inject/internal/InjectorImpl;->cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    move-result v6

    .line 576
    .local v6, "failed":Z
    instance-of v9, v3, Lcom/google/inject/internal/ConstructorBindingImpl;

    if-eqz v9, :cond_1

    move-object v1, v3

    .line 577
    check-cast v1, Lcom/google/inject/internal/ConstructorBindingImpl;

    .line 578
    .local v1, "ctorBinding":Lcom/google/inject/internal/ConstructorBindingImpl;
    invoke-virtual {v1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInternalConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v8

    .line 579
    invoke-virtual {v1}, Lcom/google/inject/internal/ConstructorBindingImpl;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_1

    .line 580
    const/4 v6, 0x1

    .line 583
    .end local v1    # "ctorBinding":Lcom/google/inject/internal/ConstructorBindingImpl;
    :cond_1
    if-eqz v6, :cond_0

    .line 584
    invoke-direct {p0, v3, v8}, Lcom/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V

    .line 585
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    .end local v6    # "failed":Z
    :cond_2
    iget-object v9, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v9, v4}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v9

    if-nez v9, :cond_0

    .line 590
    const/4 v0, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "dep":Lcom/google/inject/spi/Dependency;
    .end local v3    # "depBinding":Lcom/google/inject/internal/BindingImpl;
    .end local v4    # "depKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    .end local v8    # "ip":Lcom/google/inject/spi/InjectionPoint;
    :cond_3
    return v0
.end method

.method private convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 19
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    sget-object v1, Lcom/google/inject/internal/InjectorImpl;->STRING_TYPE:Lcom/google/inject/TypeLiteral;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/inject/Key;->ofType(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v18

    .line 416
    .local v18, "stringKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v11

    .line 417
    .local v11, "stringBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<Ljava/lang/String;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/google/inject/internal/BindingImpl;->isConstant()Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    const/4 v7, 0x0

    .line 448
    :goto_0
    return-object v7

    .line 421
    :cond_1
    invoke-virtual {v11}, Lcom/google/inject/internal/BindingImpl;->getProvider()Lcom/google/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    .local v2, "stringValue":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v3

    .line 425
    .local v3, "source":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v4

    .line 426
    .local v4, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    move-object/from16 v0, p2

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/google/inject/internal/State;->getConverter(Ljava/lang/String;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;Ljava/lang/Object;)Lcom/google/inject/spi/TypeConverterBinding;

    move-result-object v5

    .line 428
    .local v5, "typeConverterBinding":Lcom/google/inject/spi/TypeConverterBinding;
    if-nez v5, :cond_2

    .line 430
    const/4 v7, 0x0

    goto :goto_0

    .line 436
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Lcom/google/inject/spi/TypeConverterBinding;->getTypeConverter()Lcom/google/inject/spi/TypeConverter;

    move-result-object v1

    invoke-interface {v1, v2, v4}, Lcom/google/inject/spi/TypeConverter;->convert(Ljava/lang/String;Lcom/google/inject/TypeLiteral;)Ljava/lang/Object;

    move-result-object v6

    .line 438
    .local v6, "converted":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_3

    .line 439
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/inject/internal/Errors;->converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    .end local v6    # "converted":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v17

    .line 451
    .local v17, "e":Lcom/google/inject/internal/ErrorsException;
    throw v17

    .line 443
    .end local v17    # "e":Lcom/google/inject/internal/ErrorsException;
    .restart local v6    # "converted":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object/from16 v1, p2

    .line 444
    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/Errors;->conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1
    :try_end_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    .end local v6    # "converted":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v17

    .local v17, "e":Ljava/lang/RuntimeException;
    move-object/from16 v12, p2

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    .line 453
    invoke-virtual/range {v12 .. v17}, Lcom/google/inject/internal/Errors;->conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    .line 448
    .end local v17    # "e":Ljava/lang/RuntimeException;
    .restart local v6    # "converted":Ljava/lang/Object;, "TT;"
    :cond_4
    :try_start_2
    new-instance v7, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v6

    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/Binding;Lcom/google/inject/spi/TypeConverterBinding;)V
    :try_end_2
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 13
    .param p2, "scoping"    # Lcom/google/inject/internal/Scoping;
    .param p3, "implementedBy"    # Lcom/google/inject/ImplementedBy;
    .param p4, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ImplementedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v10

    .line 732
    .local v10, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {p3 .. p3}, Lcom/google/inject/ImplementedBy;->value()Ljava/lang/Class;

    move-result-object v8

    .line 735
    .local v8, "implementationType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v8, v10, :cond_0

    .line 736
    invoke-virtual/range {p4 .. p4}, Lcom/google/inject/internal/Errors;->recursiveImplementationType()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    .line 740
    :cond_0
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v10}, Lcom/google/inject/internal/Errors;->notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v1

    throw v1

    .line 745
    :cond_1
    move-object v11, v8

    .line 748
    .local v11, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {v11}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v7

    .line 749
    .local v7, "targetKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v0, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v12

    .line 751
    .local v12, "targetBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<+TT;>;"
    new-instance v9, Lcom/google/inject/internal/InjectorImpl$1;

    invoke-direct {v9, p0, v7, v12}, Lcom/google/inject/internal/InjectorImpl$1;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V

    .line 764
    .local v9, "internalFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<TT;>;"
    move-object v4, v10

    .line 765
    .local v4, "source":Ljava/lang/Class;
    new-instance v1, Lcom/google/inject/internal/LinkedBindingImpl;

    invoke-static {p1, p0, v9, v4, p2}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    return-object v1
.end method

.method private createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 11
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "jitDisabled"    # Z
    .param p4, "jitType"    # Lcom/google/inject/internal/InjectorImpl$JitLimitation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Z",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v9

    .line 825
    .local v9, "numErrorsBefore":I
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v10

    .line 826
    .local v10, "sources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-virtual {p2, p1, v10}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;Ljava/util/Set;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 831
    :cond_0
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v6

    .line 878
    :goto_0
    return-object v6

    .line 840
    :cond_1
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/google/inject/Key;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v6

    .line 845
    .local v6, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    goto :goto_0

    .line 849
    .end local v6    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/InjectorImpl;->convertConstantStringBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v7

    .line 850
    .local v7, "convertedBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    if-eqz v7, :cond_3

    move-object v6, v7

    .line 851
    goto :goto_0

    .line 854
    :cond_3
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/google/inject/Key;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    sget-object v0, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    if-eq p4, v0, :cond_4

    .line 857
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 861
    :cond_4
    invoke-virtual {p1}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 863
    invoke-virtual {p1}, Lcom/google/inject/Key;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->exactBindingAnnotationsRequired:Z

    if-nez v0, :cond_5

    .line 865
    :try_start_0
    new-instance v8, Lcom/google/inject/internal/Errors;

    invoke-direct {v8}, Lcom/google/inject/internal/Errors;-><init>()V

    .line 866
    .local v8, "ignored":Lcom/google/inject/internal/Errors;
    invoke-virtual {p1}, Lcom/google/inject/Key;->withoutAttributes()Lcom/google/inject/Key;

    move-result-object v0

    sget-object v1, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v0, v8, v1}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 867
    .end local v8    # "ignored":Lcom/google/inject/internal/Errors;
    :catch_0
    move-exception v0

    .line 871
    :cond_5
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 874
    :cond_6
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 875
    .local v3, "source":Ljava/lang/Class;
    sget-object v2, Lcom/google/inject/internal/Scoping;->UNSCOPED:Lcom/google/inject/internal/Scoping;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/InjectorImpl;->createUninitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;Z)Lcom/google/inject/internal/BindingImpl;

    move-result-object v6

    .line 876
    .restart local v6    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    invoke-virtual {p2, v9}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 877
    invoke-virtual {p0, v6, p2}, Lcom/google/inject/internal/InjectorImpl;->initializeJitBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V

    goto :goto_0
.end method

.method private createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 5
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "jitDisabled"    # Z
    .param p4, "jitType"    # Lcom/google/inject/internal/InjectorImpl$JitLimitation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Z",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    if-eqz v2, :cond_1

    .line 783
    :try_start_0
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    new-instance v4, Lcom/google/inject/internal/Errors;

    invoke-direct {v4}, Lcom/google/inject/internal/Errors;-><init>()V

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    :goto_0
    invoke-direct {v3, p1, v4, p3, v2}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 801
    :goto_1
    return-object v0

    :cond_0
    move-object v2, p4

    .line 783
    goto :goto_0

    .line 785
    :catch_0
    move-exception v2

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, p1}, Lcom/google/inject/internal/State;->getSourcesForBlacklistedKey(Lcom/google/inject/Key;)Ljava/util/Set;

    move-result-object v1

    .line 794
    .local v1, "sources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2, p1}, Lcom/google/inject/internal/State;->isBlacklisted(Lcom/google/inject/Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 795
    invoke-virtual {p2, p1, v1}, Lcom/google/inject/internal/Errors;->childBindingAlreadySet(Lcom/google/inject/Key;Ljava/util/Set;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v2

    throw v2

    .line 798
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 799
    .local v0, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->parent()Lcom/google/inject/internal/State;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/google/inject/internal/State;->blacklist(Lcom/google/inject/Key;Lcom/google/inject/internal/State;Ljava/lang/Object;)V

    .line 800
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private createMembersInjectorBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 9
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/MembersInjector<TT;>;>;"
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 318
    .local v8, "membersInjectorType":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawMembersInjector()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 323
    :cond_0
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .end local v8    # "membersInjectorType":Ljava/lang/reflect/Type;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v7

    .line 325
    .local v7, "instanceType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v0, v7, p2}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v6

    .line 327
    .local v6, "membersInjector":Lcom/google/inject/MembersInjector;, "Lcom/google/inject/MembersInjector<TT;>;"
    new-instance v4, Lcom/google/inject/internal/ConstantFactory;

    invoke-static {v6}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 331
    .local v4, "factory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<Lcom/google/inject/MembersInjector<TT;>;>;"
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method private createProviderBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 3
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/Provider<TT;>;>;"
    invoke-static {p1, p2}, Lcom/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v1

    .line 342
    .local v1, "providedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 343
    .local v0, "delegate":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    new-instance v2, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/inject/internal/InjectorImpl$ProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Binding;)V

    return-object v2
.end method

.method private createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 10
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 673
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/TypeLiteral<TT;>;>;"
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 674
    .local v9, "typeLiteralType":Ljava/lang/reflect/Type;
    instance-of v0, v9, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->cannotInjectRawTypeLiteral()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    :cond_0
    move-object v8, v9

    .line 678
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .line 679
    .local v8, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 683
    .local v7, "innerType":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/Class;

    if-nez v0, :cond_1

    instance-of v0, v7, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v7, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1

    .line 686
    invoke-virtual {p2, v7}, Lcom/google/inject/internal/Errors;->cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 690
    :cond_1
    invoke-static {v7}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/google/inject/TypeLiteral;

    move-result-object v6

    .line 691
    .local v6, "value":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v4, Lcom/google/inject/internal/ConstantFactory;

    invoke-static {v6}, Lcom/google/inject/internal/Initializables;->of(Ljava/lang/Object;)Lcom/google/inject/internal/Initializable;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 693
    .local v4, "factory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<Lcom/google/inject/TypeLiteral<TT;>;>;"
    new-instance v0, Lcom/google/inject/internal/InstanceBindingImpl;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getInternalDependencies(Lcom/google/inject/internal/BindingImpl;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/BindingImpl",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    instance-of v0, p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    if-eqz v0, :cond_0

    .line 612
    check-cast p1, Lcom/google/inject/internal/ConstructorBindingImpl;

    .end local p1    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    invoke-virtual {p1}, Lcom/google/inject/internal/ConstructorBindingImpl;->getInternalDependencies()Ljava/util/Set;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 613
    .restart local p1    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    :cond_0
    instance-of v0, p1, Lcom/google/inject/spi/HasDependencies;

    if-eqz v0, :cond_1

    .line 614
    check-cast p1, Lcom/google/inject/spi/HasDependencies;

    .end local p1    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    invoke-interface {p1}, Lcom/google/inject/spi/HasDependencies;->getDependencies()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 616
    .restart local p1    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<*>;"
    :cond_1
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method private getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 5
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "jitType"    # Lcom/google/inject/internal/InjectorImpl$JitLimitation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isTypeLiteral(Lcom/google/inject/Key;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isMembersInjector(Lcom/google/inject/Key;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 244
    .local v2, "jitOverride":Z
    :goto_0
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v3}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 246
    move-object v1, p0

    .local v1, "injector":Lcom/google/inject/internal/InjectorImpl;
    :goto_1
    if-eqz v1, :cond_4

    .line 248
    :try_start_0
    iget-object v3, v1, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/BindingImpl;

    .line 250
    .local v0, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    if-eqz v0, :cond_3

    .line 253
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, v3, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    if-ne p3, v3, :cond_2

    if-nez v2, :cond_2

    instance-of v3, v0, Lcom/google/inject/internal/InjectorImpl$ConvertedConstantBindingImpl;

    if-nez v3, :cond_2

    .line 257
    invoke-virtual {p2, p1}, Lcom/google/inject/internal/Errors;->jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v3

    throw v3

    .line 282
    .end local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 243
    .end local v1    # "injector":Lcom/google/inject/internal/InjectorImpl;
    .end local v2    # "jitOverride":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 259
    .restart local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    .restart local v1    # "injector":Lcom/google/inject/internal/InjectorImpl;
    .restart local v2    # "jitOverride":Z
    :cond_2
    :try_start_1
    monitor-exit v4

    .line 281
    .end local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :goto_2
    return-object v0

    .line 246
    .restart local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_3
    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    goto :goto_1

    .line 278
    .end local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_4
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v3

    throw v3

    .line 281
    :cond_5
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, v3, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    invoke-direct {p0, p1, p2, v3, p3}, Lcom/google/inject/internal/InjectorImpl;->createJustInTimeBindingRecursive(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;ZLcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;
    .locals 5
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<",
            "Lcom/google/inject/Provider",
            "<TT;>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Lcom/google/inject/Provider<TT;>;>;"
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 298
    .local v2, "providerType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/google/inject/internal/Errors;->cannotInjectRawProvider()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v3

    throw v3

    .line 302
    :cond_0
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "providerType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 305
    .local v0, "entryType":Ljava/lang/reflect/Type;
    invoke-virtual {p0, v0}, Lcom/google/inject/Key;->ofType(Ljava/lang/reflect/Type;)Lcom/google/inject/Key;

    move-result-object v1

    .line 306
    .local v1, "providedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    return-object v1
.end method

.method private static isMembersInjector(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/MembersInjector;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/inject/Key;->getAnnotationType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProvider(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/Provider;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isTypeLiteral(Lcom/google/inject/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {p0}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V
    .locals 2
    .param p2, "ip"    # Lcom/google/inject/spi/InjectionPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<*>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->failedJitBindings:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/MembersInjectorStore;->remove(Lcom/google/inject/TypeLiteral;)Z

    .line 602
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->remove(Lcom/google/inject/Binding;)Z

    .line 603
    if-eqz p2, :cond_0

    .line 604
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->constructors:Lcom/google/inject/internal/ConstructorInjectorStore;

    invoke-virtual {v0, p2}, Lcom/google/inject/internal/ConstructorInjectorStore;->remove(Lcom/google/inject/spi/InjectionPoint;)Z

    .line 606
    :cond_0
    return-void
.end method


# virtual methods
.method callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/ContextualCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .local p1, "callable":Lcom/google/inject/internal/ContextualCallable;, "Lcom/google/inject/internal/ContextualCallable<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1051
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1052
    .local v0, "reference":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1053
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1056
    :cond_0
    aget-object v1, v0, v2

    if-nez v1, :cond_1

    .line 1057
    new-instance v1, Lcom/google/inject/internal/InternalContext;

    invoke-direct {v1}, Lcom/google/inject/internal/InternalContext;-><init>()V

    aput-object v1, v0, v2

    .line 1059
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    check-cast v1, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, v1}, Lcom/google/inject/internal/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1062
    aput-object v3, v0, v2

    .line 1066
    :goto_0
    return-object v1

    .line 1062
    :catchall_0
    move-exception v1

    aput-object v3, v0, v2

    throw v1

    .line 1066
    :cond_1
    aget-object v1, v0, v2

    check-cast v1, Lcom/google/inject/internal/InternalContext;

    invoke-interface {p1, v1}, Lcom/google/inject/internal/ContextualCallable;->call(Lcom/google/inject/internal/InternalContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    new-instance v0, Lcom/google/inject/internal/InternalInjectorCreator;

    invoke-direct {v0}, Lcom/google/inject/internal/InternalInjectorCreator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/inject/internal/InternalInjectorCreator;->parentInjector(Lcom/google/inject/internal/InjectorImpl;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/InternalInjectorCreator;->addModules(Ljava/lang/Iterable;)Lcom/google/inject/internal/InternalInjectorCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/InternalInjectorCreator;->build()Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public varargs createChildInjector([Lcom/google/inject/Module;)Lcom/google/inject/Injector;
    .locals 1
    .param p1, "modules"    # [Lcom/google/inject/Module;

    .prologue
    .line 232
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->createChildInjector(Ljava/lang/Iterable;)Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/SingleParameterInjector;
    .locals 3
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/spi/Dependency",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/SingleParameterInjector",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 955
    .local p1, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 956
    .local v0, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<+TT;>;"
    new-instance v1, Lcom/google/inject/internal/SingleParameterInjector;

    invoke-direct {v1, p1, v0}, Lcom/google/inject/internal/SingleParameterInjector;-><init>(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/BindingImpl;)V

    return-object v1
.end method

.method createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
    .locals 10
    .param p2, "scoping"    # Lcom/google/inject/internal/Scoping;
    .param p3, "providedBy"    # Lcom/google/inject/ProvidedBy;
    .param p4, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Lcom/google/inject/ProvidedBy;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 701
    .local v9, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p3}, Lcom/google/inject/ProvidedBy;->value()Ljava/lang/Class;

    move-result-object v8

    .line 704
    .local v8, "providerType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/inject/Provider<*>;>;"
    if-ne v8, v9, :cond_0

    .line 705
    invoke-virtual {p4}, Lcom/google/inject/internal/Errors;->recursiveProviderType()Lcom/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v0

    throw v0

    .line 710
    :cond_0
    invoke-static {v8}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v5

    .line 711
    .local v5, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Lcom/google/inject/Provider<TT;>;>;"
    new-instance v6, Lcom/google/inject/internal/ProvidedByInternalFactory;

    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v6, v9, v8, v5, v0}, Lcom/google/inject/internal/ProvidedByInternalFactory;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/inject/Key;Z)V

    .line 714
    .local v6, "internalFactory":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    move-object v2, v9

    .line 715
    .local v2, "source":Ljava/lang/Class;
    invoke-static {p1, p0, v6, v2, p2}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/google/inject/internal/LinkedProviderBindingImpl;->createWithInitializer(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;Lcom/google/inject/internal/DelayedInitialize;)Lcom/google/inject/internal/LinkedProviderBindingImpl;

    move-result-object v7

    .line 723
    .local v7, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v0, v7}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/inject/internal/ProvidedByInternalFactory;->setProvisionListenerCallback(Lcom/google/inject/internal/ProvisionListenerStackCallback;)V

    .line 724
    return-object v7

    .line 711
    .end local v2    # "source":Ljava/lang/Class;
    .end local v6    # "internalFactory":Lcom/google/inject/internal/ProvidedByInternalFactory;, "Lcom/google/inject/internal/ProvidedByInternalFactory<TT;>;"
    .end local v7    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createUninitializedBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Ljava/lang/Object;Lcom/google/inject/internal/Errors;Z)Lcom/google/inject/internal/BindingImpl;
    .locals 14
    .param p2, "scoping"    # Lcom/google/inject/internal/Scoping;
    .param p3, "source"    # Ljava/lang/Object;
    .param p4, "errors"    # Lcom/google/inject/internal/Errors;
    .param p5, "jitBinding"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Scoping;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/internal/Errors;",
            "Z)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v13

    .line 628
    .local v13, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/google/inject/ImplementedBy;

    invoke-virtual {v13, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/google/inject/ImplementedBy;

    .line 631
    .local v11, "implementedBy":Lcom/google/inject/ImplementedBy;
    invoke-virtual {v13}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v13}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v11, :cond_1

    .line 632
    :cond_0
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v2

    throw v2

    .line 636
    :cond_1
    const-class v2, Lcom/google/inject/TypeLiteral;

    if-ne v13, v2, :cond_2

    .line 638
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/google/inject/internal/InjectorImpl;->createTypeLiteralBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v10

    .line 657
    :goto_0
    return-object v10

    .line 644
    :cond_2
    if-eqz v11, :cond_3

    .line 645
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v13, v0, v1}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 646
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, p1, v0, v11, v1}, Lcom/google/inject/internal/InjectorImpl;->createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v10

    goto :goto_0

    .line 650
    :cond_3
    const-class v2, Lcom/google/inject/ProvidedBy;

    invoke-virtual {v13, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/google/inject/ProvidedBy;

    .line 651
    .local v12, "providedBy":Lcom/google/inject/ProvidedBy;
    if-eqz v12, :cond_4

    .line 652
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v13, v0, v1}, Lcom/google/inject/internal/Annotations;->checkForMisplacedScopeAnnotations(Ljava/lang/Class;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    .line 653
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v12, v1}, Lcom/google/inject/internal/InjectorImpl;->createProvidedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ProvidedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v10

    goto :goto_0

    .line 657
    :cond_4
    const/4 v4, 0x0

    if-eqz p5, :cond_5

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, v2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    :goto_1
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v9, v2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->atInjectRequired:Z

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v9}, Lcom/google/inject/internal/ConstructorBindingImpl;->create(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/Errors;ZZ)Lcom/google/inject/internal/ConstructorBindingImpl;

    move-result-object v10

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public findBindingsByType(Lcom/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/Binding",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->getAll(Lcom/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 892
    :try_start_0
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic getBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/Key;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 154
    .local v1, "errors":Lcom/google/inject/internal/Errors;
    :try_start_0
    sget-object v3, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->EXISTING_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v2

    .line 155
    .local v2, "result":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    invoke-virtual {v1}, Lcom/google/inject/internal/Errors;->throwConfigurationExceptionIfErrorsExist()V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-object v2

    .line 157
    .end local v2    # "result":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    new-instance v3, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v3
.end method

.method getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;
    .locals 2
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "jitType"    # Lcom/google/inject/internal/InjectorImpl$JitLimitation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v1, p1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 208
    .local v0, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    if-eqz v0, :cond_0

    .line 213
    .end local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/InjectorImpl;->getJustInTimeBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Lcom/google/inject/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/Binding;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/Key;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    return-object v0
.end method

.method public getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v5, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v5, p1}, Lcom/google/inject/internal/State;->getExplicitBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v1

    .line 165
    .local v1, "explicitBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    if-eqz v1, :cond_0

    .line 195
    .end local v1    # "explicitBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :goto_0
    return-object v1

    .line 168
    .restart local v1    # "explicitBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_0
    iget-object v5, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v5}, Lcom/google/inject/internal/State;->lock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 170
    move-object v2, p0

    .local v2, "injector":Lcom/google/inject/internal/InjectorImpl;
    :goto_1
    if-eqz v2, :cond_2

    .line 172
    :try_start_0
    iget-object v5, v2, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/internal/BindingImpl;

    .line 173
    .local v3, "jitBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    if-eqz v3, :cond_1

    .line 174
    monitor-exit v6

    move-object v1, v3

    goto :goto_0

    .line 170
    :cond_1
    iget-object v2, v2, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    goto :goto_1

    .line 177
    .end local v3    # "jitBinding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {p1}, Lcom/google/inject/internal/InjectorImpl;->isProvider(Lcom/google/inject/Key;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 185
    :try_start_1
    new-instance v5, Lcom/google/inject/internal/Errors;

    invoke-direct {v5}, Lcom/google/inject/internal/Errors;-><init>()V

    invoke-static {p1, v5}, Lcom/google/inject/internal/InjectorImpl;->getProvidedKey(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Key;

    move-result-object v4

    .line 186
    .local v4, "providedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    invoke-virtual {p0, v4}, Lcom/google/inject/internal/InjectorImpl;->getExistingBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 187
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getBinding(Lcom/google/inject/Key;)Lcom/google/inject/internal/BindingImpl;
    :try_end_1
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 177
    .end local v4    # "providedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    new-instance v5, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v5

    .line 195
    .end local v0    # "e":Lcom/google/inject/internal/ErrorsException;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getInternalFactory(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/InternalFactory;
    .locals 1
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "jitType"    # Lcom/google/inject/internal/InjectorImpl$JitLimitation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InjectorImpl$JitLimitation;",
            ")",
            "Lcom/google/inject/internal/InternalFactory",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 883
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    return-object v0
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 981
    .local p1, "typeLiteral":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 983
    .local v1, "errors":Lcom/google/inject/internal/Errors;
    :try_start_0
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v2, p1, v1}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 984
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    new-instance v2, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/MembersInjector",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 990
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    return-object v0
.end method

.method getParametersInjectors(Ljava/util/List;Lcom/google/inject/internal/Errors;)[Lcom/google/inject/internal/SingleParameterInjector;
    .locals 7
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/Dependency",
            "<*>;>;",
            "Lcom/google/inject/internal/Errors;",
            ")[",
            "Lcom/google/inject/internal/SingleParameterInjector",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Dependency<*>;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 935
    const/4 v5, 0x0

    .line 950
    :goto_0
    return-object v5

    .line 938
    :cond_0
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v3

    .line 939
    .local v3, "numErrorsBefore":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lcom/google/inject/internal/SingleParameterInjector;

    .line 940
    .local v5, "result":[Lcom/google/inject/internal/SingleParameterInjector;, "[Lcom/google/inject/internal/SingleParameterInjector<*>;"
    const/4 v0, 0x0

    .line 941
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/spi/Dependency;

    .line 943
    .local v4, "parameter":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    :try_start_0
    invoke-virtual {p2, v4}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/google/inject/internal/InjectorImpl;->createParameterInjector(Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/SingleParameterInjector;

    move-result-object v6

    aput-object v6, v5, v0
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    .line 947
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 949
    .end local v4    # "parameter":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    :cond_1
    invoke-virtual {p2, v3}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    goto :goto_0

    .line 944
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v4    # "parameter":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public getParent()Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->parent:Lcom/google/inject/internal/InjectorImpl;

    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    new-instance v1, Lcom/google/inject/internal/Errors;

    invoke-direct {v1, p1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 1031
    .local v1, "errors":Lcom/google/inject/internal/Errors;
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/inject/internal/InjectorImpl;->getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;

    move-result-object v2

    .line 1032
    .local v2, "result":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<TT;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    return-object v2

    .line 1034
    .end local v2    # "result":Lcom/google/inject/Provider;, "Lcom/google/inject/Provider<TT;>;"
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Lcom/google/inject/internal/ErrorsException;
    new-instance v3, Lcom/google/inject/ConfigurationException;

    invoke-virtual {v0}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v3
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 994
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v0

    return-object v0
.end method

.method getProviderOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;)Lcom/google/inject/Provider;
    .locals 3
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 998
    .local p1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    sget-object v2, Lcom/google/inject/internal/InjectorImpl$JitLimitation;->NO_JIT:Lcom/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/inject/internal/InjectorImpl;->getBindingOrThrow(Lcom/google/inject/Key;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/google/inject/internal/BindingImpl;

    move-result-object v0

    .line 999
    .local v0, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<+TT;>;"
    invoke-static {p1}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v1

    .line 1001
    .local v1, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<TT;>;"
    new-instance v2, Lcom/google/inject/internal/InjectorImpl$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/inject/internal/InjectorImpl$2;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/spi/Dependency;Lcom/google/inject/internal/BindingImpl;)V

    return-object v2
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getScopes()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0}, Lcom/google/inject/internal/State;->getConvertersThisLevel()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method index()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/Binding;

    .line 138
    .local v0, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/InjectorImpl;->index(Lcom/google/inject/Binding;)V

    goto :goto_0

    .line 140
    .end local v0    # "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<*>;"
    :cond_0
    return-void
.end method

.method index(Lcom/google/inject/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl;->bindingsMultimap:Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;

    invoke-interface {p1}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/inject/Key;->getTypeLiteral()Lcom/google/inject/TypeLiteral;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/inject/internal/InjectorImpl$BindingsMultimap;->put(Lcom/google/inject/TypeLiteral;Lcom/google/inject/Binding;)V

    .line 144
    return-void
.end method

.method initializeBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 1
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 531
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    instance-of v0, p1, Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v0, :cond_0

    .line 532
    check-cast p1, Lcom/google/inject/internal/DelayedInitialize;

    .end local p1    # "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V

    .line 534
    :cond_0
    return-void
.end method

.method initializeJitBinding(Lcom/google/inject/internal/BindingImpl;Lcom/google/inject/internal/Errors;)V
    .locals 5
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/BindingImpl",
            "<TT;>;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .local p1, "binding":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    const/4 v4, 0x0

    .line 540
    instance-of v3, p1, Lcom/google/inject/internal/DelayedInitialize;

    if-eqz v3, :cond_0

    .line 541
    invoke-virtual {p1}, Lcom/google/inject/internal/BindingImpl;->getKey()Lcom/google/inject/Key;

    move-result-object v1

    .line 542
    .local v1, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    iget-object v3, p0, Lcom/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const/4 v2, 0x0

    .local v2, "successful":Z
    move-object v0, p1

    .line 544
    check-cast v0, Lcom/google/inject/internal/DelayedInitialize;

    .line 546
    .local v0, "delayed":Lcom/google/inject/internal/DelayedInitialize;
    :try_start_0
    invoke-interface {v0, p0, p2}, Lcom/google/inject/internal/DelayedInitialize;->initialize(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    const/4 v2, 0x1

    .line 549
    if-nez v2, :cond_0

    .line 553
    invoke-direct {p0, p1, v4}, Lcom/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V

    .line 554
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/google/inject/internal/InjectorImpl;->cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    .line 558
    .end local v0    # "delayed":Lcom/google/inject/internal/DelayedInitialize;
    .end local v1    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .end local v2    # "successful":Z
    :cond_0
    return-void

    .line 549
    .restart local v0    # "delayed":Lcom/google/inject/internal/DelayedInitialize;
    .restart local v1    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .restart local v2    # "successful":Z
    :catchall_0
    move-exception v3

    if-nez v2, :cond_1

    .line 553
    invoke-direct {p0, p1, v4}, Lcom/google/inject/internal/InjectorImpl;->removeFailedJitBinding(Lcom/google/inject/Binding;Lcom/google/inject/spi/InjectionPoint;)V

    .line 554
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v4}, Lcom/google/inject/internal/InjectorImpl;->cleanup(Lcom/google/inject/internal/BindingImpl;Ljava/util/Set;)Z

    :cond_1
    throw v3
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 976
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/inject/internal/InjectorImpl;->getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;

    move-result-object v0

    .line 977
    .local v0, "membersInjector":Lcom/google/inject/MembersInjector;
    invoke-interface {v0, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 978
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1072
    const-class v0, Lcom/google/inject/Injector;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "bindings"

    iget-object v2, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v2}, Lcom/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
