.class Lcom/millennialmedia/android/MMWebView;
.super Landroid/webkit/WebView;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;,
        Lcom/millennialmedia/android/MMWebView$BannerGestureListener;,
        Lcom/millennialmedia/android/MMWebView$WebTouchListener;
    }
.end annotation


# static fields
.field static final JS_INTERFACE_NAME:Ljava/lang/String; = "interface"

.field static final PROPERTY_BANNER_TYPE:Ljava/lang/String; = "PROPERTY_BANNER_TYPE"

.field static final PROPERTY_EXPANDING:Ljava/lang/String; = "PROPERTY_EXPANDING"

.field static final PROPERTY_STATE:Ljava/lang/String; = "PROPERTY_STATE"

.field private static final TAG:Ljava/lang/String; = "MMWebView"


# instance fields
.field private _lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

.field creatorAdImplId:J

.field currentColor:I

.field currentUrl:Ljava/lang/String;

.field hadFirstRecordingCreation:Z

.field hadFirstSpeechKitCreation:Z

.field volatile isExpanding:Z

.field isSendingSize:Z

.field volatile isUserClosedResize:Z

.field volatile isVisible:Z

.field volatile mraidState:Ljava/lang/String;

.field oldHeight:I

.field oldWidth:I

.field volatile requiresPreAdSizeFix:Z

.field final tapDetector:Landroid/view/GestureDetector;

.field final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "internalId"    # J

    .prologue
    const/16 v1, -0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 60
    iput-boolean v7, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 547
    iput v1, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    .line 548
    iput v1, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    .line 895
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 1051
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 1065
    iput-boolean v6, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 71
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setWillNotDraw(Z)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 73
    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/MMWebView;->setVerticalScrollBarEnabled(Z)V

    .line 74
    new-instance v1, Lcom/millennialmedia/android/MMWebView$WebTouchListener;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMWebView$WebTouchListener;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    const-string v1, "loading"

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    .line 77
    const-string v1, "MMWebView"

    const-string v2, "Assigning WebView internal id: %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-wide/16 v2, 0x3ad7

    iget-wide v4, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setId(I)V

    .line 83
    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->hardwareAccelerationEnabled:Z

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 89
    :goto_0
    new-instance v1, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/MMWebView$MyWebChromeClient;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 91
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 94
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 96
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 99
    const-string v1, "MMWebView"

    const-string v2, "Disabling user gesture requirement for media playback"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 104
    :cond_0
    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 106
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMWebView$BannerGestureListener;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    .line 108
    return-void

    .line 86
    .end local v0    # "webSettings":Landroid/webkit/WebSettings;
    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMWebView;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->hasDefaultResizeParams()Z

    move-result v0

    return v0
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 500
    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/millennialmedia/android/MMWebView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInterstitial()Z
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getBanner()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsSamsungJBOpenGlFixNoAcceleration()Z
    .locals 3

    .prologue
    .line 206
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, "version":I
    const-string v1, "Nexus S"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "samsung"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 210
    :cond_0
    const/4 v1, 0x1

    .line 212
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method allowMicrophoneCreationCommands()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1072
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    if-eqz v1, :cond_1

    .line 1073
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->allowRecordingCommands()Z

    move-result v0

    .line 1076
    :cond_0
    :goto_0
    return v0

    .line 1075
    :cond_1
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 1076
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowRecordingCommands()Z
    .locals 1

    .prologue
    .line 1081
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method allowSpeechCreationCommands()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1058
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->allowRecordingCommands()Z

    move-result v0

    .line 1062
    :cond_0
    :goto_0
    return v0

    .line 1061
    :cond_1
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 1062
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 2
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 387
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/millennialmedia/android/MMWebView$3;

    invoke-direct {v1, p0, p1}, Lcom/millennialmedia/android/MMWebView$3;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 408
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v1

    goto :goto_0

    .line 412
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method canScroll()Z
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    return v0
.end method

