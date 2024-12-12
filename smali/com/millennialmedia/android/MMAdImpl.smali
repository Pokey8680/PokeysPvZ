.class abstract Lcom/millennialmedia/android/MMAdImpl;
.super Ljava/lang/Object;
.source "MMAdImpl.java"

# interfaces
.implements Lcom/millennialmedia/android/MMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;,
        Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;
    }
.end annotation


# static fields
.field static final BANNER:Ljava/lang/String; = "b"

.field static final INTERSTITIAL:Ljava/lang/String; = "i"

.field private static final TAG:Ljava/lang/String; = "MMAdImpl"

.field private static nextAdViewId:J


# instance fields
.field adType:Ljava/lang/String;

.field apid:Ljava/lang/String;

.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field controller:Lcom/millennialmedia/android/MMAdImplController;

.field ignoreDensityScaling:Z

.field internalId:J

.field isFinishing:Z

.field lastAdRequest:J

.field linkForExpansionId:J

.field protected mmRequest:Lcom/millennialmedia/android/MMRequest;

.field mmWebViewClient:Lcom/millennialmedia/android/MMWebViewClient;

.field mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

.field obj:Lorg/json/JSONObject;

.field requestListener:Lcom/millennialmedia/android/RequestListener;

.field userData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 27
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    .line 97
    new-instance v0, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImpl$BasicWebViewClientListener;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    .line 99
    const-class v1, Lcom/millennialmedia/android/MMAdImpl;

    monitor-enter v1

    .line 100
    :try_start_0
    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    .line 101
    sget-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/millennialmedia/android/MMAdImpl;->nextAdViewId:J

    .line 102
    const-string v0, "MMAdImpl"

    const-string v2, "Assigning MMAdImpl internal id: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "i"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;
    .param p2, "webLayoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 334
    return-void
.end method

.method animateTransition()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    return-object v0
.end method

.method getCachedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract getCallingAd()Lcom/millennialmedia/android/MMAd;
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getId()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    return v0
.end method

.method public getListener()Lcom/millennialmedia/android/RequestListener;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    return-object v0
.end method

.method public getMMRequest()Lcom/millennialmedia/android/MMRequest;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    return-object v0
.end method

.method getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;
    .locals 3

    .prologue
    .line 270
    const-string v0, "MMAdImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning a client for user: DefaultWebViewClient, adimpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/millennialmedia/android/BannerWebViewClient;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmWebViewClientListener:Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;

    new-instance v2, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/BannerWebViewClient;-><init>(Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    return-object v0
.end method

.method getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "fetch"

    return-object v0
.end method

.method getRequestCompletedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    return-object v0
.end method

.method getRequestFailedAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"

    return-object v0
.end method

.method public hasCachedVideoSupport()Z
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method insertUrlAdMetaValues(Ljava/util/Map;)V
    .locals 4
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
    .line 296
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    const-string v1, "apid"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v1, "do"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v1, "olock"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getOrientationLocked(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->hasCachedVideoSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    const-string v1, "cachedvideo"

    const-string v2, "false"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_0
    const-string v1, "reqtype"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getReqType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    .line 308
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    const-string v1, "video"

    const-string v2, "true"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 314
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    :cond_2
    const-string v1, "at"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :goto_1
    return-void

    .line 311
    :cond_3
    const-string v1, "video"

    const-string v2, "false"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_4
    const-string v1, "MMAdImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") **********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :cond_5
    const-string v1, "MMAdImpl"

    const-string v2, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "at"

    const-string v2, "b"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public isBanner()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method isExpandingToUrl()Z
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method isLifecycleObservable()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method isRefreshable()Z
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 210
    sget-boolean v7, Lcom/millennialmedia/android/MMSDK;->disableAdMinRefresh:Z

    if-eqz v7, :cond_0

    .line 211
    const-string v6, "MMAdImpl"

    const-string v7, "Minimum adrefresh time ignored"

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return v5

    .line 214
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    .local v2, "currentTime":J
    iget-wide v8, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v4, v8

    .line 216
    .local v4, "lastRequestSecs":I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    iget-wide v0, v7, Lcom/millennialmedia/android/HandShake;->adRefreshSecs:J

    .line 217
    .local v0, "adRefreshSecs":J
    int-to-long v8, v4

    cmp-long v7, v8, v0

    if-ltz v7, :cond_1

    .line 218
    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->lastAdRequest:J

    goto :goto_0

    .line 221
    :cond_1
    const-string v7, "MMAdImpl"

    const-string v8, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    int-to-long v10, v4

    sub-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 223
    goto :goto_0
.end method

.method isTransitionAnimated()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method isUpdatingMraid()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-boolean v0, v0, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 234
    return-void
.end method

.method removeProgressBar()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 0
    .param p1, "mmWebView"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 330
    return-void
.end method

.method requestAd()V
    .locals 1

    .prologue
    .line 202
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 203
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAd()V

    .line 206
    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 1
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sput-object p1, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    .line 120
    return-void
.end method

.method setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 338
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 0
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 168
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/RequestListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/millennialmedia/android/RequestListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    .line 140
    return-void
.end method

.method public setMMRequest(Lcom/millennialmedia/android/MMRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdImpl;->mmRequest:Lcom/millennialmedia/android/MMRequest;

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdType[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") InternalId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LinkedId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") isFinishing("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unresizeToDefault()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImplController;->unresizeToDefault()V

    .line 416
    :cond_0
    return-void
.end method
