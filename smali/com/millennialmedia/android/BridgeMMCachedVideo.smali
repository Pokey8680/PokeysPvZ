.class Lcom/millennialmedia/android/BridgeMMCachedVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMCachedVideo.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# static fields
.field private static final AVAILABLE_CACHED_VIDEOS:Ljava/lang/String; = "availableCachedVideos"

.field private static final CACHE_VIDEO:Ljava/lang/String; = "cacheVideo"

.field private static final END_VIDEO:Ljava/lang/String; = "endVideo"

.field private static final PAUSE_VIDEO:Ljava/lang/String; = "pauseVideo"

.field private static final PLAY_CACHED_VIDEO:Ljava/lang/String; = "playCachedVideo"

.field private static final PLAY_VIDEO:Ljava/lang/String; = "playVideo"

.field private static final RESTART_VIDEO:Ljava/lang/String; = "restartVideo"

.field private static final TAG:Ljava/lang/String; = "BridgeMMCachedVideo"

.field private static final VIDEO_ID_EXISTS:Ljava/lang/String; = "videoIdExists"


# instance fields
.field private success:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 34
    return-void
.end method

.method private getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;
    .locals 5

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/millennialmedia/android/MMActivity;

    if-eqz v4, :cond_0

    .line 297
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMWebView;

    .line 298
    .local v3, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 301
    check-cast v1, Lcom/millennialmedia/android/MMActivity;

    .line 302
    .local v1, "mmActivity":Lcom/millennialmedia/android/MMActivity;
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/millennialmedia/android/VideoPlayerActivity;

    if-eqz v4, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMActivity;->getWrappedActivity()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v2

    .end local v2    # "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    check-cast v2, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 310
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "mmActivity":Lcom/millennialmedia/android/MMActivity;
    .end local v3    # "webView":Lcom/millennialmedia/android/MMWebView;
    .restart local v2    # "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 68
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x2

    new-instance v4, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-static {v1, v3, v4}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 85
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 86
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 87
    iput-object v0, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 90
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized cacheVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 141
    .local v0, "context":Landroid/content/Context;
    const-string v10, "url"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v7, "url":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 148
    :try_start_1
    new-instance v10, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v10}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    invoke-virtual {v10, v7}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 149
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v5, :cond_1

    .line 150
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "HTTP response is null"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 153
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 159
    .local v3, "httpEntity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_2

    .line 160
    :try_start_3
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "Null HTTP entity"

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v7    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 154
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "HTTP error: "

    invoke-static {v10, v11, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 165
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "Millennial ad return failed. Zero content length returned."

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    .line 170
    .local v4, "httpHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_0

    .line 171
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 172
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/json"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 174
    const/4 v8, 0x0

    .line 178
    .local v8, "videoAd":Lcom/millennialmedia/android/VideoAd;
    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "json":Ljava/lang/String;
    new-instance v8, Lcom/millennialmedia/android/VideoAd;

    .end local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    invoke-direct {v8, v6}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    .restart local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v8, :cond_0

    :try_start_6
    invoke-virtual {v8}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 190
    const/4 v10, 0x3

    iput v10, v8, Lcom/millennialmedia/android/VideoAd;->downloadPriority:I

    .line 191
    const/4 v10, 0x0

    invoke-static {v0, v10, v8, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v10

    if-eqz v10, :cond_5

    .line 196
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 198
    iget-boolean v10, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    if-eqz v10, :cond_4

    .line 199
    const-string v10, "Cached video(%s)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v9

    .line 205
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 181
    .end local v6    # "json":Ljava/lang/String;
    .end local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :catch_1
    move-exception v2

    .line 182
    .local v2, "e1":Ljava/lang/IllegalStateException;
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "Millennial ad return failed. Invalid response data."

    invoke-static {v10, v11, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 184
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 185
    .local v2, "e1":Ljava/io/IOException;
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "Millennial ad return failed. Invalid response data."

    invoke-static {v10, v11, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 205
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v6    # "json":Ljava/lang/String;
    .restart local v8    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 202
    :catch_3
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v10, "BridgeMMCachedVideo"

    const-string v11, "Caching interrupted: "

    invoke-static {v10, v11, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 205
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v9

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v9

    .line 208
    :cond_5
    const-string v9, "Unable to start download for Cached video(%s)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p2, "success"    # Z

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 124
    .local v0, "context":Landroid/content/Context;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z

    .line 126
    :cond_0
    iput-boolean p2, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->success:Z

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    .line 316
    return-void
.end method

.method public endVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 243
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 254
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const-string v1, "availableCachedVideos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->availableCachedVideos(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    const-string v1, "cacheVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->cacheVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    const-string v1, "endVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 327
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->endVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    const-string v1, "pauseVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 330
    :cond_4
    const-string v1, "playCachedVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->playCachedVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_5
    const-string v1, "playVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 333
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_6
    const-string v1, "restartVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 335
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->restartVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_7
    const-string v1, "videoIdExists"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->videoIdExists(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 260
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 271
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playCachedVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 101
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 102
    .local v1, "context":Landroid/content/Context;
    const-string v6, "videoId"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "videoId":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 105
    invoke-static {v1, v4}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 106
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v5, v7}, Lcom/millennialmedia/android/VideoAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const-string v5, "PROPERTY_EXPANDING"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v2

    .line 109
    .local v2, "adImplId":J
    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/VideoAd;->show(Landroid/content/Context;J)V

    .line 110
    const-string v5, "Playing Video(%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 114
    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    .end local v2    # "adImplId":J
    :cond_0
    return-object v5
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 226
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 237
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public restartVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->getVPA()Lcom/millennialmedia/android/VideoPlayerActivity;

    move-result-object v0

    .line 277
    .local v0, "vpa":Lcom/millennialmedia/android/VideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 278
    new-instance v1, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMCachedVideo;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/BridgeMMCachedVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public videoIdExists(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMCachedVideo;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 47
    .local v1, "context":Landroid/content/Context;
    const-string v3, "videoId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "videoId":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 50
    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 51
    .local v0, "ad":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 54
    .end local v0    # "ad":Lcom/millennialmedia/android/VideoAd;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
