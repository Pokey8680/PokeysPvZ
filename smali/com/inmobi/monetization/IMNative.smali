.class public Lcom/inmobi/monetization/IMNative;
.super Ljava/lang/Object;
.source "IMNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/IMNative$a;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/monetization/internal/TrackerView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/inmobi/monetization/IMNativeListener;

.field private g:Landroid/os/Handler;

.field private h:Lcom/inmobi/monetization/internal/NativeAdRequest;

.field private i:Z

.field private j:Lcom/inmobi/monetization/IMNative$a;

.field private k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 29
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 32
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 37
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 266
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 56
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/inmobi/monetization/IMNative;->a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 57
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 29
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 32
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 37
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 266
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 46
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create an instance of native ad with valid appId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/IMNative;->a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 52
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 29
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 32
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 37
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 266
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 40
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private declared-synchronized a()Lcom/inmobi/monetization/IMNative$a;
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/inmobi/monetization/IMNative$a;)V
    .locals 1

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/internal/objects/NativeAd;

    invoke-direct {v0, v1, v1, v1}, Lcom/inmobi/monetization/internal/objects/NativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 71
    new-instance v0, Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 73
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/monetization/IMNative;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public attachToView(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 89
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please load a native ad before attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please pass a valid view to attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    .line 94
    :try_start_1
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please pass a valid view to attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 98
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Ad is already attached"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->c:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_5

    .line 103
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 105
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$b;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/IMNative$b;-><init>(Lcom/inmobi/monetization/IMNative;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0

    .line 126
    :cond_5
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot attach an ad which is not ready or detached from view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public detachFromView()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 142
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please load a native ad before detach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 147
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 149
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMNative$c;-><init>(Lcom/inmobi/monetization/IMNative;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 175
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->e:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0

    .line 178
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach the native ad view before calling detach"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 190
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot handle click, native ad not loaded or detached from view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 195
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 197
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$d;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/IMNative$d;-><init>(Lcom/inmobi/monetization/IMNative;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach to view before handling any events"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 234
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {}, Lcom/inmobi/androidsdk/carb/CARB;->getInstance()Lcom/inmobi/androidsdk/carb/CARB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/carb/CARB;->startCarb()V

    .line 240
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->printPublisherTestId()V

    .line 241
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 243
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Loading Native Ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 245
    invoke-static {}, Lcom/inmobi/monetization/internal/NativeAdsController;->getInstance()Lcom/inmobi/monetization/internal/NativeAdsController;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v3, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/NativeAdsController;->getAd(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;)V

    goto :goto_0

    .line 247
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_4

    .line 249
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Ad is already loading. Please wait"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    if-eq v0, v1, :cond_0

    .line 253
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Loading native ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_5

    .line 256
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMNative;->detachFromView()V

    .line 258
    :cond_5
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 259
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 260
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 261
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 262
    invoke-static {}, Lcom/inmobi/monetization/internal/NativeAdsController;->getInstance()Lcom/inmobi/monetization/internal/NativeAdsController;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v3, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/NativeAdsController;->getAd(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;)V

    goto/16 :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 344
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setKeywords(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Ref tag key cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    :cond_2
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "RefTag value cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method
