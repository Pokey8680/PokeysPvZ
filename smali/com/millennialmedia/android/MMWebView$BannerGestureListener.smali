.class Lcom/millennialmedia/android/MMWebView$BannerGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BannerGestureListener"
.end annotation


# instance fields
.field webRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 154
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    iget-object v2, p0, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 141
    .local v1, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 143
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 144
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK$Event;->adSingleTap(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 147
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
