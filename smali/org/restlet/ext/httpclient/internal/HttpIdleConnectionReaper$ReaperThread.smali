.class Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;
.super Ljava/lang/Thread;
.source "HttpIdleConnectionReaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaperThread"
.end annotation


# instance fields
.field private volatile shutdown:Z

.field private final shutdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final startupLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;


# direct methods
.method private constructor <init>(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 61
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;
    .param p2, "x1"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;-><init>(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)V

    return-void
.end method

.method static synthetic access$402(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdown:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 69
    :goto_0
    iget-boolean v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdown:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :try_start_1
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-static {v1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->access$000(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-static {v1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->access$100(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 77
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-static {v1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->access$100(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->this$0:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    invoke-static {v2}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->access$200(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "interrupted":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 81
    .end local v0    # "interrupted":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 83
    return-void
.end method

.method waitForStart(J)V
    .locals 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 95
    return-void
.end method

.method waitForStop(J)V
    .locals 3
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->shutdownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 107
    return-void
.end method
