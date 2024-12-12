.class Lcom/millennialmedia/android/MMWebView$4;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adView:Lcom/millennialmedia/android/MMAdView;

.field final synthetic val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$4;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMWebView$4;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 3
    .param p1, "resizeParams"    # Lcom/millennialmedia/android/DTOResizeParameters;

    .prologue
    .line 469
    new-instance v0, Lcom/millennialmedia/android/MMAdView$BannerBounds;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$4;->val$adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, p1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 472
    .local v0, "bounds":Lcom/millennialmedia/android/MMAdView$BannerBounds;
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView$4;->setUnresizeParameters()V

    .line 474
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 475
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 476
    return-void
.end method

.method private setUnresizeParameters()V
    .locals 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-static {v1}, Lcom/millennialmedia/android/MMWebView;->access$000(Lcom/millennialmedia/android/MMWebView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, "oldParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 483
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 484
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-gtz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget v1, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-gtz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 491
    .end local v0    # "oldParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 459
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$4;->val$adView:Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$4;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 460
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$4;->val$resizeParams:Lcom/millennialmedia/android/DTOResizeParameters;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMWebView$4;->handleMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V

    .line 461
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "javascript:MMJS.sdk.setState(\'resized\');"

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView$4;->this$0:Lcom/millennialmedia/android/MMWebView;

    const-string v2, "resized"

    iput-object v2, v0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 463
    monitor-exit v1

    .line 464
    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
