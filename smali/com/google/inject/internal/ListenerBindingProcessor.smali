.class final Lcom/google/inject/internal/ListenerBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "ListenerBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 31
    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/ProvisionListenerBinding;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "binding"    # Lcom/google/inject/spi/ProvisionListenerBinding;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/inject/internal/ListenerBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->addProvisionListener(Lcom/google/inject/spi/ProvisionListenerBinding;)V

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "binding"    # Lcom/google/inject/spi/TypeListenerBinding;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/inject/internal/ListenerBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/State;->addTypeListener(Lcom/google/inject/spi/TypeListenerBinding;)V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/ProvisionListenerBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/ProvisionListenerBinding;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ListenerBindingProcessor;->visit(Lcom/google/inject/spi/ProvisionListenerBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/TypeListenerBinding;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/ListenerBindingProcessor;->visit(Lcom/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
