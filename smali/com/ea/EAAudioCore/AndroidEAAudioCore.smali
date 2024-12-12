.class public Lcom/ea/EAAudioCore/AndroidEAAudioCore;
.super Ljava/lang/Object;
.source "AndroidEAAudioCore.java"


# static fields
.field public static sAudioTrack:Landroid/media/AudioTrack;

.field private static sInit:Z

.field private static sIsOtherMusicPlaying:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    .line 159
    const/4 v0, -0x1

    sput v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Init(Landroid/media/AudioTrack;IIII)V
.end method

.method private static native Release()V
.end method

.method public static Shutdown()V
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 145
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 147
    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Release()V

    .line 148
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    .line 149
    const/4 v0, -0x1

    sput v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    .line 151
    :cond_0
    return-void
.end method

.method public static Startup()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    .line 17
    .local v0, "channels":I
    invoke-static {v0}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    .line 18
    return-void
.end method

.method public static Startup(I)V
    .locals 9
    .param p0, "channels"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 24
    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-nez v0, :cond_2

    .line 27
    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    .line 28
    const/4 p0, 0x2

    .line 30
    :cond_0
    invoke-static {v1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v2

    .line 32
    .local v2, "samplerate":I
    const/16 v3, 0xc

    .line 33
    .local v3, "channelConfig":I
    if-ne p0, v6, :cond_1

    .line 34
    const/4 v3, 0x4

    .line 36
    :cond_1
    const/4 v4, 0x2

    .line 37
    .local v4, "format":I
    const/4 v7, 0x2

    .line 38
    .local v7, "sizeofShort":I
    const/4 v5, 0x0

    .line 41
    .local v5, "bufsize":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 42
    new-instance v0, Landroid/media/AudioTrack;

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    .line 45
    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    mul-int v1, v7, p0

    div-int v1, v5, v1

    sget v8, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    invoke-static {v0, v1, p0, v2, v8}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Init(Landroid/media/AudioTrack;IIII)V

    .line 48
    sput-boolean v6, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    .line 50
    .end local v2    # "samplerate":I
    .end local v3    # "channelConfig":I
    .end local v4    # "format":I
    .end local v5    # "bufsize":I
    .end local v7    # "sizeofShort":I
    :cond_2
    return-void
.end method

.method public static Startup(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "channels"    # I

    .prologue
    .line 88
    sget-boolean v1, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-nez v1, :cond_0

    .line 91
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 93
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const/4 v1, 0x0

    sput v1, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    .line 99
    :goto_0
    invoke-static {p1}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    .line 102
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void

    .line 96
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    const/4 v1, 0x1

    sput v1, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    goto :goto_0
.end method
