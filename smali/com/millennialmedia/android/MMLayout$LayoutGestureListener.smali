.class Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutGestureListener"
.end annotation


# instance fields
.field layoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/millennialmedia/android/MMLayout;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;->layoutRef:Ljava/lang/ref/WeakReference;

    .line 114
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 123
    .local v0, "dx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_4

    .line 126
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    if-nez v3, :cond_3

    .line 127
    const-string v2, "MMLayout"

    const-string v3, "Enabling debug and verbose logging."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x3

    sput v2, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    .line 139
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const-string v3, "MMLayout"

    const-string v4, "Disabling debug and verbose logging."

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sput v2, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    goto :goto_1

    .line 134
    :cond_4
    iget-object v2, p0, Lcom/millennialmedia/android/MMLayout$LayoutGestureListener;->layoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    .line 135
    .local v1, "layout":Lcom/millennialmedia/android/MMLayout;
    if-eqz v1, :cond_2

    .line 136
    iget-object v2, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->printDiagnostics(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_1
.end method
