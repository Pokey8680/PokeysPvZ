.class Lcom/millennialmedia/android/InlineVideoView$VideoHandler;
.super Landroid/os/Handler;
.source "InlineVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/InlineVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoHandler"
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
    .line 434
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 435
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    .line 436
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 441
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;->inlineVideoRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/InlineVideoView;

    .line 444
    .local v0, "inlineView":Lcom/millennialmedia/android/InlineVideoView;
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime()V

    .line 448
    :cond_1
    iget-object v1, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 441
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
