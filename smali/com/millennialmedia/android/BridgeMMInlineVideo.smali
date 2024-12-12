.class Lcom/millennialmedia/android/BridgeMMInlineVideo;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMInlineVideo.java"


# static fields
.field private static final ADJUST_VIDEO:Ljava/lang/String; = "adjustVideo"

.field private static final INSERT_VIDEO:Ljava/lang/String; = "insertVideo"

.field private static final PAUSE_VIDEO:Ljava/lang/String; = "pauseVideo"

.field private static final PLAY_VIDEO:Ljava/lang/String; = "playVideo"

.field private static final REMOVE_VIDEO:Ljava/lang/String; = "removeVideo"

.field private static final RESUME_VIDEO:Ljava/lang/String; = "resumeVideo"

.field private static final SET_STREAM_VIDEO_SOURCE:Ljava/lang/String; = "setStreamVideoSource"

.field private static final STOP_VIDEO:Ljava/lang/String; = "stopVideo"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public adjustVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 93
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$4;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
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
    .line 201
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 203
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    const-string v1, "adjustVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->adjustVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    const-string v1, "insertVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->insertVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_2
    const-string v1, "pauseVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 209
    :cond_3
    const-string v1, "playVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_4
    const-string v1, "removeVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 212
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->removeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_5
    const-string v1, "resumeVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->resumeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 215
    :cond_6
    const-string v1, "setStreamVideoSource"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 216
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->setStreamVideoSource(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_7
    const-string v1, "stopVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->stopVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public insertVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 27
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$1;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public pauseVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 137
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$6;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 71
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$3;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 48
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$2;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public resumeVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 158
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$7;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public setStreamVideoSource(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 180
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMInlineVideo$8;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public stopVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
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
    .line 116
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMInlineVideo$5;-><init>(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;->runOnUiThreadFuture(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
