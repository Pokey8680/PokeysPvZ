.class Lorg/restlet/service/TaskService$1$1;
.super Ljava/lang/Object;
.source "TaskService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/service/TaskService$1;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/service/TaskService$1;

.field final synthetic val$currentApplication:Lorg/restlet/Application;

.field final synthetic val$currentContext:Lorg/restlet/Context;

.field final synthetic val$currentResponse:Lorg/restlet/Response;

.field final synthetic val$currentVirtualHost:Ljava/lang/Integer;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/restlet/service/TaskService$1;Lorg/restlet/Response;Lorg/restlet/Context;Ljava/lang/Integer;Lorg/restlet/Application;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/restlet/service/TaskService$1$1;->this$0:Lorg/restlet/service/TaskService$1;

    iput-object p2, p0, Lorg/restlet/service/TaskService$1$1;->val$currentResponse:Lorg/restlet/Response;

    iput-object p3, p0, Lorg/restlet/service/TaskService$1$1;->val$currentContext:Lorg/restlet/Context;

    iput-object p4, p0, Lorg/restlet/service/TaskService$1$1;->val$currentVirtualHost:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/restlet/service/TaskService$1$1;->val$currentApplication:Lorg/restlet/Application;

    iput-object p6, p0, Lorg/restlet/service/TaskService$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/restlet/service/TaskService$1$1;->val$currentResponse:Lorg/restlet/Response;

    invoke-static {v0}, Lorg/restlet/Response;->setCurrent(Lorg/restlet/Response;)V

    .line 129
    iget-object v0, p0, Lorg/restlet/service/TaskService$1$1;->val$currentContext:Lorg/restlet/Context;

    invoke-static {v0}, Lorg/restlet/Context;->setCurrent(Lorg/restlet/Context;)V

    .line 130
    iget-object v0, p0, Lorg/restlet/service/TaskService$1$1;->val$currentVirtualHost:Ljava/lang/Integer;

    invoke-static {v0}, Lorg/restlet/routing/VirtualHost;->setCurrent(Ljava/lang/Integer;)V

    .line 131
    iget-object v0, p0, Lorg/restlet/service/TaskService$1$1;->val$currentApplication:Lorg/restlet/Application;

    invoke-static {v0}, Lorg/restlet/Application;->setCurrent(Lorg/restlet/Application;)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lorg/restlet/service/TaskService$1$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/restlet/engine/Engine;->clearThreadLocalVariables()V

    throw v0
.end method
