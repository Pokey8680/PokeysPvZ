.class Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InterstitialGestureListener"
.end annotation


# instance fields
.field mmActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMActivity;)V
    .locals 1
    .param p1, "mmActivity"    # Lcom/millennialmedia/android/MMActivity;

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 264
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;->mmActivityRef:Ljava/lang/ref/WeakReference;

    .line 265
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;->mmActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    .line 254
    .local v0, "mmActivity":Lcom/millennialmedia/android/MMActivity;
    if-eqz v0, :cond_0

    .line 255
    iget-wide v2, v0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK$Event;->adSingleTap(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 258
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
