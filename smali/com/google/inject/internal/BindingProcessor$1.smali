.class Lcom/google/inject/internal/BindingProcessor$1;
.super Lcom/google/inject/internal/AbstractBindingProcessor$Processor;
.source "BindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/BindingProcessor;->visit(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/internal/AbstractBindingProcessor$Processor",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/BindingProcessor;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/BindingProcessor;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .prologue
    .line 70
    .local p2, "x0":Lcom/google/inject/internal/BindingImpl;, "Lcom/google/inject/internal/BindingImpl<TT;>;"
    iput-object p1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-direct {p0, p1, p2}, Lcom/google/inject/internal/AbstractBindingProcessor$Processor;-><init>(Lcom/google/inject/internal/AbstractBindingProcessor;Lcom/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConstructorBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "binding":Lcom/google/inject/spi/ConstructorBinding;, "Lcom/google/inject/spi/ConstructorBinding<+TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-interface {p1}, Lcom/google/inject/spi/ConstructorBinding;->getConstructor()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v5, v5, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/inject/internal/ConstructorBindingImpl;->create(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;Lcom/google/inject/internal/Errors;ZZ)Lcom/google/inject/internal/ConstructorBindingImpl;

    move-result-object v9

    .line 77
    .local v9, "onInjector":Lcom/google/inject/internal/ConstructorBindingImpl;, "Lcom/google/inject/internal/ConstructorBindingImpl<TT;>;"
    invoke-virtual {p0, v9}, Lcom/google/inject/internal/BindingProcessor$1;->scheduleInitialization(Lcom/google/inject/internal/BindingImpl;)V

    .line 78
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-virtual {v0, v9}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v9    # "onInjector":Lcom/google/inject/internal/ConstructorBindingImpl;, "Lcom/google/inject/internal/ConstructorBindingImpl<TT;>;"
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :catch_0
    move-exception v8

    .line 80
    .local v8, "e":Lcom/google/inject/internal/ErrorsException;
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v8}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/inject/internal/BindingProcessor;->invalidBinding(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/UntargettedBindingImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ConvertedConstantBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "binding":Lcom/google/inject/spi/ConvertedConstantBinding;, "Lcom/google/inject/spi/ConvertedConstantBinding<+TT;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ExposedBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "binding":Lcom/google/inject/spi/ExposedBinding;, "Lcom/google/inject/spi/ExposedBinding<+TT;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InstanceBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "binding":Lcom/google/inject/spi/InstanceBinding;, "Lcom/google/inject/spi/InstanceBinding<+TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/google/inject/spi/InstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v5

    .line 90
    .local v5, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    invoke-interface/range {p1 .. p1}, Lcom/google/inject/spi/InstanceBinding;->getInstance()Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-static {v0}, Lcom/google/inject/internal/BindingProcessor;->access$000(Lcom/google/inject/internal/BindingProcessor;)Lcom/google/inject/internal/Initializer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    move-result-object v14

    .line 95
    .local v14, "ref":Lcom/google/inject/internal/Initializable;, "Lcom/google/inject/internal/Initializable<TT;>;"
    new-instance v13, Lcom/google/inject/internal/ConstantFactory;

    invoke-direct {v13, v14}, Lcom/google/inject/internal/ConstantFactory;-><init>(Lcom/google/inject/internal/Initializable;)V

    .line 96
    .local v13, "factory":Lcom/google/inject/internal/ConstantFactory;, "Lcom/google/inject/internal/ConstantFactory<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v0, v1, v13, v3, v4}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v10

    .line 98
    .local v10, "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v6, Lcom/google/inject/internal/InstanceBindingImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v7, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v8, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v9, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object v11, v5

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/LinkedKeyBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "binding":Lcom/google/inject/spi/LinkedKeyBinding;, "Lcom/google/inject/spi/LinkedKeyBinding<+TT;>;"
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 143
    invoke-interface {p1}, Lcom/google/inject/spi/LinkedKeyBinding;->getLinkedKey()Lcom/google/inject/Key;

    move-result-object v6

    .line 144
    .local v6, "linkedKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    invoke-virtual {v0, v6}, Lcom/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->recursiveBinding()Lcom/google/inject/internal/Errors;

    .line 148
    :cond_0
    new-instance v7, Lcom/google/inject/internal/FactoryProxy;

    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/google/inject/internal/FactoryProxy;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 149
    .local v7, "factory":Lcom/google/inject/internal/FactoryProxy;, "Lcom/google/inject/internal/FactoryProxy<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/google/inject/internal/BindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, v7}, Lcom/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/google/inject/internal/CreationListener;)V

    .line 150
    iget-object v0, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v0, v1, v7, v2, v3}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 152
    .local v4, "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    iget-object v8, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v0, Lcom/google/inject/internal/LinkedBindingImpl;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-direct/range {v0 .. v6}, Lcom/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {v8, v0}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "binding":Lcom/google/inject/spi/ProviderBinding;, "Lcom/google/inject/spi/ProviderBinding<+TT;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot apply a non-module element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderInstanceBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "binding":Lcom/google/inject/spi/ProviderInstanceBinding;, "Lcom/google/inject/spi/ProviderInstanceBinding<+TT;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 106
    invoke-interface/range {p1 .. p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getUserSuppliedProvider()Ljavax/inject/Provider;

    move-result-object v3

    .line 107
    .local v3, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+TT;>;"
    invoke-interface/range {p1 .. p1}, Lcom/google/inject/spi/ProviderInstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v6

    .line 108
    .local v6, "injectionPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/InjectionPoint;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    invoke-static {v1}, Lcom/google/inject/internal/BindingProcessor;->access$000(Lcom/google/inject/internal/BindingProcessor;)Lcom/google/inject/internal/Initializer;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    invoke-virtual/range {v1 .. v6}, Lcom/google/inject/internal/Initializer;->requestInjection(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Binding;Ljava/lang/Object;Ljava/util/Set;)Lcom/google/inject/internal/Initializable;

    move-result-object v16

    .line 113
    .local v16, "initializable":Lcom/google/inject/internal/Initializable;, "Lcom/google/inject/internal/Initializable<+Ljavax/inject/Provider<+TT;>;>;"
    new-instance v15, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v1, v1, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v4, v4, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v2, v1, v4}, Lcom/google/inject/internal/InternalFactoryToInitializableAdapter;-><init>(Lcom/google/inject/internal/Initializable;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V

    .line 116
    .local v15, "factory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v2, v2, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v1, v2, v15, v4, v5}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v11

    .line 118
    .local v11, "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/google/inject/internal/ProviderInstanceBindingImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v8, v2, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    move-object v13, v3

    move-object v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Ljavax/inject/Provider;Ljava/util/Set;)V

    invoke-virtual {v1, v7}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 120
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 113
    .end local v11    # "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    .end local v15    # "factory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<TT;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ProviderKeyBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, "binding":Lcom/google/inject/spi/ProviderKeyBinding;, "Lcom/google/inject/spi/ProviderKeyBinding<+TT;>;"
    const/4 v10, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/google/inject/internal/BindingProcessor$1;->prepareBinding()V

    .line 126
    invoke-interface {p1}, Lcom/google/inject/spi/ProviderKeyBinding;->getProviderKey()Lcom/google/inject/Key;

    move-result-object v2

    .line 129
    .local v2, "providerKey":Lcom/google/inject/Key;, "Lcom/google/inject/Key<+Ljavax/inject/Provider<+TT;>;>;"
    new-instance v0, Lcom/google/inject/internal/BoundProviderFactory;

    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v4, v4, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, v4, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v4, v4, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-nez v4, :cond_0

    move v4, v10

    :goto_0
    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v5, v5, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v5, v5, Lcom/google/inject/internal/InjectorImpl;->provisionListenerStore:Lcom/google/inject/internal/ProvisionListenerCallbackStore;

    invoke-virtual {v5, p1}, Lcom/google/inject/internal/ProvisionListenerCallbackStore;->get(Lcom/google/inject/Binding;)Lcom/google/inject/internal/ProvisionListenerStackCallback;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/BoundProviderFactory;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;ZLcom/google/inject/internal/ProvisionListenerStackCallback;)V

    .line 132
    .local v0, "boundProviderFactory":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/google/inject/internal/BindingProcessor;->bindingData:Lcom/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v1, v0}, Lcom/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/google/inject/internal/CreationListener;)V

    .line 133
    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v3, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v3, v3, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    invoke-static {v1, v3, v0, v4, v5}, Lcom/google/inject/internal/Scoping;->scope(Lcom/google/inject/Key;Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/google/inject/internal/Scoping;)Lcom/google/inject/internal/InternalFactory;

    move-result-object v7

    .line 135
    .local v7, "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    new-instance v3, Lcom/google/inject/internal/LinkedProviderBindingImpl;

    iget-object v4, p0, Lcom/google/inject/internal/BindingProcessor$1;->this$0:Lcom/google/inject/internal/BindingProcessor;

    iget-object v4, v4, Lcom/google/inject/internal/BindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v5, p0, Lcom/google/inject/internal/BindingProcessor$1;->key:Lcom/google/inject/Key;

    iget-object v6, p0, Lcom/google/inject/internal/BindingProcessor$1;->source:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/inject/internal/BindingProcessor$1;->scoping:Lcom/google/inject/internal/Scoping;

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/InternalFactory;Lcom/google/inject/internal/Scoping;Lcom/google/inject/Key;)V

    invoke-virtual {v1, v3}, Lcom/google/inject/internal/BindingProcessor;->putBinding(Lcom/google/inject/internal/BindingImpl;)V

    .line 137
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 129
    .end local v0    # "boundProviderFactory":Lcom/google/inject/internal/BoundProviderFactory;, "Lcom/google/inject/internal/BoundProviderFactory<TT;>;"
    .end local v7    # "scopedFactory":Lcom/google/inject/internal/InternalFactory;, "Lcom/google/inject/internal/InternalFactory<+TT;>;"
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/UntargettedBinding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "untargetted":Lcom/google/inject/spi/UntargettedBinding;, "Lcom/google/inject/spi/UntargettedBinding<+TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ConstructorBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ConvertedConstantBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ExposedBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/InstanceBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/LinkedKeyBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ProviderBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ProviderInstanceBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ProviderKeyBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/UntargettedBinding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visit(Lcom/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<+TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BindingProcessor should override all visitations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic visitOther(Lcom/google/inject/Binding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/Binding;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/BindingProcessor$1;->visitOther(Lcom/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
