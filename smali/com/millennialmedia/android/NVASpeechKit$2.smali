.class Lcom/millennialmedia/android/NVASpeechKit$2;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 223
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$000(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$000(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->access$100(D)D

    move-result-wide v0

    .line 227
    .local v0, "normalizedLevel":D
    const-string v2, "NVASpeechKit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audiolevel changed: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->update(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$300(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$300(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onAudioLevelUpdate(D)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$400(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$State;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/android/NVASpeechKit$State;->RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-eqz v2, :cond_2

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$600(Lcom/millennialmedia/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/NVASpeechKit$2;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v3}, Lcom/millennialmedia/android/NVASpeechKit;->access$500(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    .end local v0    # "normalizedLevel":D
    :cond_2
    return-void
.end method
