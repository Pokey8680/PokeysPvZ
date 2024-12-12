.class Lcom/google/inject/internal/InjectorOptionsProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "InjectorOptionsProcessor.java"


# instance fields
.field private atInjectRequired:Z

.field private disableCircularProxies:Z

.field private exactBindingAnnotationsRequired:Z

.field private jitDisabled:Z


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 1
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    .line 36
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 37
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    .line 39
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    .line 43
    return-void
.end method


# virtual methods
.method getOptions(Lcom/google/inject/Stage;Lcom/google/inject/internal/InjectorImpl$InjectorOptions;)Lcom/google/inject/internal/InjectorImpl$InjectorOptions;
    .locals 7
    .param p1, "stage"    # Lcom/google/inject/Stage;
    .param p2, "parentOptions"    # Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 70
    const-string v0, "stage must be set"

    invoke-static {p1, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    if-nez p2, :cond_0

    .line 72
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    iget-boolean v4, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    iget-boolean v5, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/google/inject/Stage;ZZZZ)V

    .line 80
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_1
    const-string v2, "child & parent stage don\'t match"

    invoke-static {v0, v2}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 80
    new-instance v0, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v2, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v2, :cond_7

    :cond_1
    move v2, v1

    :goto_2
    iget-boolean v3, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-eqz v3, :cond_8

    :cond_2
    move v3, v1

    :goto_3
    iget-boolean v4, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    if-nez v4, :cond_3

    iget-boolean v4, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->atInjectRequired:Z

    if-eqz v4, :cond_9

    :cond_3
    move v4, v1

    :goto_4
    iget-boolean v6, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    if-nez v6, :cond_4

    iget-boolean v6, p2, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->exactBindingAnnotationsRequired:Z

    if-eqz v6, :cond_5

    :cond_4
    move v5, v1

    :cond_5
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/google/inject/Stage;ZZZZ)V

    goto :goto_0

    :cond_6
    move v0, v5

    .line 79
    goto :goto_1

    :cond_7
    move v2, v5

    .line 80
    goto :goto_2

    :cond_8
    move v3, v5

    goto :goto_3

    :cond_9
    move v4, v5

    goto :goto_4
.end method

.method public visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "option"    # Lcom/google/inject/spi/DisableCircularProxiesOption;

    .prologue
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "option"    # Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;

    .prologue
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->atInjectRequired:Z

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "option"    # Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;

    .prologue
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->exactBindingAnnotationsRequired:Z

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "option"    # Lcom/google/inject/spi/RequireExplicitBindingsOption;

    .prologue
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/DisableCircularProxiesOption;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireAtInjectOnConstructorsOption;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireExactBindingAnnotationsOption;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/inject/spi/RequireExplicitBindingsOption;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
