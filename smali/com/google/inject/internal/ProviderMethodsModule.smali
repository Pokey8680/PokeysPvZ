.class public final Lcom/google/inject/internal/ProviderMethodsModule;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"

# interfaces
.implements Lcom/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;,
        Lcom/google/inject/internal/ProviderMethodsModule$Signature;
    }
.end annotation


# static fields
.field private static final LOGGER_KEY:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<",
            "Ljava/util/logging/Logger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Ljava/lang/Object;

.field private filter:Lcom/google/inject/HierarchyTraversalFilter;

.field private final skipFastClassGeneration:Z

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/ProviderMethodsModule;->LOGGER_KEY:Lcom/google/inject/Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "delegate"    # Ljava/lang/Object;
    .param p2, "skipFastClassGeneration"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 64
    invoke-static {}, Lcom/google/inject/Guice;->createHierarchyTraversalFilter()Lcom/google/inject/HierarchyTraversalFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    .line 65
    iput-boolean p2, p0, Lcom/google/inject/internal/ProviderMethodsModule;->skipFastClassGeneration:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ProviderMethodsModule;)Lcom/google/inject/TypeLiteral;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ProviderMethodsModule;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    return-object v0
.end method

.method private createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;
    .locals 20
    .param p1, "binder"    # Lcom/google/inject/Binder;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Binder;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/inject/internal/ProviderMethod",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface/range {p1 .. p2}, Lcom/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object p1

    .line 210
    new-instance v11, Lcom/google/inject/internal/Errors;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 213
    .local v11, "errors":Lcom/google/inject/internal/Errors;
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 214
    .local v10, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/Dependency<*>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 215
    .local v7, "parameterProviders":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/Provider<*>;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v18

    .line 216
    .local v18, "parameterTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/TypeLiteral<*>;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v17

    .line 217
    .local v17, "parameterAnnotations":[[Ljava/lang/annotation/Annotation;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_1

    .line 218
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/inject/TypeLiteral;

    aget-object v5, v17, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v4, v1, v5}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v14

    .line 219
    .local v14, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    sget-object v4, Lcom/google/inject/internal/ProviderMethodsModule;->LOGGER_KEY:Lcom/google/inject/Key;

    invoke-virtual {v14, v4}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    const-class v4, Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/inject/internal/UniqueAnnotations;->create()Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v15

    .line 224
    .local v15, "loggerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Ljava/util/logging/Logger;>;"
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Lcom/google/inject/Binder;->bind(Lcom/google/inject/Key;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v4

    new-instance v5, Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/google/inject/internal/ProviderMethodsModule$LogProvider;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v4, v5}, Lcom/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 225
    move-object v14, v15

    .line 227
    .end local v15    # "loggerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<Ljava/util/logging/Logger;>;"
    :cond_0
    invoke-static {v14}, Lcom/google/inject/spi/Dependency;->get(Lcom/google/inject/Key;)Lcom/google/inject/spi/Dependency;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/google/inject/Binder;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 232
    .end local v14    # "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<*>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/inject/internal/ProviderMethodsModule;->typeLiteral:Lcom/google/inject/TypeLiteral;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/inject/TypeLiteral;->getReturnType(Ljava/lang/reflect/Method;)Lcom/google/inject/TypeLiteral;

    move-result-object v19

    .line 234
    .local v19, "returnType":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v11, v1, v2, v4}, Lcom/google/inject/internal/ProviderMethodsModule;->getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v3

    .line 235
    .local v3, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/google/inject/internal/Annotations;->findScopeAnnotation(Lcom/google/inject/internal/Errors;[Ljava/lang/annotation/Annotation;)Ljava/lang/Class;

    move-result-object v8

    .line 238
    .local v8, "scopeAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v11}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/inject/spi/Message;

    .line 239
    .local v16, "message":Lcom/google/inject/spi/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->addError(Lcom/google/inject/spi/Message;)V

    goto :goto_1

    .line 242
    .end local v16    # "message":Lcom/google/inject/spi/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-static {v10}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/google/inject/internal/ProviderMethodsModule;->skipFastClassGeneration:Z

    move-object/from16 v4, p2

    invoke-static/range {v3 .. v9}, Lcom/google/inject/internal/ProviderMethod;->create(Lcom/google/inject/Key;Ljava/lang/reflect/Method;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;Ljava/util/List;Ljava/lang/Class;Z)Lcom/google/inject/internal/ProviderMethod;

    move-result-object v4

    return-object v4
.end method

.method public static forModule(Lcom/google/inject/Module;)Lcom/google/inject/Module;
    .locals 1
    .param p0, "module"    # Lcom/google/inject/Module;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;

    move-result-object v0

    return-object v0
.end method

.method public static forObject(Ljava/lang/Object;)Lcom/google/inject/Module;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/inject/internal/ProviderMethodsModule;->forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;

    move-result-object v0

    return-object v0
.end method

.method private static forObject(Ljava/lang/Object;Z)Lcom/google/inject/Module;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "skipFastClassGeneration"    # Z

    .prologue
    .line 88
    instance-of v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/google/inject/util/Modules;->EMPTY_MODULE:Lcom/google/inject/Module;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/ProviderMethodsModule;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/ProviderMethodsModule;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private static isProvider(Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/google/inject/Provides;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/reflect/Method;
    .param p1, "b"    # Ljava/lang/reflect/Method;

    .prologue
    .line 197
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 198
    .local v0, "modifiers":I
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x1

    .line 205
    :goto_0
    return v1

    .line 201
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const/4 v1, 0x0

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/google/inject/Binder;)V
    .locals 3
    .param p1, "binder"    # Lcom/google/inject/Binder;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ProviderMethodsModule;->getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/ProviderMethod;

    .line 97
    .local v1, "providerMethod":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<*>;"
    invoke-virtual {v1, p1}, Lcom/google/inject/internal/ProviderMethod;->configure(Lcom/google/inject/Binder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 96
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "providerMethod":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<*>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 252
    instance-of v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/inject/internal/ProviderMethodsModule;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKey(Lcom/google/inject/internal/Errors;Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;
    .locals 2
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "member"    # Ljava/lang/reflect/Member;
    .param p4, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Ljava/lang/reflect/Member;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p2, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    invoke-static {p1, p3, p4}, Lcom/google/inject/internal/Annotations;->findBindingAnnotation(Lcom/google/inject/internal/Errors;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 248
    .local v0, "bindingAnnotation":Ljava/lang/annotation/Annotation;
    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p2, v0}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v1

    goto :goto_0
.end method

.method public getProviderMethods(Lcom/google/inject/Binder;)Ljava/util/List;
    .locals 11
    .param p1, "binder"    # Lcom/google/inject/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/internal/ProviderMethod",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 103
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/internal/ProviderMethod<*>;>;"
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/HashMultimap;->create()Lorg/roboguice/shaded/goole/common/collect/HashMultimap;

    move-result-object v5

    .line 104
    .local v5, "methodsBySignature":Lorg/roboguice/shaded/goole/common/collect/Multimap;, "Lorg/roboguice/shaded/goole/common/collect/Multimap<Lcom/google/inject/internal/ProviderMethodsModule$Signature;Ljava/lang/reflect/Method;>;"
    iget-object v8, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    invoke-virtual {v8}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 105
    iget-object v8, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v8, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v9, Lcom/google/inject/Provides;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/google/inject/HierarchyTraversalFilter;->isWorthScanningForMethods(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    iget-object v8, p0, Lcom/google/inject/internal/ProviderMethodsModule;->filter:Lcom/google/inject/HierarchyTraversalFilter;

    const-class v9, Lcom/google/inject/Provides;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/google/inject/HierarchyTraversalFilter;->getAllMethods(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 113
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_1

    .line 115
    new-instance v8, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    invoke-direct {v8, p0, v4}, Lcom/google/inject/internal/ProviderMethodsModule$Signature;-><init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V

    invoke-interface {v5, v8, v4}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    :cond_1
    invoke-static {v4}, Lcom/google/inject/internal/ProviderMethodsModule;->isProvider(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    invoke-direct {p0, p1, v4}, Lcom/google/inject/internal/ProviderMethodsModule;->createProviderMethod(Lcom/google/inject/Binder;Ljava/lang/reflect/Method;)Lcom/google/inject/internal/ProviderMethod;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 126
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/inject/internal/ProviderMethod;

    .line 127
    .local v6, "provider":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<*>;"
    invoke-virtual {v6}, Lcom/google/inject/internal/ProviderMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 128
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    new-instance v8, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    invoke-direct {v8, p0, v4}, Lcom/google/inject/internal/ProviderMethodsModule$Signature;-><init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V

    invoke-interface {v5, v8}, Lorg/roboguice/shaded/goole/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 131
    .local v3, "matchingSignature":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 135
    invoke-static {v3, v4}, Lcom/google/inject/internal/ProviderMethodsModule;->overrides(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 136
    const-string v8, "Overriding @Provides methods is not allowed.\n\t@Provides method: %s\n\toverridden by: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-interface {p1, v8, v9}, Lcom/google/inject/Binder;->addError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 145
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "matchingSignature":Ljava/lang/reflect/Method;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "provider":Lcom/google/inject/internal/ProviderMethod;, "Lcom/google/inject/internal/ProviderMethod<*>;"
    :cond_6
    return-object v7
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/inject/internal/ProviderMethodsModule;->delegate:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
