.class Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;
.super Landroid/os/Handler;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentHandler"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 470
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->activityRef:Ljava/lang/ref/WeakReference;

    .line 471
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 476
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$TransparentHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 477
    .local v0, "activity":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->handleTransparentMessage(Landroid/os/Message;)V

    .line 480
    :cond_0
    return-void
.end method
