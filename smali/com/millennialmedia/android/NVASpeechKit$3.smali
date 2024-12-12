.class Lcom/millennialmedia/android/NVASpeechKit$3;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericCommand$Listener;


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
    .line 246
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$3;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/nuance/nmdp/speechkit/GenericCommand;Lcom/nuance/nmdp/speechkit/GenericResult;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 3
    .param p1, "command"    # Lcom/nuance/nmdp/speechkit/GenericCommand;
    .param p2, "result"    # Lcom/nuance/nmdp/speechkit/GenericResult;
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;

    .prologue
    .line 251
    if-eqz p3, :cond_0

    .line 252
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericCommand listener. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$3;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-static {v0}, Lcom/millennialmedia/android/NVASpeechKit;->access$700(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 264
    return-void

    .line 257
    :cond_0
    const-string v0, "NVASpeechKit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenericCommand listener. Success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/GenericResult;->getQueryResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
