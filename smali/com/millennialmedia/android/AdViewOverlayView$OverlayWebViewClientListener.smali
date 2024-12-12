.class Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;
.super Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayWebViewClientListener"
.end annotation


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 318
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;->onPageFinished(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClientListener;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 325
    .local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->removeProgressBar()V

    .line 328
    :cond_0
    return-void
.end method
