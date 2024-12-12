.class Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "MMAdImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MMAdImplRedirectionListenerImpl"
.end annotation


# instance fields
.field adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 363
    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 365
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->creatorAdImplInternalId:J

    .line 367
    :cond_0
    return-void
.end method


# virtual methods
.method public isActivityStartable(Landroid/net/Uri;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 384
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdImpl;

    .line 385
    .local v1, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 387
    .local v2, "c":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 388
    check-cast v0, Landroid/app/Activity;

    .line 389
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const/4 v3, 0x0

    .line 394
    .end local v0    # "a":Landroid/app/Activity;
    .end local v2    # "c":Landroid/content/Context;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public startingActivity(Landroid/net/Uri;)V
    .locals 3
    .param p1, "destinationUri"    # Landroid/net/Uri;

    .prologue
    .line 400
    invoke-super {p0, p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V

    .line 401
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 404
    .local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_1

    .line 405
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->overlayOpened(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 408
    .end local v0    # "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    :cond_1
    return-void
.end method

.method public updateLastVideoViewedTime()V
    .locals 4

    .prologue
    .line 373
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl$MMAdImplRedirectionListenerImpl;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 374
    .local v0, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 375
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method
