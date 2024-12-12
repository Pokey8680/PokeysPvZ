.class Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VideoRedirectionListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
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
    .locals 2
    .param p1, "activity"    # Lcom/millennialmedia/android/VideoPlayerActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 125
    iget-object v0, p1, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p1, Lcom/millennialmedia/android/VideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->creatorAdImplInternalId:J

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "settings":Lcom/millennialmedia/android/OverlaySettings;
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 157
    .local v0, "activity":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    new-instance v1, Lcom/millennialmedia/android/OverlaySettings;

    .end local v1    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 159
    .restart local v1    # "settings":Lcom/millennialmedia/android/OverlaySettings;
    iget-object v2, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->lastOverlayOrientation:Ljava/lang/String;

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->orientation:Ljava/lang/String;

    .line 161
    :cond_0
    return-object v1
.end method

.method public isHandlingMMVideo(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 135
    .local v0, "activity":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->access$000(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->processVideoPlayerUri(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
