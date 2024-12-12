.class Lcom/millennialmedia/android/MMWebView$WebTouchListener;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebTouchListener"
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
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v4, p0, Lcom/millennialmedia/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMWebView;

    .line 123
    .local v1, "webView":Lcom/millennialmedia/android/MMWebView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 124
    .local v0, "consume":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 125
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->canScroll()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 127
    :cond_0
    :goto_1
    return v0

    .end local v0    # "consume":Z
    :cond_1
    move v0, v3

    .line 123
    goto :goto_0

    .restart local v0    # "consume":Z
    :cond_2
    move v0, v3

    .line 125
    goto :goto_1
.end method
