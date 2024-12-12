.class Lcom/millennialmedia/android/BridgeMMNotification;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private ALERT:Ljava/lang/String;

.field private VIBRATE:Ljava/lang/String;

.field private index:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 19
    const-string v0, "alert"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->ALERT:Ljava/lang/String;

    .line 20
    const-string v0, "vibrate"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->VIBRATE:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/BridgeMMNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMNotification;

    .prologue
    .line 16
    iget v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    return v0
.end method


# virtual methods
.method public declared-synchronized alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMNotification$1;-><init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMNotification;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 32
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification;->ALERT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMNotification;->alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification;->VIBRATE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMNotification;->vibrate(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 47
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 48
    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 50
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->index:I

    .line 52
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 131
    .local v0, "context":Landroid/content/Context;
    const-wide/16 v2, 0x0

    .line 133
    .local v2, "time":J
    const-string v4, "duration"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const-string v4, "duration"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 136
    :cond_0
    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 139
    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 141
    .local v1, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vibrating for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 149
    .end local v1    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-object v4

    .line 145
    :cond_1
    const-string v4, "The required permissions to vibrate are not set."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 149
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
