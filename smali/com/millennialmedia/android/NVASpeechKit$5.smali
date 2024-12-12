.class Lcom/millennialmedia/android/NVASpeechKit$5;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/millennialmedia/android/NVASpeechKit$Listener;


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
    .line 354
    iput-object p1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioLevelUpdate(D)V
    .locals 1
    .param p1, "audioLevel"    # D

    .prologue
    .line 411
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/NVASpeechKit;->audioLevelChange(D)V

    .line 412
    return-void
.end method

.method public onAudioSampleUpdate(D)V
    .locals 1
    .param p1, "averageAudioLevel"    # D

    .prologue
    .line 405
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/NVASpeechKit;->backgroundAudioLevel(D)V

    .line 406
    return-void
.end method

.method public onCustomWordsAdded()V
    .locals 0

    .prologue
    .line 400
    return-void
.end method

.method public onCustomWordsDeleted()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onResults()V
    .locals 3

    .prologue
    .line 383
    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    iget-object v2, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v2}, Lcom/millennialmedia/android/NVASpeechKit;->getResults()[Lcom/millennialmedia/android/NVASpeechKit$Result;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/NVASpeechKit;->access$1000(Lcom/millennialmedia/android/NVASpeechKit;[Lcom/millennialmedia/android/NVASpeechKit$Result;)Lorg/json/JSONArray;

    move-result-object v0

    .line 384
    .local v0, "jsonArray":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/NVASpeechKit;->recognitionResult(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public onStateChange(Lcom/millennialmedia/android/NVASpeechKit$State;)V
    .locals 2
    .param p1, "state"    # Lcom/millennialmedia/android/NVASpeechKit$State;

    .prologue
    .line 359
    sget-object v0, Lcom/millennialmedia/android/NVASpeechKit$8;->$SwitchMap$com$millennialmedia$android$NVASpeechKit$State:[I

    invoke-virtual {p1}, Lcom/millennialmedia/android/NVASpeechKit$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->voiceStateChangeError()V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->voiceStateChangeProcessing()V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->voiceStateChangeReady()V

    goto :goto_0

    .line 370
    :pswitch_3
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->voiceStateChangeRecording()V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v0, p0, Lcom/millennialmedia/android/NVASpeechKit$5;->this$0:Lcom/millennialmedia/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->voiceStateChangeVocalizing()V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
