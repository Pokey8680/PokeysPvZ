.class Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;
.super Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
.source "MMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMAdViewMMAdImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;-><init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V

    .line 333
    new-instance v0, Lcom/millennialmedia/android/MMAdView$MMAdViewWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$MMAdViewWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 334
    return-void
.end method


# virtual methods
.method animateTransition()V
    .locals 9

    .prologue
    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 403
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 405
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v4, v5, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 408
    .local v4, "type":I
    if-ne v4, v7, :cond_0

    .line 409
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 410
    .local v3, "r":Ljava/util/Random;
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 414
    .end local v3    # "r":Ljava/util/Random;
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 417
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 433
    .local v1, "animation":Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 434
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 435
    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 436
    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 437
    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 438
    move-object v0, v1

    .line 439
    .local v0, "animFinal":Landroid/view/animation/Animation;
    new-instance v5, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;

    invoke-direct {v5, p0, v0}, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl$1;-><init>(Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;Landroid/view/animation/Animation;)V

    invoke-static {v5}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    .end local v0    # "animFinal":Landroid/view/animation/Animation;
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v4    # "type":I
    :cond_1
    return-void

    .line 420
    .restart local v4    # "type":I
    :pswitch_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 421
    .local v2, "height":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v5, v2

    invoke-direct {v1, v6, v6, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 423
    .restart local v1    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 425
    .end local v1    # "animation":Landroid/view/animation/Animation;
    .end local v2    # "height":F
    :pswitch_1
    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v5}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 426
    .restart local v2    # "height":F
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "animation":Landroid/view/animation/Animation;
    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const-string v0, "getad"

    return-object v0
.end method

.method getRequestCompletedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const-string v0, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    return-object v0
.end method

.method getRequestFailedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const-string v0, "millennialmedia.action.ACTION_GETAD_FAILED"

    return-object v0
.end method

.method public hasCachedVideoSupport()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method insertUrlAdMetaValues(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->height:I

    if-lez v0, :cond_0

    .line 385
    const-string v0, "hsht"

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->height:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->width:I

    if-lez v0, :cond_1

    .line 388
    const-string v0, "hswd"

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v1, v1, Lcom/millennialmedia/android/MMAdView;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_1
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->insertUrlAdMetaValues(Ljava/util/Map;)V

    .line 392
    return-void
.end method

.method public isBanner()Z
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method isLifecycleObservable()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionAnimated()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget v0, v0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView$MMAdViewMMAdImpl;->this$0:Lcom/millennialmedia/android/MMAdView;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 367
    return-void
.end method
