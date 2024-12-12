.class Lcom/ea/nimble/NetworkImpl$TimerTask;
.super Ljava/lang/Object;
.source "NetworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/NetworkImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/NetworkImpl;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/NetworkImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ea/nimble/NetworkImpl;
    .param p2, "x1"    # Lcom/ea/nimble/NetworkImpl$1;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/ea/nimble/NetworkImpl$TimerTask;-><init>(Lcom/ea/nimble/NetworkImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 429
    iget-object v1, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/ea/nimble/NetworkImpl;->access$302(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/Timer;)Lcom/ea/nimble/Timer;

    .line 432
    iget-object v0, p0, Lcom/ea/nimble/NetworkImpl$TimerTask;->this$0:Lcom/ea/nimble/NetworkImpl;

    const-string v2, "http://cdn.skum.eamobile.com"

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-static {v0, v2, v4, v5}, Lcom/ea/nimble/NetworkImpl;->access$400(Lcom/ea/nimble/NetworkImpl;Ljava/lang/String;D)V

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
