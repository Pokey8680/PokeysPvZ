.class public Lcom/millennialmedia/android/BridgeMMSpeechkit;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMSpeechkit.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/BridgeMMSpeechkit$1;,
        Lcom/millennialmedia/android/BridgeMMSpeechkit$SingletonHolder;,
        Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BridgeMMSpeechkit"


# instance fields
.field private ADD_CUSTOM_VOICE_WORDS:Ljava/lang/String;

.field private CACHE_AUDIO:Ljava/lang/String;

.field private DELETE_CUSTOM_VOICE_WORDS:Ljava/lang/String;

.field private END_RECORDING:Ljava/lang/String;

.field private GET_SESSION_ID:Ljava/lang/String;

.field private PLAY_AUDIO:Ljava/lang/String;

.field private RELEASE_VOICE:Ljava/lang/String;

.field private SAMPLE_BACKGROUND_AUDIO_LEVEL:Ljava/lang/String;

.field private START_RECORDING:Ljava/lang/String;

.field private STOP_AUDIO:Ljava/lang/String;

.field private TEXT_TO_SPEECH:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 24
    const-string v0, "startRecording"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->START_RECORDING:Ljava/lang/String;

    .line 25
    const-string v0, "endRecording"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->END_RECORDING:Ljava/lang/String;

    .line 26
    const-string v0, "cacheAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->CACHE_AUDIO:Ljava/lang/String;

    .line 27
    const-string v0, "getSessionId"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->GET_SESSION_ID:Ljava/lang/String;

    .line 28
    const-string v0, "playAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->PLAY_AUDIO:Ljava/lang/String;

    .line 29
    const-string v0, "textToSpeech"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->TEXT_TO_SPEECH:Ljava/lang/String;

    .line 30
    const-string v0, "stopAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->STOP_AUDIO:Ljava/lang/String;

    .line 31
    const-string v0, "sampleBackgroundAudioLevel"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->SAMPLE_BACKGROUND_AUDIO_LEVEL:Ljava/lang/String;

    .line 32
    const-string v0, "releaseVoice"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->RELEASE_VOICE:Ljava/lang/String;

    .line 33
    const-string v0, "addCustomVoiceWords"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->ADD_CUSTOM_VOICE_WORDS:Ljava/lang/String;

    .line 34
    const-string v0, "deleteCustomVoiceWords"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->DELETE_CUSTOM_VOICE_WORDS:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 5

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/MMWebView;

    .line 82
    .local v3, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->allowSpeechCreationCommands()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v4

    .line 98
    :goto_0
    return-object v4

    .line 86
    :cond_0
    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 88
    new-instance v2, Lcom/millennialmedia/android/NVASpeechKit;

    .end local v2    # "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    invoke-direct {v2, v3}, Lcom/millennialmedia/android/NVASpeechKit;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    .line 89
    .restart local v2    # "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    invoke-static {v2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 90
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v4

    iget-object v1, v4, Lcom/millennialmedia/android/HandShake;->nuanceCredentials:Lcom/millennialmedia/android/HandShake$NuanceCredentials;

    .line 92
    .local v1, "credentials":Lcom/millennialmedia/android/HandShake$NuanceCredentials;
    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/millennialmedia/android/NVASpeechKit;->initialize(Lcom/millennialmedia/android/HandShake$NuanceCredentials;Landroid/content/Context;)Z

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "credentials":Lcom/millennialmedia/android/HandShake$NuanceCredentials;
    :cond_1
    move-object v4, v2

    .line 98
    goto :goto_0
.end method

.method static getInstance()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SingletonHolder;->INSTANCE:Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    return-object v0
.end method

.method private getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 104
    .local v0, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->allowRecordingCommands()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSpeechKitInternal()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getInstance()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    return-object v0
.end method

.method private getSpeechKitRelease()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKitInternal()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    return-object v0
.end method

