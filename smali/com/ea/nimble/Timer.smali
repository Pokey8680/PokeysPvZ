.class public Lcom/ea/nimble/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Timer$SingleRunTask;,
        Lcom/ea/nimble/Timer$RepeatingTask;
    }
.end annotation


# static fields
.field private static s_handler:Landroid/os/Handler;


# instance fields
.field private m_fireTime:J

.field private m_pauseTime:J

.field private m_paused:Z

.field private m_running:Z

.field private m_task:Ljava/lang/Runnable;

.field private m_taskToRun:Ljava/lang/Runnable;

.field private m_timeInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    .line 61
    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    .line 62
    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/Timer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    return v0
.end method

.method static synthetic access$100(Lcom/ea/nimble/Timer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return v0
.end method

.method static synthetic access$102(Lcom/ea/nimble/Timer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/Timer;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/Timer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ea/nimble/Timer;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/ea/nimble/Timer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/Timer;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/ea/nimble/Timer;)J
    .locals 2
    .param p0, "x0"    # Lcom/ea/nimble/Timer;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    return-wide v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_1

    .line 191
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    .line 197
    :cond_1
    return-void
.end method

.method public fire()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 140
    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    instance-of v0, v0, Lcom/ea/nimble/Timer$RepeatingTask;

    if-eqz v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-eqz v0, :cond_1

    .line 145
    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    .line 150
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    .line 164
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    .line 167
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ea/nimble/Timer;->m_running:Z

    if-eqz v0, :cond_0

    .line 177
    iget-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ea/nimble/Timer;->m_pauseTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    .line 178
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/Timer;->m_paused:Z

    .line 181
    :cond_0
    return-void
.end method

.method public schedule(DZ)V
    .locals 7
    .param p1, "timeInterval"    # D
    .param p3, "repeating"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 100
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    .line 102
    if-eqz p3, :cond_0

    .line 104
    const-string v0, "Timer scheduled to repeat for %.2f seconds, running only once"

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 129
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 116
    :cond_2
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/Timer;->m_fireTime:J

    .line 119
    if-eqz p3, :cond_3

    .line 121
    new-instance v0, Lcom/ea/nimble/Timer$RepeatingTask;

    invoke-direct {v0, p0, v4}, Lcom/ea/nimble/Timer$RepeatingTask;-><init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V

    iput-object v0, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    .line 127
    :goto_1
    sget-object v0, Lcom/ea/nimble/Timer;->s_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/ea/nimble/Timer;->m_timeInterval:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    iput-boolean v5, p0, Lcom/ea/nimble/Timer;->m_running:Z

    goto :goto_0

    .line 125
    :cond_3
    new-instance v0, Lcom/ea/nimble/Timer$SingleRunTask;

    invoke-direct {v0, p0, v4}, Lcom/ea/nimble/Timer$SingleRunTask;-><init>(Lcom/ea/nimble/Timer;Lcom/ea/nimble/Timer$1;)V

    iput-object v0, p0, Lcom/ea/nimble/Timer;->m_taskToRun:Ljava/lang/Runnable;

    goto :goto_1
.end method
