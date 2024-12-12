.class Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMSpeechkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechKitHolder"
.end annotation


# instance fields
.field private _speechKit:Lcom/millennialmedia/android/NVASpeechKit;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/millennialmedia/android/BridgeMMSpeechkit$1;

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/millennialmedia/android/NVASpeechKit;

    return-object v0
.end method

.method static synthetic access$002(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;Lcom/millennialmedia/android/NVASpeechKit;)Lcom/millennialmedia/android/NVASpeechKit;
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;
    .param p1, "x1"    # Lcom/millennialmedia/android/NVASpeechKit;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/millennialmedia/android/NVASpeechKit;

    return-object p1
.end method


# virtual methods
.method public getSpeechKit()Lcom/millennialmedia/android/NVASpeechKit;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/millennialmedia/android/NVASpeechKit;

    return-object v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/millennialmedia/android/NVASpeechKit;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 465
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder$1;-><init>(Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 480
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSpeechKit(Lcom/millennialmedia/android/NVASpeechKit;)V
    .locals 0
    .param p1, "speechKit"    # Lcom/millennialmedia/android/NVASpeechKit;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/millennialmedia/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/millennialmedia/android/NVASpeechKit;

    .line 491
    return-void
.end method
