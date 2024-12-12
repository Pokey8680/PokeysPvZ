.class Lcom/millennialmedia/android/NVASpeechKit$6;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/NVASpeechKit;->createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
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
    .line 800
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$6;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakingBegin(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "vocalizer"    # Lcom/nuance/nmdp/speechkit/Vocalizer;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 805
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vocalization begins. text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$6;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->VOCALIZING:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1100(Lcom/millennialmedia/android/NVASpeechKit;Lcom/millennialmedia/android/NVASpeechKit$State;)V

    .line 807
    return-void
.end method

.method public onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
    .locals 3
    .param p1, "vocalizer"    # Lcom/nuance/nmdp/speechkit/Vocalizer;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;
    .param p4, "context"    # Ljava/lang/Object;

    .prologue
    .line 813
    const-string v0, "NVASpeechKit"

    const-string v1, "Vocalization has ended."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    if-eqz p3, :cond_0

    .line 815
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vocalizer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$6;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0, p3}, Lcom/millennialmedia/android/NVASpeechKit;->access$1200(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 820
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$6;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$State;->READY:Lcom/millennialmedia/android/NVASpeechKit$State;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$1100(Lcom/millennialmedia/android/NVASpeechKit;Lcom/millennialmedia/android/NVASpeechKit$State;)V

    goto :goto_0
.end method
