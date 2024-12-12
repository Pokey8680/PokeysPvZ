.class final Lcom/google/inject/internal/ProvisionListenerStackCallback;
.super Ljava/lang/Object;
.source "ProvisionListenerStackCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;,
        Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<*>;"
        }
    .end annotation
.end field

.field private static final EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;


# instance fields
.field private final binding:Lcom/google/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Binding",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final listeners:[Lcom/google/inject/spi/ProvisionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/inject/spi/ProvisionListener;

    sput-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;

    .line 38
    new-instance v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;

    const/4 v1, 0x0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/inject/internal/ProvisionListenerStackCallback;-><init>(Lcom/google/inject/Binding;Ljava/util/List;)V

    sput-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Binding;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binding",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/ProvisionListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    .local p1, "binding":Lcom/google/inject/Binding;, "Lcom/google/inject/Binding<TT;>;"
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/spi/ProvisionListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    .line 51
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    sget-object v1, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_LISTENER:[Lcom/google/inject/spi/ProvisionListener;

    iput-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {p2}, Lorg/roboguice/shaded/goole/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 55
    .local v0, "deDuplicated":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/inject/spi/ProvisionListener;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/inject/spi/ProvisionListener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/inject/spi/ProvisionListener;

    iput-object v1, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/inject/internal/ProvisionListenerStackCallback;)[Lcom/google/inject/spi/ProvisionListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/inject/internal/ProvisionListenerStackCallback;)Lcom/google/inject/Binding;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    return-object v0
.end method

.method public static emptyListener()Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->EMPTY_CALLBACK:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    return-object v0
.end method


# virtual methods
.method public hasListeners()Z
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->listeners:[Lcom/google/inject/spi/ProvisionListener;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public provision(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)Ljava/lang/Object;
    .locals 8
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .param p2, "context"    # Lcom/google/inject/internal/InternalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    .local p3, "callable":Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback<TT;>;"
    new-instance v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;-><init>(Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/internal/ProvisionListenerStackCallback$ProvisionCallback;)V

    .line 66
    .local v2, "provision":Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>.Provision;"
    const/4 v0, 0x0

    .line 68
    .local v0, "caught":Ljava/lang/RuntimeException;
    :try_start_0
    invoke-virtual {v2}, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->provision()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget-object v4, v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    if-eqz v4, :cond_0

    .line 74
    iget-object v4, v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->exceptionDuringProvision:Lcom/google/inject/internal/ErrorsException;

    throw v4

    .line 69
    :catch_0
    move-exception v3

    .line 70
    .local v3, "t":Ljava/lang/RuntimeException;
    move-object v0, v3

    goto :goto_0

    .line 75
    .end local v3    # "t":Ljava/lang/RuntimeException;
    :cond_0
    if-eqz v0, :cond_2

    .line 76
    iget-object v4, v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->erredListener:Lcom/google/inject/spi/ProvisionListener;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "listener":Ljava/lang/Object;
    :goto_1
    const-string v4, "Error notifying ProvisionListener %s of %s.%n Reason: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/inject/internal/ProvisionListenerStackCallback;->binding:Lcom/google/inject/Binding;

    invoke-interface {v7}, Lcom/google/inject/Binding;->getKey()Lcom/google/inject/Key;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object v4

    throw v4

    .line 76
    .end local v1    # "listener":Ljava/lang/Object;
    :cond_1
    const-string v1, "(unknown)"

    goto :goto_1

    .line 83
    :cond_2
    iget-object v4, v2, Lcom/google/inject/internal/ProvisionListenerStackCallback$Provision;->result:Ljava/lang/Object;

    return-object v4
.end method
