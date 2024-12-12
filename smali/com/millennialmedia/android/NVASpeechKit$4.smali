.class Lcom/millennialmedia/android/NVASpeechKit$4;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;


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
    .line 268
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V
    .locals 2
    .param p1, "command"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$300(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$800(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$900(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$300(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onCustomWordsAdded()V

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/millennialmedia/android/NVASpeechKit;->access$802(Lcom/millennialmedia/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 306
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$4;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$300(Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/millennialmedia/android/NVASpeechKit$Listener;->onCustomWordsDeleted()V

    goto :goto_0
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .param p2, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 285
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataUploadCommand listener error. command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit$4;->notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V

    .line 292
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    .param p2, "results"    # Lcom/nuance/nmdp/speechkit/DataUploadResult;

    .prologue
    .line 273
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataUploadCommand listener successful command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVocRegenerated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/DataUploadResult;->isVocRegenerated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " results:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit$4;->notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V

    .line 280
    return-void
.end method
