.class Lcom/millennialmedia/android/AdViewOverlayView$AnimationListener;
.super Ljava/lang/Object;
.source "AdViewOverlayView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationListener"
.end annotation


# instance fields
.field private overlayRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;)V
    .locals 1
    .param p1, "videoView"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    .line 425
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 440
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 441
    .local v1, "overlayView":Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    const-string v2, "AdViewOverlayView"

    const-string v3, "Finishing overlay this is in w/ anim finishOverLayWithAnim()"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 446
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 451
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 430
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$AnimationListener;->overlayRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 431
    .local v0, "overlayView":Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v0, :cond_0

    .line 432
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$300(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 435
    :cond_0
    return-void
.end method
