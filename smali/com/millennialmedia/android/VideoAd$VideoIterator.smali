.class Lcom/millennialmedia/android/VideoAd$VideoIterator;
.super Lcom/millennialmedia/android/AdCache$Iterator;
.source "VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoIterator"
.end annotation


# instance fields
.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field hasSharedVideoFile:Z

.field private videoAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/millennialmedia/android/VideoAd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoAd"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/millennialmedia/android/AdCache$Iterator;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->contextRef:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method


# virtual methods
.method callback(Lcom/millennialmedia/android/CachedAd;)Z
    .locals 4
    .param p1, "cachedAd"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/millennialmedia/android/VideoAd;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 358
    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    .line 359
    .local v1, "videoAd":Lcom/millennialmedia/android/VideoAd;
    iget-object v2, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 360
    .local v0, "requestingVideoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    .line 361
    invoke-static {v1}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    .line 367
    .end local v0    # "requestingVideoAd":Lcom/millennialmedia/android/VideoAd;
    .end local v1    # "videoAd":Lcom/millennialmedia/android/VideoAd;
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v2

    return v2
.end method

.method deleteVideoFile(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 385
    .local v0, "requestingVideoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v0, :cond_0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "video.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/millennialmedia/android/AdCache;->deleteFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "VideoAd"

    const-string v2, "VideoAd video file %s was deleted."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/millennialmedia/android/VideoAd;->access$000(Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method done()V
    .locals 2

    .prologue
    .line 373
    iget-boolean v1, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->hasSharedVideoFile:Z

    if-nez v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/millennialmedia/android/VideoAd$VideoIterator;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 375
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/VideoAd$VideoIterator;->deleteVideoFile(Landroid/content/Context;)V

    .line 379
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    invoke-super {p0}, Lcom/millennialmedia/android/AdCache$Iterator;->done()V

    .line 380
    return-void
.end method
