.class Lcom/millennialmedia/android/BridgeMMInlineVideo$4;
.super Ljava/lang/Object;
.source "BridgeMMInlineVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMInlineVideo;->adjustVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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
        "Lcom/millennialmedia/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

.field final synthetic val$parameters:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    iput-object p2, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;->val$parameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/millennialmedia/android/MMJSResponse;
    .locals 5

    .prologue
    .line 98
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;->this$0:Lcom/millennialmedia/android/BridgeMMInlineVideo;

    iget-object v3, v3, Lcom/millennialmedia/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMWebView;

    .line 99
    .local v2, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v2, :cond_0

    .line 100
    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getMMLayout()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    .line 102
    .local v0, "mmLayout":Lcom/millennialmedia/android/MMLayout;
    new-instance v1, Lcom/millennialmedia/android/InlineVideoView$InlineParams;

    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;->val$parameters:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/millennialmedia/android/InlineVideoView$InlineParams;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    .line 104
    .local v1, "params":Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMLayout;->adjustVideo(Lcom/millennialmedia/android/InlineVideoView$InlineParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 109
    .end local v0    # "mmLayout":Lcom/millennialmedia/android/MMLayout;
    .end local v1    # "params":Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;->call()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
