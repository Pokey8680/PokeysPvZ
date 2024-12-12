.class Lcom/millennialmedia/android/NVASpeechKit$7;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/NVASpeechKit;->createRecognizerListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
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
    .line 835
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;
    .param p2, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 867
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speech Kit Error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " detail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " suggestions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1500(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 871
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0, p2}, Lcom/millennialmedia/android/NVASpeechKit;->access$1200(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 872
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$002(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 874
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1600(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognizer.Listener.onError: session id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$1600(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method public onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 839
    const-string v0, "NVASpeechKit"

    const-string v1, "recording begins"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    .line 841
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->RECORDING:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1100(Lcom/millennialmedia/android/NVASpeechKit;Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0, p1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1300(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)V

    .line 845
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$600(Lcom/millennialmedia/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1400(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 847
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$600(Lcom/millennialmedia/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1400(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    :cond_1
    return-void
.end method

.method public onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 2
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;

    .prologue
    .line 855
    const-string v0, "NVASpeechKit"

    const-string v1, "recording has ended"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1500(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 857
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->PROCESSING:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1100(Lcom/millennialmedia/android/NVASpeechKit;Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1600(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1600(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1702(Lcom/millennialmedia/android/NVASpeechKit;Ljava/lang/String;)Ljava/lang/String;

    .line 862
    :cond_1
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/nuance/nmdp/speechkit/Recognizer;
    .param p2, "results"    # Lcom/nuance/nmdp/speechkit/Recognition;

    .prologue
    .line 883
    const-string v0, "NVASpeechKit"

    const-string v1, "recording results returned."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1500(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 885
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$200(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/Recognition;->getDetailedResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1800(Lcom/millennialmedia/android/NVASpeechKit;Ljava/util/List;)V

    .line 889
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$1700(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 890
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recognizer.Listener.onResults: session id ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$1700(Lcom/millennialmedia/android/NVASpeechKit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->logEvent()V

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/millennialmedia/android/NVASpeechKit$Result;

    iput-object v1, v0, Lcom/millennialmedia/android/NVASpeechKit;->_results:[Lcom/millennialmedia/android/NVASpeechKit$Result;

    .line 899
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$7;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$700(Lcom/millennialmedia/android/NVASpeechKit;)V

    goto :goto_0
.end method
