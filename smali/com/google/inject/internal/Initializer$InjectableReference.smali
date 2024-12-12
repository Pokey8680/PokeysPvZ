.class Lcom/google/inject/internal/Initializer$InjectableReference;
.super Ljava/lang/Object;
.source "Initializer.java"

# interfaces
.implements Lcom/google/inject/internal/Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectableReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/Initializable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final key:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/inject/internal/Initializer;


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/Initializer;Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;)V
    .locals 1
    .param p2, "injector"    # Lcom/google/inject/internal/InjectorImpl;
    .param p6, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "TT;",
            "Lcom/google/inject/Key",
            "<TT;>;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    .local p4, "key":Lcom/google/inject/Key;, "Lcom/google/inject/Key<TT;>;"
    .local p5, "provisionCallback":Lcom/google/inject/internal/ProvisionListenerStackCallback;, "Lcom/google/inject/internal/ProvisionListenerStackCallback<TT;>;"
    iput-object p1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 131
    iput-object p4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    .line 132
    iput-object p5, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    .line 133
    const-string v0, "instance"

    invoke-static {p3, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    .line 134
    const-string v0, "source"

    invoke-static {p6, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/internal/Initializer$InjectableReference;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/inject/internal/Initializer$InjectableReference;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 11
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 148
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer;->access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    .line 182
    :goto_0
    return-object v1

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v2}, Lcom/google/inject/internal/Initializer;->access$200(Lcom/google/inject/internal/Initializer;)Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer;->access$100(Lcom/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 156
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v7

    .line 159
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 164
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer;->access$300(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/google/inject/internal/Initializer;->access$400(Lcom/google/inject/internal/Initializer;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/internal/MembersInjectorImpl;

    .line 169
    .local v0, "membersInjector":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    if-eqz v0, :cond_3

    move v1, v6

    :goto_1
    const-string v2, "No membersInjector available for instance: %s, from key: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    iget-object v3, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->key:Lcom/google/inject/Key;

    iget-object v4, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->provisionCallback:Lcom/google/inject/internal/ProvisionListenerStackCallback;

    iget-object v5, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v9, v9, Lcom/google/inject/internal/InjectorImpl;->options:Lcom/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-object v9, v9, Lcom/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/google/inject/Stage;

    sget-object v10, Lcom/google/inject/Stage;->TOOL:Lcom/google/inject/Stage;

    if-ne v9, v10, :cond_4

    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V

    .line 182
    .end local v0    # "membersInjector":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    :cond_2
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    goto :goto_0

    .restart local v0    # "membersInjector":Lcom/google/inject/internal/MembersInjectorImpl;, "Lcom/google/inject/internal/MembersInjectorImpl<TT;>;"
    :cond_3
    move v1, v8

    .line 169
    goto :goto_1

    :cond_4
    move v6, v8

    .line 174
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    .local p0, "this":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    iget-object v0, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;
    .locals 3
    .param p1, "errors"    # Lcom/google/inject/internal/Errors;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/internal/MembersInjectorImpl",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/google/inject/internal/Initializer$InjectableReference;, "Lcom/google/inject/internal/Initializer$InjectableReference<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object v0

    .line 140
    .local v0, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<TT;>;"
    iget-object v1, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/google/inject/internal/MembersInjectorStore;

    iget-object v2, p0, Lcom/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/inject/internal/MembersInjectorStore;->get(Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/MembersInjectorImpl;

    move-result-object v1

    return-object v1
.end method
