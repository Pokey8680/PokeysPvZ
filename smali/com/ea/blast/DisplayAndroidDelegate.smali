.class Lcom/ea/blast/DisplayAndroidDelegate;
.super Ljava/lang/Object;
.source "DisplayAndroidDelegate.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final WAIT_DURATION_MS:J = 0x96L

.field private static final WAIT_FOR_UI_THREAD_COMPLETION:Z = true

.field private static final kDisplayOrientationLockUnknown:I

.field private static final kDisplayOrientationLocked:I

.field private static final kDisplayOrientationUnlocked:I

.field private static final kOrientationNormal:I

.field private static final kOrientationRotatedLeft:I

.field private static final kOrientationRotatedRight:I

.field private static final kOrientationUnknown:I

.field private static final kOrientationUpsideDown:I


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private final mDpiX:F

.field private final mDpiY:F

.field private mLock:Ljava/lang/Object;

.field private final mPortraitByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationNormal()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    .line 24
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUpsideDown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    .line 25
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedLeft()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    .line 26
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedRight()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    .line 27
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    .line 32
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationLockUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    .line 33
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationLocked()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLocked:I

    .line 34
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetDisplayOrientationUnlocked()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationUnlocked:I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    .line 54
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    .line 60
    iget v2, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    .line 63
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->getNaturalOrientation()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPortraitByDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public static native NativeGetDisplayOrientationLockUnknown()I
.end method

.method public static native NativeGetDisplayOrientationLocked()I
.end method

.method public static native NativeGetDisplayOrientationUnlocked()I
.end method

.method public static native NativeGetOrientationNormal()I
.end method

.method public static native NativeGetOrientationRotatedLeft()I
.end method

.method public static native NativeGetOrientationRotatedRight()I
.end method

.method public static native NativeGetOrientationUnknown()I
.end method

.method public static native NativeGetOrientationUpsideDown()I
.end method

.method static synthetic access$000(Lcom/ea/blast/DisplayAndroidDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/DisplayAndroidDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method

.method private isLandscapeConventionInverted()Z
    .locals 2

    .prologue
    .line 334
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFAPWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFAPWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFTHWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFTHWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFSOWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFJWA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KFJWI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public AttachView(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "zOrder"    # I

    .prologue
    .line 243
    const-string v1, "DisplayAndroidDelegate.AttachView()"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 245
    if-eqz p1, :cond_0

    .line 247
    new-instance v0, Lcom/ea/blast/DisplayAndroidDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$1;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    .line 257
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    .line 259
    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public BringToFront(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 284
    const-string v1, "DisplayAndroidDelegate.BringToFront()"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 286
    if-eqz p1, :cond_0

    .line 288
    new-instance v0, Lcom/ea/blast/DisplayAndroidDelegate$3;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$3;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    .line 298
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    .line 300
    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public DetachView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    const-string v1, "DisplayAndroidDelegate.DetachView()"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_0

    .line 268
    new-instance v0, Lcom/ea/blast/DisplayAndroidDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/ea/blast/DisplayAndroidDelegate$2;-><init>(Lcom/ea/blast/DisplayAndroidDelegate;Landroid/view/View;)V

    .line 278
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->runOnUiThreadAndWait(Ljava/lang/Runnable;)V

    .line 280
    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public GetCurrentHeight()I
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getDisplayHeight()I

    move-result v0

    return v0
.end method

.method public GetCurrentWidth()I
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getDisplayWidth()I

    move-result v0

    return v0
.end method

.method public GetDisplayOrientationLock()I
    .locals 4

    .prologue
    .line 225
    :try_start_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    .local v1, "lockState":I
    packed-switch v1, :pswitch_data_0

    .line 236
    sget v2, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    .end local v1    # "lockState":I
    :goto_0
    return v2

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    sget v2, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLockUnknown:I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "lockState":I
    :pswitch_0
    sget v2, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationLocked:I

    goto :goto_0

    .line 235
    :pswitch_1
    sget v2, Lcom/ea/blast/DisplayAndroidDelegate;->kDisplayOrientationUnlocked:I

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public GetDpiX()F
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    return v0
.end method

.method public GetDpiY()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    return v0
.end method

.method public GetGLView()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v0, v0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    return-object v0
.end method

.method public GetStdOrientation()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    :goto_0
    return v0

    .line 210
    :pswitch_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    goto :goto_0

    .line 211
    :pswitch_1
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    goto :goto_0

    .line 212
    :pswitch_2
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    goto :goto_0

    .line 213
    :pswitch_3
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetStdOrientation(I)V
    .locals 5
    .param p1, "stdOrientation"    # I

    .prologue
    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    sget v4, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    if-ne p1, v4, :cond_1

    .line 126
    iget-boolean v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v2, :cond_0

    .line 127
    .local v0, "orientation":I
    :goto_0
    const-string v1, "Request kOrientationNormal"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 164
    :goto_1
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    .line 165
    return-void

    .end local v0    # "orientation":I
    :cond_0
    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_1
    sget v4, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    if-ne p1, v4, :cond_3

    .line 131
    iget-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 132
    .restart local v0    # "orientation":I
    :goto_2
    const-string v1, "Request kOrientationUpsideDown"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "orientation":I
    :cond_2
    move v0, v3

    .line 131
    goto :goto_2

    .line 134
    :cond_3
    sget v4, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    if-ne p1, v4, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/ea/blast/DisplayAndroidDelegate;->isLandscapeConventionInverted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    iget-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v1, :cond_4

    move v0, v3

    .line 144
    .restart local v0    # "orientation":I
    :goto_3
    const-string v1, "Request kOrientationRotatedRight"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "orientation":I
    :cond_4
    move v0, v2

    .line 138
    goto :goto_3

    .line 142
    :cond_5
    iget-boolean v3, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v3, :cond_6

    move v0, v1

    .restart local v0    # "orientation":I
    :goto_4
    goto :goto_3

    .end local v0    # "orientation":I
    :cond_6
    move v0, v2

    goto :goto_4

    .line 146
    :cond_7
    sget v2, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    if-ne p1, v2, :cond_b

    .line 148
    invoke-direct {p0}, Lcom/ea/blast/DisplayAndroidDelegate;->isLandscapeConventionInverted()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 150
    iget-boolean v2, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v2, :cond_8

    move v0, v1

    .line 156
    .restart local v0    # "orientation":I
    :cond_8
    :goto_5
    const-string v1, "Request kOrientationRotatedLeft"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    goto :goto_1

    .line 154
    .end local v0    # "orientation":I
    :cond_9
    iget-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v1, :cond_a

    move v0, v3

    .restart local v0    # "orientation":I
    :cond_a
    goto :goto_5

    .line 160
    .end local v0    # "orientation":I
    :cond_b
    const-string v1, "Request invalid orientation"

    invoke-direct {p0, v1}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 161
    const/4 v0, -0x1

    .restart local v0    # "orientation":I
    goto :goto_1
.end method

.method public notifyUiThreadOperationCompleted()V
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_0
    const-string v0, "DisplayAndroidDelegate.notify()"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v1

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnUiThreadAndWait(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 104
    const-string v0, "DisplayAndroidDelegate.wait()..."

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 106
    const-string v0, "...DisplayAndroidDelegate.wait()"

    invoke-direct {p0, v0}, Lcom/ea/blast/DisplayAndroidDelegate;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method
