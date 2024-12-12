.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;
.super Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;
.source "CachedVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/CachedVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedVideoWebViewClientListener"
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/CachedVideoPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebViewClient$MMWebViewClientListener;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 375
    return-void
.end method


# virtual methods
.method public onPageFinished(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 380
    const-string v1, "CachedVideoPlayerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ ON PAGE FINISHED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$CachedVideoWebViewClientListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    .line 382
    .local v0, "activity":Lcom/millennialmedia/android/CachedVideoPlayerActivity;
    if-eqz v0, :cond_0

    .line 383
    invoke-static {v0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$000(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V

    .line 385
    :cond_0
    return-void
.end method
