.class public Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;
.super Ljava/lang/Object;
.source "HttpIdleConnectionReaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$1;,
        Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;
    }
.end annotation


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final idleCheckInterval:J

.field private final idleTimeOut:J

.field private final reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;JJ)V
    .locals 4
    .param p1, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p2, "idleCheckInterval"    # J
    .param p4, "idleTimeout"    # J

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpClient is a required parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 140
    iput-wide p2, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->idleCheckInterval:J

    .line 141
    iput-wide p4, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->idleTimeOut:J

    .line 143
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    new-instance v0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-direct {v0, p0, v1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;-><init>(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$1;)V

    :goto_0
    iput-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    .line 145
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->start()V

    .line 148
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method static synthetic access$000(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)J
    .locals 2
    .param p0, "x0"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->idleCheckInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .param p0, "x0"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$200(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;)J
    .locals 2
    .param p0, "x0"    # Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->idleTimeOut:J

    return-wide v0
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->access$402(Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;Z)Z

    .line 180
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->interrupt()V

    .line 182
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->join(J)V

    goto :goto_0
.end method

.method public waitForReaperStart(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->waitForStart(J)V

    .line 195
    return-void
.end method

.method public waitForReaperStop(J)V
    .locals 1
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper;->reaperThread:Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;

    invoke-virtual {v0, p1, p2}, Lorg/restlet/ext/httpclient/internal/HttpIdleConnectionReaper$ReaperThread;->waitForStop(J)V

    .line 207
    return-void
.end method
