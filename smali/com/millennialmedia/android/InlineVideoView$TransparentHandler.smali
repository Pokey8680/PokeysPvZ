.class Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;
.super Landroid/os/Handler;
.source "InlineVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentHandler"
.end annotation


# instance fields
.field private inlineVideoRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/InlineVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/InlineVideoView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/android/InlineVideoView;

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 572
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 578
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView;

    .line 579
    .local v0, "inlineView":Lcom/millennialmedia/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/InlineVideoView;->handleTransparentMessage(Landroid/os/Message;)V

    .line 582
    :cond_0
    return-void
.end method
