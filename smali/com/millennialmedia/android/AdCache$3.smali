.class final Lcom/millennialmedia/android/AdCache$3;
.super Ljava/lang/Object;
.source "AdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/AdCache;->cleanCache(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    const-string v0, "AdCache"

    const-string v1, "AdCache"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V

    .line 440
    iget-object v0, p0, Lcom/millennialmedia/android/AdCache$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/AdCache;->cleanupCache(Landroid/content/Context;)V

    .line 441
    return-void
.end method
