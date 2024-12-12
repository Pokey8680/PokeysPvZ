.class Lcom/google/inject/internal/InjectorImpl$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/InjectorImpl;->createImplementedByBinding(Lcom/google/inject/Key;Lcom/google/inject/internal/Scoping;Lcom/google/inject/ImplementedBy;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/BindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/internal/InjectorImpl;

.field final synthetic val$targetBinding:Lcom/google/inject/internal/BindingImpl;

.field final synthetic val$targetKey:Lcom/google/inject/Key;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/Key;Lcom/google/inject/internal/BindingImpl;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/inject/internal/InjectorImpl$1;->this$0:Lcom/google/inject/internal/InjectorImpl;

    iput-object p2, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetKey:Lcom/google/inject/Key;

    iput-object p3, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .param p4, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 754
    .local p3, "dependency":Lcom/google/inject/spi/Dependency;, "Lcom/google/inject/spi/Dependency<*>;"
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetKey:Lcom/google/inject/Key;

    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v1}, Lcom/google/inject/internal/BindingImpl;->getSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/inject/internal/InternalContext;->pushState(Lcom/google/inject/Key;Ljava/lang/Object;)V

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetBinding:Lcom/google/inject/internal/BindingImpl;

    invoke-virtual {v0}, Lcom/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/google/inject/internal/InternalFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/internal/InjectorImpl$1;->val$targetKey:Lcom/google/inject/Key;

    invoke-virtual {p1, v1}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/inject/internal/InternalFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 759
    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/google/inject/internal/InternalContext;->popState()V

    throw v0
.end method
