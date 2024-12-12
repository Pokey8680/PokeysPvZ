.class Lorg/restlet/engine/resource/ClientInvocationHandler$1;
.super Ljava/lang/Object;
.source "ClientInvocationHandler.java"

# interfaces
.implements Lorg/restlet/Uniform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/resource/ClientInvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/resource/ClientInvocationHandler;

.field final synthetic val$actualType:Ljava/lang/Class;

.field final synthetic val$rCallback:Lorg/restlet/resource/Result;


# direct methods
.method constructor <init>(Lorg/restlet/engine/resource/ClientInvocationHandler;Lorg/restlet/resource/Result;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 152
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler$1;, "Lorg/restlet/engine/resource/ClientInvocationHandler.1;"
    iput-object p1, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->this$0:Lorg/restlet/engine/resource/ClientInvocationHandler;

    iput-object p2, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$rCallback:Lorg/restlet/resource/Result;

    iput-object p3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$actualType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 6
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 156
    .local p0, "this":Lorg/restlet/engine/resource/ClientInvocationHandler$1;, "Lorg/restlet/engine/resource/ClientInvocationHandler.1;"
    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Status;->isError()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$rCallback:Lorg/restlet/resource/Result;

    new-instance v4, Lorg/restlet/resource/ResourceException;

    invoke-virtual {p2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/restlet/resource/ResourceException;-><init>(Lorg/restlet/data/Status;)V

    invoke-interface {v3, v4}, Lorg/restlet/resource/Result;->onFailure(Ljava/lang/Throwable;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$actualType:Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 166
    .local v2, "serializationError":Z
    :try_start_0
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->this$0:Lorg/restlet/engine/resource/ClientInvocationHandler;

    invoke-virtual {v3}, Lorg/restlet/engine/resource/ClientInvocationHandler;->getClientResource()Lorg/restlet/resource/ClientResource;

    move-result-object v3

    invoke-virtual {p2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v4

    iget-object v5, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$actualType:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Lorg/restlet/resource/ClientResource;->toObject(Lorg/restlet/representation/Representation;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    .end local v1    # "result":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_0

    .line 178
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$rCallback:Lorg/restlet/resource/Result;

    invoke-interface {v3, v1}, Lorg/restlet/resource/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 172
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$rCallback:Lorg/restlet/resource/Result;

    new-instance v4, Lorg/restlet/resource/ResourceException;

    invoke-direct {v4, v0}, Lorg/restlet/resource/ResourceException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Lorg/restlet/resource/Result;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "serializationError":Z
    :cond_2
    iget-object v3, p0, Lorg/restlet/engine/resource/ClientInvocationHandler$1;->val$rCallback:Lorg/restlet/resource/Result;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/restlet/resource/Result;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
