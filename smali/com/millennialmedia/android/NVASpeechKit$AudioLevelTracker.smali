.class Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/NVASpeechKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioLevelTracker"
.end annotation


# static fields
.field private static final MAX:D = 80.0

.field private static final MIN:D = 40.0

.field private static final NORMALIZE_FACTOR:D = 4.004004004004004

.field private static final SCALE:D = 9.99


# instance fields
.field audioLevel:D

.field audioLevelCount:I

.field averageLevel:D

.field isTrackingAudioSample:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 127
    return-void
.end method

.method static synthetic access$100(D)D
    .locals 2
    .param p0, "x0"    # D

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->normalize(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static normalize(D)D
    .locals 6
    .param p0, "level"    # D

    .prologue
    .line 157
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    sub-double v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide v4, 0x40100419a0290042L    # 4.004004004004004

    div-double v0, v2, v4

    .line 161
    .local v0, "normalized":D
    const-wide v2, 0x4023fae147ae147bL    # 9.99

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public isTrackingAudioSample()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 133
    iput v2, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    .line 134
    iput-boolean v2, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    .line 135
    return-void
.end method

.method public startTrackingAudioSample()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->reset()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    .line 142
    return-void
.end method

.method public update(D)Z
    .locals 11
    .param p1, "level"    # D

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-wide v0, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 173
    .local v0, "oldAverage":D
    iget-wide v2, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    .line 174
    .local v2, "oldLevel":D
    iput-wide p1, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    .line 175
    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    .line 176
    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v6, v5

    mul-double/2addr v6, v0

    add-double/2addr v6, p1

    iget v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevelCount:I

    int-to-double v8, v5

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->averageLevel:D

    .line 178
    iget-boolean v5, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-eqz v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-wide v6, p0, Lcom/millennialmedia/android/NVASpeechKit$AudioLevelTracker;->audioLevel:D

    cmpl-double v5, v6, v2

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