.method disableAllAcceleration()V
    .locals 2

    .prologue
    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 195
    const-string v0, "MMWebView"

    const-string v1, "Disabling acceleration"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 198
    :cond_0
    return-void
.end method

.method enableHardwareAcceleration()V
    .locals 6

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->needsSamsungJBOpenGlFixNoAcceleration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 236
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "MMWebView"

    const-string v2, "Enabled hardwareAcceleration"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method enableSendingSize()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 1092
    return-void
.end method

.method enableSoftwareAcceleration()V
    .locals 6

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebView;->needsSamsungJBOpenGlFixNoAcceleration()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    :try_start_0
    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 221
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v1, "MMWebView"

    const-string v2, "Enable softwareAcceleration"

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method declared-synchronized getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 574
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 575
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 576
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 577
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v2, :cond_0

    .line 578
    check-cast v0, Lcom/millennialmedia/android/MMActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->acid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    iget-object v0, v0, Lcom/millennialmedia/android/HttpMMHeaders;->acid:Ljava/lang/String;

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "DEFAULT_AD_ID"

    goto :goto_0
.end method

.method declared-synchronized getAdViewOverlayView()Lcom/millennialmedia/android/AdViewOverlayView;
    .locals 2

    .prologue
    .line 615
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 616
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v1, :cond_0

    .line 617
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 615
    .end local v0    # "parent":Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getBanner()Lcom/millennialmedia/android/MMAdView;
    .locals 2

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 625
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v1, :cond_0

    .line 626
    check-cast v0, Lcom/millennialmedia/android/MMAdView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 624
    .end local v0    # "parent":Landroid/view/ViewParent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getLastHeaders()Lcom/millennialmedia/android/HttpMMHeaders;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    return-object v0
.end method

.method getMMAdView()Lcom/millennialmedia/android/MMAdView;
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMAdView;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 561
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMMLayout()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method isCurrentParent(J)Z
    .locals 9
    .param p1, "internalId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1000
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1001
    .local v0, "parent":Landroid/view/ViewParent;
    if-nez v0, :cond_0

    .line 1006
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v2

    .line 1003
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const-string v3, "MMWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id check for parent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " versus "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v1, v0

    check-cast v1, Lcom/millennialmedia/android/MMLayout;

    iget-object v1, v1, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v6, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    check-cast v0, Lcom/millennialmedia/android/MMLayout;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/millennialmedia/android/MMLayout;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-wide v4, v1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method isMraidResized()Z
    .locals 2

    .prologue
    .line 1019
    const-string v0, "resized"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOriginalUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isParentBannerAd()Z
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 434
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/millennialmedia/android/MMAdView;

    .line 436
    .end local v0    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 325
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MMWebView"

    const-string v2, "Error hit when calling through to loadDataWithBaseUrl"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->currentUrl:Ljava/lang/String;

    .line 592
    :cond_1
    const-string v0, "MMWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadUrl @@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0

    .line 600
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMWebView$6;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMWebView$6;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 160
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 163
    .local v0, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 165
    .local v3, "widthSize":I
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMeasuredHeight()I

    move-result v1

    .line 166
    .local v1, "measuredHeight":I
    if-nez v1, :cond_0

    .line 167
    move v1, v0

    .line 168
    :cond_0
    move v2, v3

    .line 172
    .local v2, "measuredWidth":I
    iget-boolean v4, p0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    if-eqz v4, :cond_1

    .line 173
    invoke-virtual {p0, v5, v5}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/MMWebView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPauseWebView()V
    .locals 5

    .prologue
    .line 635
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 637
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "onPause"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 638
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MMWebView"

    const-string v3, "No onPause()"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResumeWebView()V
    .locals 6

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 658
    .local v0, "adActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 665
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 669
    .end local v0    # "adActivity":Landroid/app/Activity;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 671
    :try_start_0
    const-class v3, Landroid/webkit/WebView;

    const-string v4, "onResume"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 672
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MMWebView"

    const-string v4, "No onResume()"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x1

    .line 963
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 964
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->setAdSize()V

    .line 975
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 976
    :cond_0
    new-instance v0, Lcom/millennialmedia/android/MMWebView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMWebView$7;-><init>(Lcom/millennialmedia/android/MMWebView;)V

    const-wide/16 v2, 0x320

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 988
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 989
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->requestFocus()Z

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/millennialmedia/android/MMWebView;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 253
    const-string v0, "MMWebView"

    const-string v1, "Ad clicked: action=%d x=%f y=%f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_2
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method removeFromParent()V
    .locals 2

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1013
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1015
    :cond_0
    return-void
