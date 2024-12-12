.class Lcom/millennialmedia/android/InlineVideoView;
.super Landroid/widget/VideoView;
.source "InlineVideoView.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/InlineVideoView$MediaController;,
        Lcom/millennialmedia/android/InlineVideoView$VideoPreparedListener;,
        Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;,
        Lcom/millennialmedia/android/InlineVideoView$VideoErrorListener;,
        Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;,
        Lcom/millennialmedia/android/InlineVideoView$TransparentFix;,
        Lcom/millennialmedia/android/InlineVideoView$VideoHandler;,
        Lcom/millennialmedia/android/InlineVideoView$VideoTouchListener;,
        Lcom/millennialmedia/android/InlineVideoView$DownloadRunnable;,
        Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    }
.end annotation


# static fields
.field private static final ANCHOR_IN_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="

.field private static final ANCHOR_OUT_PNG:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"

.field private static final TAG:Ljava/lang/String; = "InlineVideoView"

.field static final TIME_TO_UPDATE_SEEK_JS:I = 0x1f4


# instance fields
.field private duration:I

.field inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

.field mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

.field mmLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field

.field transFix:Lcom/millennialmedia/android/InlineVideoView$TransparentFix;

.field transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

.field videoHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;)V
    .locals 1
    .param p1, "mmLayout"    # Lcom/millennialmedia/android/MMLayout;

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 564
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    .line 52
    const v0, 0x86c5ad

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setId(I)V

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setFocusable(Z)V

    .line 54
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdImplController;->destroyOtherInlineVideo(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method

.method private createOnCompletionListener()Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoCompletionListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnErrorListener()Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoErrorListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoErrorListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnPreparedListener()Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    .prologue
    .line 751
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoPreparedListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoPreparedListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoTouchListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoTouchListener;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private createVideoHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 426
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$VideoHandler;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    return-object v0
.end method

.method private downloadCacheVideo()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$DownloadRunnable;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$DownloadRunnable;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method private getVideoUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->hasCachedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    .line 316
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->getVideoUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    .line 320
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCachedVideo()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoAd;->hasVideoFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initInternalInlineVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 283
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createVideoHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    .line 284
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 285
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setClickable(Z)V

    .line 287
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnErrorListener()Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 288
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnCompletionListener()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 289
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnPreparedListener()Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 290
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->createOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 294
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 296
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v0, :cond_1

    .line 305
    new-instance v0, Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;-><init>(Lcom/millennialmedia/android/InlineVideoView;)V

    iput-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    .line 306
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 307
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    .line 309
    :cond_1
    const-string v0, "InlineVideoView"

    const-string v1, "Finished inserting inlineVideo player"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private makeTransparent()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 610
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessage(I)Z

    .line 615
    :cond_0
    return-void
.end method

.method private removeFromParent()V
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 514
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 516
    :cond_0
    return-void
.end method

.method private removeKeyboardFocusViewJira1642()V
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 808
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 810
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->requestFocus()Z

    .line 811
    return-void
.end method

.method private resumeInternal(Z)V
    .locals 4
    .param p1, "wasPlaying"    # Z

    .prologue
    const/4 v2, 0x2

    .line 360
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 362
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 365
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 375
    :cond_1
    return-void
.end method

.method private setInlineVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 0
    .param p1, "parameters"    # Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .line 227
    return-void
.end method


# virtual methods
.method declared-synchronized adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z
    .locals 4
    .param p1, "params"    # Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->setAdjustVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 329
    const-string v2, "InlineVideoView"

    const-string v3, "Called initInlineVideo inside reposition section code"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v1

    .line 332
    .local v1, "wasPlaying":Z
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 334
    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 335
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->addInlineVideo()V

    .line 338
    :cond_0
    invoke-direct {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 327
    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    .end local v1    # "wasPlaying":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method downloadVideo()V
    .locals 3

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/VideoAd;->downloadVideoFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    return-void
.end method

.method public getCustomLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 209
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v1, :cond_0

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-object v0

    .line 213
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 217
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->scaleFactor:F

    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v2, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 219
    const-string v1, "InlineVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getGsonState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Lcom/millennialmedia/google/gson/Gson;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleTransparentMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 587
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 589
    :pswitch_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->transparentHandler:Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/InlineVideoView$TransparentHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 598
    :pswitch_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 600
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->removeBlackView()V

    goto :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized initInlineVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 2
    .param p1, "parameters"    # Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/InlineVideoView;->setInlineVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V

    .line 240
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->cachedVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->downloadCacheVideo()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->initInternalInlineVideo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_1
    :try_start_1
    const-string v0, "InlineVideoView"

    const-string v1, "The videoURI attribute was not specified on the video marker div."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isPlayingStreaming()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isPlayingStreaming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->streamVideoURI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->hasCachedVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x2

    .line 736
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    .line 743
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 744
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 745
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 746
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTimeFinal()V

    .line 747
    return-void
.end method

.method onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 690
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 696
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 697
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-nez v0, :cond_1

    .line 698
    const-string v2, "InlineVideoView"

    const-string v3, "MMLayout weak reference broken"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    return v1

    .line 701
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:MMJS.setError("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error while playing, %d - %d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ");"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    move v1, v2

    .line 705
    goto :goto_0
.end method

.method onMediaControllerClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 923
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    .line 924
    .local v1, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-eqz v1, :cond_1

    .line 925
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 927
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 928
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v4

    iput v4, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 931
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    if-eqz v3, :cond_3

    .line 932
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v6, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    .line 933
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    if-ne v3, v5, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 935
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {v0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 963
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v2

    .line 941
    .local v2, "wasPlaying":Z
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 942
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->repositionVideoLayout()V

    .line 943
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V

    goto :goto_0

    .line 946
    .end local v2    # "wasPlaying":Z
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    .line 948
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v5, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->goingFullScreen:Z

    .line 949
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->originalOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 950
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 951
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 956
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_4
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v2

    .line 957
    .restart local v2    # "wasPlaying":Z
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 958
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMLayout;->fullScreenVideoLayout()V

    .line 959
    invoke-direct {p0, v2}, Lcom/millennialmedia/android/InlineVideoView;->resumeInternal(Z)V

    goto :goto_0
.end method

.method onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 780
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->makeTransparent()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 784
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->autoPlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    if-nez v0, :cond_2

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getHeight()I

    .line 789
    :goto_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    .line 790
    return-void

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isInitialPlayBack:Z

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 171
    instance-of v1, p1, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    if-nez v1, :cond_0

    .line 172
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 176
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    .line 177
    .local v0, "ss":Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/VideoView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 180
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->inflateFromGson(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/VideoView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 160
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    .local v0, "ss":Lcom/millennialmedia/android/AdViewOverlayView$SavedState;
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v3

    iput v3, v2, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getGsonState()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$SavedState;->gson:Ljava/lang/String;

    .line 164
    return-object v0
.end method

.method onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 404
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 405
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 406
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-nez v0, :cond_0

    .line 407
    const-string v2, "InlineVideoView"

    const-string v3, "MMLayout weak reference broken"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :goto_0
    return v1

    .line 410
    .restart local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v3, v3, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v4, v4, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->touchCallBack:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%f,%f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v1, v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->showControls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->mediaController:Lcom/millennialmedia/android/InlineVideoView$MediaController;

    invoke-virtual {v1}, Lcom/millennialmedia/android/InlineVideoView$MediaController;->show()V

    move v1, v2

    .line 418
    goto :goto_0

    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    :cond_2
    move v1, v2

    .line 421
    goto :goto_0
.end method

.method pauseVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 637
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 644
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->pause()V

    .line 646
    :cond_1
    return-void
.end method

.method playVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    .line 523
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 524
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    .line 528
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    .line 529
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 538
    :cond_2
    return-void

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->seekTo(I)V

    goto :goto_0
.end method

.method removeVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 504
    :cond_1
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 506
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 507
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/InlineVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 508
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->removeFromParent()V

    .line 509
    return-void
.end method

.method resumeVideo()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 650
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-boolean v0, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isCompleted:Z

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 652
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    :cond_0
    return-void
.end method

.method setAdjustVideoParams(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)V
    .locals 2
    .param p1, "parameters"    # Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->x:I

    .line 232
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->y:I

    .line 233
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->width:I

    .line 234
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget v1, p1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->height:I

    .line 235
    return-void
.end method

.method setVideoSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "streamVideoURI"    # Ljava/lang/String;

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 799
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setBackgroundColor(I)V

    .line 800
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/InlineVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 801
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->startInternal()V

    .line 802
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->makeTransparent()V

    .line 555
    invoke-direct {p0}, Lcom/millennialmedia/android/InlineVideoView;->removeKeyboardFocusViewJira1642()V

    .line 556
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 557
    return-void
.end method

.method public startInternal()V
    .locals 3

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 546
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->start()V

    .line 549
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 346
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 355
    :cond_1
    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 356
    return-void
.end method

.method stopVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 619
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->videoHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->isStopped:Z

    .line 626
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->currentPosition:I

    .line 628
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->addBlackView()V

    .line 631
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->stopPlayback()V

    .line 633
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/InlineVideoView;->inlineParams:Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    invoke-virtual {v0}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateVideoSeekTime()V
    .locals 6

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/millennialmedia/android/InlineVideoView;->getCurrentPosition()I

    move-result v0

    .line 461
    .local v0, "time":I
    if-ltz v0, :cond_0

    .line 462
    const-string v1, "InlineVideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    int-to-float v1, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 464
    .local v2, "timeInSeconds":D
    invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime(D)V

    .line 466
    .end local v2    # "timeInSeconds":D
    :cond_0
    return-void
.end method

.method updateVideoSeekTime(D)V
    .locals 3
    .param p1, "timeInSeconds"    # D

    .prologue
    .line 481
    iget-object v1, p0, Lcom/millennialmedia/android/InlineVideoView;->mmLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 482
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    if-nez v0, :cond_0

    .line 483
    const-string v1, "InlineVideoView"

    const-string v2, "MMLayout weak reference broken"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.inlineVideo.updateVideoSeekTime("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->loadUrl(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method updateVideoSeekTimeFinal()V
    .locals 5

    .prologue
    .line 472
    iget v2, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    if-lez v2, :cond_0

    .line 473
    const-string v2, "InlineVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget v2, p0, Lcom/millennialmedia/android/InlineVideoView;->duration:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 475
    .local v0, "timeInSeconds":D
    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/InlineVideoView;->updateVideoSeekTime(D)V

    .line 477
    .end local v0    # "timeInSeconds":D
    :cond_0
    return-void
.end method
