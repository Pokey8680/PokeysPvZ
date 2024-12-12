.class Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdViewOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchWebViewContentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private _overlayViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdViewOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/millennialmedia/android/AdViewOverlayView;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 648
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 649
    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    .line 650
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    .line 651
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 638
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 668
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    .line 669
    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 671
    :try_start_0
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v6, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 673
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_0

    .line 674
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 675
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_0

    .line 678
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 680
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 681
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "webContent":Ljava/lang/String;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v4    # "webContent":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AdViewOverlayView"

    const-string v6, "Unable to get weboverlay"

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 638
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "webContent"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 702
    .local v1, "view":Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v1, :cond_1

    .line 703
    iget-boolean v2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 706
    .local v0, "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->finish()V

    .line 712
    .end local v0    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_1

    .line 714
    iget-object v2, v1, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v2, v2, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_1
    return-void

    .line 709
    .restart local v0    # "overlayActivity":Lcom/millennialmedia/android/AdViewOverlayActivity;
    :cond_2
    invoke-static {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 656
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->_overlayViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;

    .line 657
    .local v0, "view":Lcom/millennialmedia/android/AdViewOverlayView;
    if-eqz v0, :cond_0

    .line 658
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 659
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V

    .line 662
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 663
    return-void
.end method