.method private playAudioInternal(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
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
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 256
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 257
    .local v1, "context":Landroid/content/Context;
    const-string v5, "path"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 258
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 259
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 261
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-nez v0, :cond_1

    .line 278
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_0
    :goto_0
    return-object v4

    .line 263
    .restart local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 264
    const-string v4, "Audio already playing."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 266
    :cond_2
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 267
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "repeat"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {v1, v3}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 271
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 272
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "repeat"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0
.end method

.method static releaseSpeechKit()Z
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getInstance()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    move-result v0

    return v0
.end method

.method static setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 1
    .param p0, "speechKit"    # Lcom/millennialmedia/android/NVASpeechKit;

    .prologue
    .line 511
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getInstance()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z

    .line 512
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getInstance()Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V

    .line 513
    return-void
.end method


# virtual methods
.method public addCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    .line 409
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 410
    .local v0, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 411
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 422
    :goto_0
    return-object v3

    .line 414
    :cond_0
    const-string v3, "words"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    .local v2, "words":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 416
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "wordArray":[Ljava/lang/String;
    sget-object v3, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v0, v3, v1}, Lcom/millennialmedia/android/NVASpeechKit;->updateCustomWords(Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 419
    const-string v3, "javascript:MMJS.sdk.customVoiceWordsAdded()"

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 422
    .end local v1    # "wordArray":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public cacheAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    .line 166
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const-string v3, "Invalid url"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 185
    :goto_0
    return-object v3

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 173
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 174
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/AdCache;->downloadComponentExternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string v3, "javascript:MMJS.sdk.audioCached()"

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully cached audio at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 185
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to cache audio at"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public deleteCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    .line 434
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 435
    .local v0, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 436
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 448
    :goto_0
    return-object v3

    .line 440
    :cond_0
    const-string v3, "words"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    .local v2, "words":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "wordArray":[Ljava/lang/String;
    sget-object v3, Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;->Remove:Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;

    invoke-virtual {v0, v3, v1}, Lcom/millennialmedia/android/NVASpeechKit;->updateCustomWords(Lcom/millennialmedia/android/NVASpeechKit$CustomWordsOp;[Ljava/lang/String;)V

    .line 445
    const-string v3, "javascript:MMJS.sdk.customVoiceWordsDeleted()"

    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 448
    .end local v1    # "wordArray":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public endRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 147
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 148
    .local v0, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 149
    const-string v1, "Unable to get speech kit"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    .line 151
    :cond_0
    monitor-enter v0

    .line 152
    :try_start_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->endRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    monitor-exit v0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const-string v1, "Failed in speechKit"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
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
    .line 43
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 45
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->START_RECORDING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->startRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->END_RECORDING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->endRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->CACHE_AUDIO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->cacheAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->GET_SESSION_ID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSessionId(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->PLAY_AUDIO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->TEXT_TO_SPEECH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->textToSpeech(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->STOP_AUDIO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 58
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->SAMPLE_BACKGROUND_AUDIO_LEVEL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->sampleBackgroundAudioLevel(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_8
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->RELEASE_VOICE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 62
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->releaseVoice(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_9
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->ADD_CUSTOM_VOICE_WORDS:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 64
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->addCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_a
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->DELETE_CUSTOM_VOICE_WORDS:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->deleteCustomVoiceWords(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getSessionId(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    .line 195
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 196
    .local v1, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 197
    const-string v2, "No SpeechKit session open."

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 202
    :goto_0
    return-object v2

    .line 199
    :cond_0
    invoke-virtual {v1}, Lcom/millennialmedia/android/NVASpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 202
    :cond_1
    const-string v2, "No SpeechKit session open."

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method injectJavascript(Ljava/lang/String;)V
    .locals 2
    .param p1, "javascript"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 306
    .local v0, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 284
    const-string v2, "javascript:MMJS.sdk.audioCompleted()"

    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 287
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 288
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 289
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->removeCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 291
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->removePeriodicListener(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 294
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_0
    return-void
.end method

.method public onUpdate(I)V
    .locals 2
    .param p1, "currentPositionMillis"    # I

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.audioPositionChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
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
    .line 215
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v4

    .line 216
    .local v4, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v4, :cond_1

    .line 217
    const-string v6, "Unable to create speech kit"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 245
    :cond_0
    :goto_0
    return-object v3

    .line 221
    :cond_1
    const-string v6, "url"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 223
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 224
    const-string v6, "Invalid url"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 227
    :cond_2
    const-string v6, "url"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 229
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 230
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_4

    .line 231
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 232
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->addCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z

    .line 234
    invoke-virtual {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->addPeriodicListener(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z

    .line 236
    :cond_3
    const-string v6, "path"

    invoke-interface {p1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->playAudioInternal(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 239
    .local v3, "response":Lcom/millennialmedia/android/MMJSResponse;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 240
    const-string v6, "javascript:MMJS.sdk.audioStarted()"

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "response":Lcom/millennialmedia/android/MMJSResponse;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public releaseVoice(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 388
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string v0, "Unable to get speech kit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "released speechkit"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public sampleBackgroundAudioLevel(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
    .line 371
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v0

    .line 372
    .local v0, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v0, :cond_0

    .line 373
    const-string v1, "Unable to create speech kit"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 378
    :goto_0
    return-object v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/NVASpeechKit;->startSampleRecording()V

    .line 378
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecording(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    .line 124
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 125
    .local v1, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 126
    const-string v2, "Unable to create speech kit"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 137
    :goto_0
    return-object v2

    .line 130
    :cond_0
    const-string v2, "language"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string v0, "en_GB"

    .line 135
    :cond_1
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/NVASpeechKit;->startRecording(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 137
    :cond_2
    const-string v2, "Failed in speechKit"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
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
    .line 345
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 346
    .local v1, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 347
    const-string v2, "Unable to get speech kit"

    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 359
    :goto_0
    return-object v2

    .line 350
    :cond_0
    invoke-virtual {v1}, Lcom/millennialmedia/android/NVASpeechKit;->stopActions()V

    .line 352
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 355
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0

    .line 359
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_1
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public textToSpeech(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
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
    .line 320
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "BridgeMMSpeechkit"

    const-string v4, "@@-Calling textToSpeech"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->getCreateSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;

    move-result-object v1

    .line 322
    .local v1, "speechKit":Lcom/millennialmedia/android/NVASpeechKit;
    if-nez v1, :cond_0

    .line 323
    const-string v3, "Unable to create speech kit"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 335
    :goto_0
    return-object v3

    .line 327
    :cond_0
    const-string v3, "language"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "language":Ljava/lang/String;
    const-string v3, "text"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 329
    .local v2, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    const-string v0, "en_GB"

    .line 332
    :cond_1
    invoke-virtual {v1}, Lcom/millennialmedia/android/NVASpeechKit;->stopActions()V

    .line 333
    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/NVASpeechKit;->textToSpeech(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 335
    :cond_2
    const-string v3, "Failed in speechKit"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method
