.class Lorg/restlet/engine/connector/BaseHelper$1;
.super Ljava/lang/Object;
.source "BaseHelper.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/connector/BaseHelper;->createWorkerService()Ljava/util/concurrent/ThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/engine/connector/BaseHelper;


# direct methods
.method constructor <init>(Lorg/restlet/engine/connector/BaseHelper;)V
    .locals 0

    .prologue
    .line 294
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper$1;, "Lorg/restlet/engine/connector/BaseHelper.1;"
    iput-object p1, p0, Lorg/restlet/engine/connector/BaseHelper$1;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 297
    .local p0, "this":Lorg/restlet/engine/connector/BaseHelper$1;, "Lorg/restlet/engine/connector/BaseHelper.1;"
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper$1;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/BaseHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to run the following "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper$1;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/BaseHelper;->isClientSide()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "client-side"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " task: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lorg/restlet/engine/connector/BaseHelper$1;->this$0:Lorg/restlet/engine/connector/BaseHelper;

    invoke-virtual {v0}, Lorg/restlet/engine/connector/BaseHelper;->traceWorkerService()V

    .line 302
    return-void

    .line 297
    :cond_0
    const-string v0, "server-side"

    goto :goto_0
.end method
