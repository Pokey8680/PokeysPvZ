.class Lorg/restlet/service/TaskService$RestletThreadFactory;
.super Ljava/lang/Object;
.source "TaskService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/service/TaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestletThreadFactory"
.end annotation


# instance fields
.field final factory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/service/TaskService$RestletThreadFactory;->factory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method synthetic constructor <init>(Lorg/restlet/service/TaskService$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/restlet/service/TaskService$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/restlet/service/TaskService$RestletThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 90
    iget-object v1, p0, Lorg/restlet/service/TaskService$RestletThreadFactory;->factory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 94
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pool"

    const-string v3, "restlet"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 95
    return-object v0
.end method
