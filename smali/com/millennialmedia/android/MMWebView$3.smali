.class Lcom/millennialmedia/android/MMWebView$3;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMWebView;

.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    iput-object p2, p0, Lcom/millennialmedia/android/MMWebView$3;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 394
    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->buildDrawingCache()V

    .line 395
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 396
    .local v1, "cache":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 397
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$3;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v3, v0}, Lcom/millennialmedia/android/MMAdImpl;->prepareTransition(Landroid/graphics/Bitmap;)V

    .line 400
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/MMWebView$3;->this$0:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v1    # "cache":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 401
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MMWebView"

    const-string v4, "Animation exception: "

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
