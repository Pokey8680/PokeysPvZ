.class public Lcom/ea/blast/VibratorAndroidDelegate;
.super Ljava/lang/Object;
.source "VibratorAndroidDelegate.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    .line 16
    return-void
.end method


# virtual methods
.method Cancel()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EAMCore"

    const-string v2, "Missing permission: android.permission.VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method Vibrate(I)V
    .locals 10
    .param p1, "timeMs"    # I

    .prologue
    .line 23
    const/16 v3, 0x3e8

    .line 27
    .local v3, "repeatDelay":I
    const/16 v7, 0x3e8

    if-le p1, v7, :cond_2

    .line 30
    const v7, 0x1e8480

    if-le p1, v7, :cond_0

    .line 32
    const p1, 0x1e8480

    .line 35
    :cond_0
    :try_start_0
    div-int/lit16 v7, p1, 0x3e8

    mul-int/lit8 v6, v7, 0x2

    .line 36
    .local v6, "sizePattern":I
    div-int/lit8 v7, v6, 0x2

    mul-int/lit16 v7, v7, 0x3e8

    sub-int v7, p1, v7

    int-to-long v4, v7

    .line 37
    .local v4, "remainer":J
    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v7, v7, 0x2

    new-array v2, v7, [J

    .line 38
    .local v2, "pattern":[J
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v7

    .line 40
    const/4 v0, 0x1

    .local v0, "a":I
    :goto_0
    add-int/lit8 v7, v6, 0x2

    if-ge v0, v7, :cond_1

    .line 42
    const-wide/16 v8, 0x3e8

    aput-wide v8, v2, v0

    .line 43
    add-int/lit8 v7, v0, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v7

    .line 40
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 46
    :cond_1
    add-int/lit8 v7, v6, 0x1

    aput-wide v4, v2, v7

    .line 47
    add-int/lit8 v7, v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v2, v7

    .line 49
    iget-object v7, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    const/4 v8, -0x1

    invoke-virtual {v7, v2, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 61
    .end local v0    # "a":I
    .end local v2    # "pattern":[J
    .end local v4    # "remainer":J
    .end local v6    # "sizePattern":I
    :goto_1
    return-void

    .line 53
    :cond_2
    iget-object v7, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    int-to-long v8, p1

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v7, "EAMCore"

    const-string v8, "Missing permission: android.permission.VIBRATE"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
