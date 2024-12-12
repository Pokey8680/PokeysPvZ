.class Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
.super Ljava/lang/Object;
.source "AdCacheThreadPool.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/AdCacheThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdCacheTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;",
        ">;"
    }
.end annotation


# instance fields
.field private ad:Lcom/millennialmedia/android/CachedAd;

.field private adName:Ljava/lang/String;

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

.field private listenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/millennialmedia/android/AdCacheThreadPool;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/AdCacheThreadPool;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "adName"    # Ljava/lang/String;
    .param p4, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p5, "listener"    # Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->this$0:Lcom/millennialmedia/android/AdCacheThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    .line 64
    iput-object p3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    .line 66
    if-eqz p5, :cond_0

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I
    .locals 2
    .param p1, "other"    # Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget v0, v0, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

    iget-object v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget v1, v1, Lcom/millennialmedia/android/CachedAd;->downloadPriority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->compareTo(Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    .line 118
    :cond_0
    instance-of v1, p1, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    if-nez v1, :cond_1

    .line 119
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 120
    check-cast v0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;

    .line 121
    .local v0, "that":Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;
    iget-object v1, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v2, v0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/CachedAd;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, "listener":Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->listenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    check-cast v1, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .line 79
    .restart local v1    # "listener":Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    :cond_0
    if-eqz v1, :cond_1

    .line 80
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v1, v3}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadStart(Lcom/millennialmedia/android/CachedAd;)V

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/millennialmedia/android/HandShake;->lockAdTypeDownload(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v5, v3}, Lcom/millennialmedia/android/CachedAd;->download(Landroid/content/Context;)Z

    move-result v2

    .line 84
    .local v2, "success":Z
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/millennialmedia/android/HandShake;->unlockAdTypeDownload(Ljava/lang/String;)V

    .line 89
    if-nez v2, :cond_5

    .line 90
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/millennialmedia/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "incompleteId":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v3}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 95
    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v5, v3}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    .line 96
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v0    # "incompleteId":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_2

    .line 110
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-interface {v1, v3, v2}, Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;->downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V

    .line 111
    :cond_2
    return-void

    .line 101
    .restart local v0    # "incompleteId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    iget-object v6, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    iget-boolean v6, v6, Lcom/millennialmedia/android/CachedAd;->downloadAllOrNothing:Z

    if-nez v6, :cond_4

    iget-object v4, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->ad:Lcom/millennialmedia/android/CachedAd;

    invoke-virtual {v4}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v4

    :cond_4
    invoke-static {v3, v5, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v0    # "incompleteId":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v5, p0, Lcom/millennialmedia/android/AdCacheThreadPool$AdCacheTask;->adName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
