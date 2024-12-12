.class Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.super Lcom/millennialmedia/android/VideoPlayerActivity;
.source "CachedVideoPlayerActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;,
        Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;
    }
.end annotation


# static fields
.field private static final STATIC_HUD_ID:I = 0x192

.field private static final STATIC_HUD_SECONDS_ID:I = 0x191

.field private static final TAG:Ljava/lang/String; = "CachedVideoPlayerActivity"


# instance fields
.field private buttonsLayout:Landroid/widget/RelativeLayout;

.field private hasCountdownHud:Z

.field hasLoadedCompletionUrl:Z

.field hasWebOverlay:Z

.field private hudSeconds:Landroid/widget/TextView;

.field private hudStaticText:Landroid/widget/TextView;

.field private lastVideoPosition:I

.field private logTimeAndEventhandler:Landroid/os/Handler;

.field private mWebView:Lcom/millennialmedia/android/MMWebView;

.field private videoAd:Lcom/millennialmedia/android/VideoAd;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    .line 796
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/CachedVideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->onPageFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    return-object v0
.end method

.method private calculateHudSecondsText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 711
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    if-eqz v0, :cond_0

    .line 712
    iget v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->duration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 716
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private dismissAfter(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 169
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    new-instance v1, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$1;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method private fadeButton(Lcom/millennialmedia/android/VideoImage;)V
    .locals 5
    .param p1, "image"    # Lcom/millennialmedia/android/VideoImage;

    .prologue
    const/4 v4, 0x1

    .line 506
    move-object v1, p1

    .line 507
    .local v1, "videoImage":Lcom/millennialmedia/android/VideoImage;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v2, v1, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v3, v1, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 509
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v2, v1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 510
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 511
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 512
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 513
    iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 514
    return-void
.end method

.method private fadeButtons()V
    .locals 8

    .prologue
    .line 203
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 205
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 206
    .local v2, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-boolean v3, v2, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-nez v3, :cond_0

    .line 207
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v4, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v3, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 208
    :cond_0
    iget-object v3, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 209
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v2, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v5, v2, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 212
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    iget-object v3, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_2
    const-string v3, "CachedVideoPlayerActivity"

    const-string v4, "Button: %d alpha: %f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_3
    return-void
.end method

.method private hideHud()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 721
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    :cond_1
    return-void
.end method

.method private initHudSeconds(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 695
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    .line 696
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->calculateHudSecondsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 699
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 701
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 704
    .local v0, "hudSecLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 705
    const/4 v1, 0x0

    const/16 v2, 0x192

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 706
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    return-void
.end method

.method private initHudStaticText(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 678
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    .line 679
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const-string v2, " seconds remaining ..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 681
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 682
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/16 v2, 0x192

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 683
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 685
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 688
    .local v0, "hudLp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 689
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 690
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    return-void
.end method

.method private initWebOverlay()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 399
    new-instance v2, Lcom/millennialmedia/android/MMWebView;

    iget-object v3, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    iget-wide v4, v4, Lcom/millennialmedia/android/MMActivity;->creatorAdImplInternalId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    .line 400
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    const/16 v3, 0x19d

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    .line 402
    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V

    .line 404
    .local v0, "basicListener":Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v3, Lcom/millennialmedia/android/InterstitialWebViewClient;

    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->redirectListenerImpl:Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    invoke-direct {v3, v0, v4}, Lcom/millennialmedia/android/InterstitialWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 406
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 409
    .local v1, "webLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 410
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/MMWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMWebView;->setBackgroundColor(I)V

    .line 413
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method private onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->playVideo(I)V

    .line 395
    :cond_0
    return-void
.end method

.method private showHud()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 670
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v2, v1, Lcom/millennialmedia/android/VideoAd;->duration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudStaticText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    return-void
.end method


# virtual methods
.method protected canFadeButtons()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->canFadeButtons()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 750
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v4, :cond_4

    .line 751
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 752
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 755
    :cond_0
    iget-boolean v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v4, :cond_4

    .line 756
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 757
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v4, v4, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 758
    .local v3, "videoImage":Lcom/millennialmedia/android/VideoImage;
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v4, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 759
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 761
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v4, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 765
    .local v2, "message":Landroid/os/Message;
    iget-object v4, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v6, v3, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 756
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 770
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 771
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v4, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->toAlpha:F

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 773
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget-wide v4, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 774
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 775
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 776
    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 777
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 779
    .end local v0    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 780
    iget-object v4, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget v5, v3, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    invoke-virtual {p0, v4, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    goto :goto_1

    .line 787
    .end local v1    # "i":I
    .end local v3    # "videoImage":Lcom/millennialmedia/android/VideoImage;
    :cond_4
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method protected enableButtons()V
    .locals 4

    .prologue
    .line 730
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->enableButtons()V

    .line 731
    iget-boolean v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 739
    :cond_0
    return-void

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v2, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 735
    .local v1, "image":Lcom/millennialmedia/android/VideoImage;
    iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 736
    iget-object v2, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected errorPlayVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.cachedVideo.setError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 426
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    const/4 v8, 0x1

    return v8

    .line 428
    :pswitch_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 429
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 435
    .local v3, "image":Lcom/millennialmedia/android/VideoImage;
    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v9, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 436
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v9, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    iget-object v10, v3, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->canFadeButtons()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 442
    invoke-direct {p0, v3}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButton(Lcom/millennialmedia/android/VideoImage;)V

    .line 443
    const-string v8, "CachedVideoPlayerActivity"

    const-string v9, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v3, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v3, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v12}, Landroid/widget/ImageButton;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v8, "CachedVideoPlayerActivity"

    const-string v9, "Problem adding buttons"

    invoke-static {v8, v9, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 450
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "image":Lcom/millennialmedia/android/VideoImage;
    :pswitch_2
    :try_start_1
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 451
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v8}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    .line 454
    .local v0, "currentPosition":I
    iget v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-le v0, v8, :cond_5

    .line 455
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v8, :cond_4

    .line 456
    iget v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    if-nez v8, :cond_2

    .line 457
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v8}, Lcom/millennialmedia/android/VideoAd;->logBeginEvent()V

    .line 458
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v8, v8, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 459
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v8, v8, Lcom/millennialmedia/android/VideoAd;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/VideoLogEvent;

    .line 461
    .local v5, "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    if-eqz v5, :cond_3

    .line 462
    iget-wide v8, v5, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    iget v10, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_3

    iget-wide v8, v5, Lcom/millennialmedia/android/VideoLogEvent;->position:J

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 464
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget-object v8, v5, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 465
    iget-object v8, v5, Lcom/millennialmedia/android/VideoLogEvent;->activities:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/millennialmedia/android/MMSDK$Event;->logEvent(Ljava/lang/String;)V

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 458
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 472
    .end local v2    # "i":I
    .end local v5    # "videoEvent":Lcom/millennialmedia/android/VideoLogEvent;
    :cond_4
    iput v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 474
    :cond_5
    iget-boolean v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v8, :cond_6

    .line 475
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "javascript:MMJS.cachedVideo.updateVideoSeekTime("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-float v10, v0

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 481
    :cond_6
    iget-boolean v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v8, :cond_7

    .line 482
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v8, v8, Lcom/millennialmedia/android/VideoAd;->duration:J

    int-to-long v10, v0

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 483
    .local v6, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_8

    .line 484
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    .line 485
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    .end local v0    # "currentPosition":I
    .end local v6    # "seconds":J
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 495
    :catch_1
    move-exception v1

    .line 496
    .restart local v1    # "e":Ljava/lang/IllegalStateException;
    const-string v8, "CachedVideoPlayerActivity"

    const-string v9, "Error with video check"

    invoke-static {v8, v9, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v0    # "currentPosition":I
    .restart local v6    # "seconds":J
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected initLayout()Landroid/widget/RelativeLayout;
    .locals 18

    .prologue
    .line 222
    invoke-super/range {p0 .. p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->initLayout()Landroid/widget/RelativeLayout;

    move-result-object v11

    .line 225
    .local v11, "parent":Landroid/widget/RelativeLayout;
    new-instance v12, Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    .line 226
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 228
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v12, :cond_0

    .line 229
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudStaticText(Landroid/view/ViewGroup;)V

    .line 230
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initHudSeconds(Landroid/view/ViewGroup;)V

    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

    .line 234
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v12, v12, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->initWebOverlay()V

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v12, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 238
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    .line 363
    :cond_1
    :goto_0
    return-object v11

    .line 241
    :cond_2
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    .line 242
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v12, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    const/16 v13, 0x3e8

    invoke-virtual {v12, v13}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 245
    const/4 v5, 0x0

    .line 246
    .local v5, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v12, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v12, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 249
    :cond_3
    if-eqz v5, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v12}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 252
    .local v2, "adDir":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_9

    .line 254
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/VideoImage;

    .line 257
    .local v4, "button":Lcom/millennialmedia/android/VideoImage;
    new-instance v9, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v9, v12}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .local v9, "newButton":Landroid/widget/ImageButton;
    iput-object v9, v4, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 259
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v13}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\.[^\\.]*$"

    const-string v15, ".dat"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 265
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 266
    invoke-virtual {v9, v3}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    iget v12, v4, Lcom/millennialmedia/android/VideoImage;->fromAlpha:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->setButtonAlpha(Landroid/widget/ImageButton;F)V

    .line 284
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setId(I)V

    .line 285
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 287
    iget-boolean v12, v4, Lcom/millennialmedia/android/VideoImage;->isLeaveBehind:Z

    if-eqz v12, :cond_7

    .line 288
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    const/high16 v12, -0x1000000

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 290
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 310
    .local v10, "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_3
    iget-object v12, v4, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 311
    new-instance v12, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9, v4}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$2;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :cond_4
    iget-wide v12, v4, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_8

    .line 328
    iput-object v10, v4, Lcom/millennialmedia/android/VideoImage;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v13, 0x3

    invoke-static {v12, v13, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 332
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v14, v4, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v12, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 339
    .end local v8    # "message":Landroid/os/Message;
    :goto_4
    iget-wide v12, v4, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-static {v12, v13, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 344
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v14, v4, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    iget-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-wide v0, v4, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-virtual {v12, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    .end local v8    # "message":Landroid/os/Message;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 271
    .end local v10    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v13}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\.[^\\.]*$"

    const-string v15, ".dat"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 278
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 279
    .local v6, "e":Ljava/lang/Exception;
    const-string v12, "CachedVideoPlayerActivity"

    const-string v13, "Problem creating layout with bitmap buttons: "

    invoke-static {v12, v13, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 294
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 295
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 298
    .restart local v10    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    const-string v12, "CachedVideoPlayerActivity"

    const-string v13, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v9}, Landroid/widget/ImageButton;->getId()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v4, Lcom/millennialmedia/android/VideoImage;->position:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v4, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    iget v0, v4, Lcom/millennialmedia/android/VideoImage;->position2:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v12, v4, Lcom/millennialmedia/android/VideoImage;->position:I

    iget v13, v4, Lcom/millennialmedia/android/VideoImage;->anchor:I

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    iget v12, v4, Lcom/millennialmedia/android/VideoImage;->position2:I

    iget v13, v4, Lcom/millennialmedia/android/VideoImage;->anchor2:I

    invoke-virtual {v10, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    iget v12, v4, Lcom/millennialmedia/android/VideoImage;->paddingLeft:I

    iget v13, v4, Lcom/millennialmedia/android/VideoImage;->paddingTop:I

    iget v14, v4, Lcom/millennialmedia/android/VideoImage;->paddingRight:I

    iget v15, v4, Lcom/millennialmedia/android/VideoImage;->paddingBottom:I

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 335
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 353
    .end local v4    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v9    # "newButton":Landroid/widget/ImageButton;
    .end local v10    # "newButtonLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .end local v2    # "adDir":Ljava/io/File;
    .end local v7    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_b

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 360
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v12, :cond_1

    .line 361
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected initSavedInstance(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->initSavedInstance(Landroid/os/Bundle;)V

    .line 65
    if-nez p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "videoId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "videoId":Ljava/lang/String;
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v1, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 69
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showControls:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    .line 71
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    .line 81
    .end local v0    # "videoId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v1, "videoAd"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    iput-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 75
    const-string v1, "shouldShowBottomBar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasBottomBar:Z

    .line 76
    const-string v1, "lastVideoPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 77
    const-string v1, "currentVideoPosition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    .line 79
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->showCountdown:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    goto :goto_0
.end method

.method loadUrlForMraidInjection(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;-><init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    .line 419
    .local v0, "task":Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 420
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 87
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoPlayerOnCompletion(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v0, "CachedVideoPlayerActivity"

    const-string v1, "Is Cached Ad"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 97
    const-string v0, "Error while playing, %d - %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->errorPlayVideo(Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/VideoPlayerActivity;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v0, "videoAd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    .line 126
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 199
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    const-string v0, "videoAd"

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->onStart()V

    .line 184
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->isVideoCompleted:Z

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

    .line 188
    :cond_0
    return-void
.end method

.method protected pauseVideo()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->pauseVideo()V

    .line 520
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    return-void
.end method

.method protected playVideo(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x2

    .line 587
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    const-string v1, "Sorry. There was a problem playing the video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 601
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 600
    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->playVideo(I)V

    goto :goto_0
.end method

.method protected restartVideo()V
    .locals 10

    .prologue
    .line 606
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_6

    .line 607
    iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v5, v5, Lcom/millennialmedia/android/VideoAd;->reloadNonEndOverlayOnRestart:Z

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v5, :cond_1

    .line 609
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->webOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 610
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    .line 612
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v2, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    .line 615
    .local v2, "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    const/4 v5, 0x0

    iput v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->lastVideoPosition:I

    .line 624
    iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 625
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 628
    .local v1, "buttonData":Lcom/millennialmedia/android/VideoImage;
    if-eqz v1, :cond_3

    .line 629
    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 630
    iget-object v0, v1, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    .line 631
    .local v0, "button":Landroid/widget/ImageButton;
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 632
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 636
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 641
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v4    # "message":Landroid/os/Message;
    :cond_2
    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 642
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 647
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v6, v1, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    add-long/2addr v6, v8

    iget-wide v8, v1, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v6, v8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 625
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "buttonData":Lcom/millennialmedia/android/VideoImage;
    .end local v3    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    .line 658
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 662
    :cond_5
    iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v5, :cond_6

    .line 663
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->showHud()V

    .line 665
    .end local v2    # "buttons":Ljava/util/List;, "Ljava/util/List<Lcom/millennialmedia/android/VideoImage;>;"
    :cond_6
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->restartVideo()V

    .line 666
    return-void
.end method

.method protected resumeVideo()V
    .locals 12

    .prologue
    .line 531
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v5, :cond_6

    .line 532
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 534
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x3e8

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 537
    :cond_0
    iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v5, :cond_6

    .line 538
    iget-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasCountdownHud:Z

    if-eqz v5, :cond_1

    .line 539
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v8, v5, Lcom/millennialmedia/android/VideoAd;->duration:J

    iget v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long v6, v8, v10

    .line 540
    .local v6, "seconds":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    .line 541
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 542
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hudSeconds:Landroid/widget/TextView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    .end local v6    # "seconds":J
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 549
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v5, v5, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoImage;

    .line 550
    .local v0, "button":Lcom/millennialmedia/android/VideoImage;
    const-wide/16 v2, 0x0

    .line 552
    .local v2, "delay":J
    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->buttonsLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/millennialmedia/android/VideoImage;->button:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_3

    .line 554
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-static {v5, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 558
    .local v4, "message":Landroid/os/Message;
    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->appearanceDelay:J

    iget v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->currentVideoPosition:I

    int-to-long v10, v5

    sub-long v2, v8, v10

    .line 560
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-gez v5, :cond_2

    .line 561
    const-wide/16 v2, 0x1f4

    .line 562
    :cond_2
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 566
    .end local v4    # "message":Landroid/os/Message;
    :cond_3
    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    .line 567
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-static {v5, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 572
    .restart local v4    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->inactivityTimeout:J

    add-long/2addr v8, v2

    iget-wide v10, v0, Lcom/millennialmedia/android/VideoImage;->fadeDuration:J

    add-long/2addr v8, v10

    invoke-virtual {v5, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 548
    .end local v4    # "message":Landroid/os/Message;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 544
    .end local v0    # "button":Lcom/millennialmedia/android/VideoImage;
    .end local v1    # "i":I
    .end local v2    # "delay":J
    .restart local v6    # "seconds":J
    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hideHud()V

    goto :goto_0

    .line 581
    .end local v6    # "seconds":J
    :cond_6
    invoke-super {p0}, Lcom/millennialmedia/android/VideoPlayerActivity;->resumeVideo()V

    .line 582
    return-void
.end method

.method protected videoPlayerOnCompletion(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dispatchButtonClick(Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->logEndEvent()V

    .line 136
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->stayInPlayer:Z

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 140
    invoke-direct {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->fadeButtons()V

    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->hasEndCard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->endOverlayURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->loadUrlForMraidInjection(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->bringToFront()V

    .line 154
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->videoAd:Lcom/millennialmedia/android/VideoAd;

    iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->closeDelayMillis:J

    invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismissAfter(J)V

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->logTimeAndEventhandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 151
    :cond_6
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasWebOverlay:Z

    if-eqz v0, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    goto :goto_1
.end method
