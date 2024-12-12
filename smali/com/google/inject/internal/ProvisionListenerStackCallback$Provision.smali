.class Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;
.super Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProvisionListenerStackCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Provision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field final context:Lcom/google/inject/internal/InternalContext;

.field erredListener:Lcom/google/inject/spi/ProvisionListener;

.field final errors:Lcom/google/inject/internal/Errors;

.field exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

.field index:I

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)V
    .locals 1
    .param p2, "errors"    # Lcom/google/inject/internal/Errors;
    .param p3, "context"    # Lcom/google/inject/internal/InternalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>.Provision;"
    .local p4, "callable":Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<TT;>;"
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-direct {p0}, Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 103
    iput-object p4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;

    .line 104
    iput-object p3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->context:Lcom/google/inject/internal/InternalContext;

    .line 105
    iput-object p2, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->errors:Lcom/google/inject/internal/Errors;

    .line 106
    return-void
.end method


# virtual methods
.method public getBinding()Lcom/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>.Provision;"
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v0}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$100(Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/Binding;

    move-result-object v0

    return-object v0
.end method

.method public getDependencyChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/DependencyAndSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>.Provision;"
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->context:Lcom/google/inject/internal/InternalContext;

    invoke-virtual {v0}, Lcom/google/inject/internal/InternalContext;->getDependencyChain()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public provision()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>.Provision;"
    iget v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 111
    iget v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    iget-object v4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v4}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->callable:Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;

    invoke-interface {v3}, Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;->call()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;

    return-object v3

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ee":Lcom/google/inject/internal/ErrorsException;
    iput-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    .line 116
    new-instance v3, Lcom/google/inject/ProvisionException;

    iget-object v4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v3

    .line 118
    .end local v1    # "ee":Lcom/google/inject/internal/ErrorsException;
    :cond_1
    iget v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    iget-object v4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v4}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 119
    iget v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    .line 122
    .local v0, "currentIdx":I
    :try_start_1
    iget-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v3}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v3

    iget v4, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    aget-object v3, v3, v4

    invoke-interface {v3, p0}, Lcom/google/inject/spi/ProvisionListener;->onProvision(Lcom/google/inject/spi/ProvisionListener$ProvisionInvocation;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    iget v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->index:I

    if-ne v0, v3, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->provision()Ljava/lang/Object;

    goto :goto_0

    .line 123
    :catch_1
    move-exception v2

    .line 124
    .local v2, "re":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->this$0:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    invoke-static {v3}, Lcom/google/inject/internal/ProvisionListenerStackCallback;->access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;

    move-result-object v3

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    .line 125
    throw v2

    .line 132
    .end local v0    # "currentIdx":I
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Already provisioned in this listener."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
