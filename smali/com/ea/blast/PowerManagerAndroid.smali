.class public Lcom/ea/blast/PowerManagerAndroid;
.super Ljava/lang/Object;
.source "PowerManagerAndroid.java"


# static fields
.field private static final kTag:Ljava/lang/String; = "Electronic Arts"


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 17
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 18
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "Electronic Arts"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    return-void
.end method


# virtual methods
.method ApplyKeepAwake(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/ea/blast/PowerManagerAndroid;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "Electronic Arts"

    const-string v2, "Missing WAKE_LOCK permission."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
