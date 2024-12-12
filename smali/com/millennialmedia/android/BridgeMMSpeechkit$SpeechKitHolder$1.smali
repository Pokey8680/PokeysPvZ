.class Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->cancelRecording()V

    .line 473
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->release()V

    .line 474
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->access$002(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit;

    .line 476
    :cond_0
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
