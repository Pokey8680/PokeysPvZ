.class Lcom/millennialmedia/android/BridgeMMMedia$Audio;
.super Ljava/lang/Object;
.source "BridgeMMMedia.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;,
        Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;
    }
.end annotation


# static fields
.field private static final MAX_SOUNDS:I = 0x4

.field private static sharedInstance:Lcom/millennialmedia/android/BridgeMMMedia$Audio;


# instance fields
.field private completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

.field completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/media/MediaPlayer$OnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;",
            ">;"
        }
    .end annotation
.end field

.field periodicUpdater:Ljava/lang/Runnable;

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicUpdater:Ljava/lang/Runnable;

    .line 730
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicUpdater:Ljava/lang/Runnable;

    .line 734
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    .line 736
    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/BridgeMMMedia$Audio;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static declared-synchronized sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 779
    const-class v1, Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    if-nez v0, :cond_0

    .line 780
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    .line 782
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedInstance:Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method addCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 743
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addPeriodicListener(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 766
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized isPlaying()Z
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 793
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 794
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer$OnCompletionListener;

    .line 795
    .local v1, "listener":Landroid/media/MediaPlayer$OnCompletionListener;
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 793
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/media/MediaPlayer$OnCompletionListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 799
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 800
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 801
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 803
    :cond_1
    monitor-exit p0

    return-void
.end method

.method declared-synchronized playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "loop"    # Z

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 810
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 813
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 814
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 815
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 816
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicUpdater:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    :goto_0
    :try_start_1
    const-string v1, "Audio playback started"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "BridgeMMMedia"

    const-string v2, "Exception in playAudio method"

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 853
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    .line 857
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$2;-><init>(Lcom/millennialmedia/android/BridgeMMMedia$Audio;Landroid/media/SoundPool;)V

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->testSample(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    :goto_0
    :try_start_1
    const-string v0, "Sound playback started"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 884
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method removeCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 754
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removePeriodicListener(Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/BridgeMMMedia$Audio$PeriodicListener;

    .prologue
    .line 771
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->periodicListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized stop()Lcom/millennialmedia/android/MMJSResponse;
    .locals 1

    .prologue
    .line 891
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->soundPool:Landroid/media/SoundPool;

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

    if-eqz v0, :cond_2

    .line 899
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;->release()V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->completionListener:Lcom/millennialmedia/android/BridgeMMMedia$Audio$OnLoadCompleteListener;

    .line 902
    :cond_2
    const-string v0, "Audio stopped"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
