.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;
.super Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayRedirectionListenerImpl"
.end annotation


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 375
    return-void
.end method


# virtual methods
.method public isExpandingToUrl()Z
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 381
    .local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$AdViewOverlayViewMMAdImpl;

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isExpandingToUrl()Z

    move-result v1

    .line 384
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