.end method

.method resetSpeechKit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMSpeechkit;->releaseSpeechKit()Z

    .line 381
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 382
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 383
    return-void
.end method

.method setAdProperties()V
    .locals 3

    .prologue
    .line 947
    new-instance v1, Lcom/millennialmedia/android/AdProperties;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/AdProperties;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/AdProperties;->getAdProperties(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 950
    .local v0, "adProperties":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.setAdProperties("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method setAdSize()V
    .locals 3

    .prologue
    .line 956
    invoke-static {p0}, Lcom/millennialmedia/android/Utils;->getViewDimensions(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 957
    .local v0, "adSize":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:MMJS.sdk.setAdSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/millennialmedia/android/MMWebView;->currentColor:I

    .line 186
    if-nez p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->enableSoftwareAcceleration()V

    .line 189
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 190
    return-void
.end method

.method setLastHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 0
    .param p1, "lastHeaders"    # Lcom/millennialmedia/android/HttpMMHeaders;

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/millennialmedia/android/MMWebView;->_lastHeaders:Lcom/millennialmedia/android/HttpMMHeaders;

    .line 1036
    return-void
.end method

.method setMraidDefault()V
    .locals 1

    .prologue
    .line 884
    const-string v0, "javascript:MMJS.sdk.setState(\'default\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 885
    const-string v0, "default"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 887
    return-void
.end method

.method setMraidExpanded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 930
    const-string v0, "javascript:MMJS.sdk.setState(\'expanded\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 931
    const-string v0, "expanded"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 932
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstSpeechKitCreation:Z

    .line 933
    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->hadFirstRecordingCreation:Z

    .line 934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isSendingSize:Z

    .line 935
    return-void
.end method

.method setMraidHidden()V
    .locals 1

    .prologue
    .line 891
    const-string v0, "javascript:MMJS.sdk.setState(\'hidden\')"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 892
    const-string v0, "hidden"

    iput-object v0, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    .line 893
    return-void
.end method

.method setMraidPlacementTypeInline()V
    .locals 1

    .prologue
    .line 879
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'inline\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method setMraidPlacementTypeInterstitial()V
    .locals 1

    .prologue
    .line 874
    const-string v0, "javascript:MMJS.sdk.setPlacementType(\'interstitial\');"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method setMraidReady()V
    .locals 1

    .prologue
    .line 942
    const-string v0, "javascript:MMJS.sdk.ready();"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method declared-synchronized setMraidResize(Lcom/millennialmedia/android/DTOResizeParameters;)V
    .locals 4
    .param p1, "resizeParams"    # Lcom/millennialmedia/android/DTOResizeParameters;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->getMMAdView()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    .line 448
    .local v0, "adView":Lcom/millennialmedia/android/MMAdView;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 449
    const-string v1, "MMWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New DTOResizeParameters = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-eqz v0, :cond_0

    .line 452
    new-instance v1, Lcom/millennialmedia/android/MMWebView$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/millennialmedia/android/MMWebView$4;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/DTOResizeParameters;)V

    invoke-static {v1}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    .end local v0    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setMraidViewableHidden()V
    .locals 1

    .prologue
    .line 903
    const-string v0, "javascript:MMJS.sdk.setViewable(false)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 905
    return-void
.end method

.method setMraidViewableVisible()V
    .locals 1

    .prologue
    .line 913
    const-string v0, "javascript:MMJS.sdk.setViewable(true)"

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMWebView;->isVisible:Z

    .line 915
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 336
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "finalBaseUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 342
    move-object v0, p1

    .line 344
    .local v0, "content":Ljava/lang/String;
    invoke-static {p3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    invoke-static {p3, v0}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_1
    move-object v2, v0

    .line 351
    .local v2, "finalContent":Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 352
    const-string v3, "MMWebView"

    const-string v4, "Received ad with base url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "MMWebView"

    invoke-static {v3, p1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_2
    new-instance v3, Lcom/millennialmedia/android/MMWebView$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/millennialmedia/android/MMWebView$2;-><init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 347
    .end local v2    # "finalContent":Ljava/lang/String;
    :cond_3
    const-string v3, "MMWebView"

    const-string v4, "MMJS is not downloaded"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 7
    .param p1, "webContent"    # Ljava/lang/String;
    .param p2, "adUrl"    # Ljava/lang/String;
    .param p3, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    const/4 v6, 0x0

    .line 263
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 266
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 267
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "baseUrl":Ljava/lang/String;
    sget v3, Lcom/millennialmedia/android/MMSDK;->logLevel:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_2

    .line 270
    const-string v3, "MMWebView"

    const-string v4, "Received ad with base url %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, "MMWebView"

    invoke-static {v3, p1}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->isTransitionAnimated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0, p3}, Lcom/millennialmedia/android/MMWebView;->animateTransition(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 279
    :cond_3
    iget-boolean v3, p3, Lcom/millennialmedia/android/MMAdImpl;->ignoreDensityScaling:Z

    if-eqz v3, :cond_4

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "content":Ljava/lang/String;
    :goto_1
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MRaid;->hasMraidLocally(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/millennialmedia/android/MRaid;->injectMraidJs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_2
    move-object v2, v1

    .line 294
    .local v2, "finalContent":Ljava/lang/String;
    new-instance v3, Lcom/millennialmedia/android/MMWebView$1;

    invoke-direct {v3, p0, p3, v0, v2}, Lcom/millennialmedia/android/MMWebView$1;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 283
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "finalContent":Ljava/lang/String;
    :cond_4
    move-object v1, p1

    .restart local v1    # "content":Ljava/lang/String;
    goto :goto_1

    .line 289
    :cond_5
    const-string v3, "MMWebView"

    const-string v4, "MMJS is not downloaded"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method setmicrophoneAudioLevelChange(D)V
    .locals 3
    .param p1, "level"    # D

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneAudioLevelChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method setmicrophoneStateChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:MMJS.sdk.microphoneStateChange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MMWebView originally from("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") MRaidState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/webkit/WebView;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .param p1, "adImpl"    # Lcom/millennialmedia/android/MMAdImpl;

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    if-eqz p1, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    .line 511
    .local v1, "ad":Lcom/millennialmedia/android/MMAd;
    instance-of v3, v1, Lcom/millennialmedia/android/MMAdView;

    if-eqz v3, :cond_0

    .line 512
    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    move-object v2, v0

    .line 513
    .local v2, "adView":Lcom/millennialmedia/android/MMAdView;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/millennialmedia/android/MMWebView;->isUserClosedResize:Z

    .line 514
    new-instance v3, Lcom/millennialmedia/android/MMWebView$5;

    invoke-direct {v3, p0, v2}, Lcom/millennialmedia/android/MMWebView$5;-><init>(Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v3}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    .end local v1    # "ad":Lcom/millennialmedia/android/MMAd;
    .end local v2    # "adView":Lcom/millennialmedia/android/MMAdView;
    :cond_0
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method updateArgumentsWithSettings(Ljava/util/Map;)V
    .locals 4
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
    .line 423
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PROPERTY_BANNER_TYPE"

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMWebView;->isParentBannerAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "PROPERTY_STATE"

    iget-object v1, p0, Lcom/millennialmedia/android/MMWebView;->mraidState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v0, "PROPERTY_EXPANDING"

    iget-wide v2, p0, Lcom/millennialmedia/android/MMWebView;->creatorAdImplId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    return-void

    .line 423
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
