.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z

.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    .line 804
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 796
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 823
    :try_start_0
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v6, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 824
    .local v2, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 825
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0x194

    if-eq v5, v6, :cond_0

    .line 827
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 829
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 830
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 841
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_0
    return-object v4

    .line 836
    .restart local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v2    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CachedVideoPlayerActivity"

    const-string v6, "Error with http web overlay"

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 796
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "webContent"    # Ljava/lang/String;

    .prologue
    .line 809
    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    .line 812
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v2, v2, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 815
    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    .line 817
    :cond_1
    return-void
.end method
