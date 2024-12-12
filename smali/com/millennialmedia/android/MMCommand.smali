.class Lcom/millennialmedia/android/MMCommand;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MM_BANNER:Ljava/lang/String; = "MMBanner"

.field private static final MM_CACHED_VIDEO:Ljava/lang/String; = "MMCachedVideo"

.field private static final MM_CALENDAR:Ljava/lang/String; = "MMCalendar"

.field private static final MM_DEVICE:Ljava/lang/String; = "MMDevice"

.field private static final MM_INLINE_VIDEO:Ljava/lang/String; = "MMInlineVideo"

.field private static final MM_INTERSTITIAL:Ljava/lang/String; = "MMInterstitial"

.field private static final MM_MEDIA:Ljava/lang/String; = "MMMedia"

.field private static final MM_NOTIFICATION:Ljava/lang/String; = "MMNotification"

.field private static final MM_SPEECHKIT:Ljava/lang/String; = "MMSpeechkit"

.field private static final TAG:Ljava/lang/String; = "MMCommand"


# instance fields
.field private arguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bridgeService:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private serviceMethod:Ljava/lang/String;

.field private webViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/millennialmedia/android/BridgeMMBanner;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMBanner;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addBannerBridge(Lcom/millennialmedia/android/BridgeMMBanner;)V

    .line 33
    new-instance v0, Lcom/millennialmedia/android/BridgeMMCachedVideo;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMCachedVideo;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addCachedVideoBridge(Lcom/millennialmedia/android/BridgeMMCachedVideo;)V

    .line 34
    new-instance v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMCalendar;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addCalendarBridge(Lcom/millennialmedia/android/BridgeMMCalendar;)V

    .line 35
    new-instance v0, Lcom/millennialmedia/android/BridgeMMDevice;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMDevice;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addDeviceBridge(Lcom/millennialmedia/android/BridgeMMDevice;)V

    .line 36
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMInlineVideo;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addInlineVideoBridge(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V

    .line 37
    new-instance v0, Lcom/millennialmedia/android/BridgeMMInterstitial;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addInterstitialBridge(Lcom/millennialmedia/android/BridgeMMInterstitial;)V

    .line 38
    new-instance v0, Lcom/millennialmedia/android/BridgeMMMedia;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMMedia;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addMediaBridge(Lcom/millennialmedia/android/BridgeMMMedia;)V

    .line 39
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMNotification;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addNotificationBridge(Lcom/millennialmedia/android/BridgeMMNotification;)V

    .line 40
    new-instance v0, Lcom/millennialmedia/android/BridgeMMSpeechkit;

    invoke-direct {v0}, Lcom/millennialmedia/android/BridgeMMSpeechkit;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->addSpeechkitBridge(Lcom/millennialmedia/android/BridgeMMSpeechkit;)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/millennialmedia/android/MMWebView;Ljava/lang/String;)V
    .locals 13
    .param p1, "webView"    # Lcom/millennialmedia/android/MMWebView;
    .param p2, "uriString"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    .line 68
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 69
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "components":[Ljava/lang/String;
    array-length v9, v1

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 96
    .end local v1    # "components":[Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v1    # "components":[Ljava/lang/String;
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v9, 0x0

    aget-object v9, v1, v9

    iput-object v9, p0, Lcom/millennialmedia/android/MMCommand;->bridgeService:Ljava/lang/String;

    .line 74
    const/4 v9, 0x1

    aget-object v9, v1, v9

    iput-object v9, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    .line 77
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    .line 78
    const/16 v9, 0x3f

    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "queryString":Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 81
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 82
    .local v5, "param":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "subComponents":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    .line 84
    iget-object v9, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "callback"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "queryString":Ljava/lang/String;
    .end local v7    # "subComponents":[Ljava/lang/String;
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "MMCommand"

    const-string v10, "Exception while executing javascript call %s "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMCommand;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/MMCommand;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    return-object v0
.end method

.method private getBridgeService(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSObject;
    .locals 2
    .param p1, "bridgeName"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "mmjsObj":Lcom/millennialmedia/android/MMJSObject;
    if-eqz p1, :cond_0

    .line 188
    const-string v1, "MMBanner"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getBannerBridge()Lcom/millennialmedia/android/BridgeMMBanner;

    move-result-object v0

    .line 209
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    const-string v1, "MMCachedVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getCachedVideoBridge()Lcom/millennialmedia/android/BridgeMMCachedVideo;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_2
    const-string v1, "MMCalendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getCalendarBridge()Lcom/millennialmedia/android/BridgeMMCalendar;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_3
    const-string v1, "MMDevice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getDeviceBridge()Lcom/millennialmedia/android/BridgeMMDevice;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_4
    const-string v1, "MMInlineVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getInlineVideoBridge()Lcom/millennialmedia/android/BridgeMMInlineVideo;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_5
    const-string v1, "MMInterstitial"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 199
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getInterstitialBridge()Lcom/millennialmedia/android/BridgeMMInterstitial;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_6
    const-string v1, "MMMedia"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 201
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getMediaBridge()Lcom/millennialmedia/android/BridgeMMMedia;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_7
    const-string v1, "MMNotification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getNotificationBridge()Lcom/millennialmedia/android/BridgeMMNotification;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_8
    const-string v1, "MMSpeechkit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    invoke-static {}, Lcom/millennialmedia/android/ComponentRegistry;->getSpeechkitBridge()Lcom/millennialmedia/android/BridgeMMSpeechkit;

    move-result-object v0

    goto :goto_0
.end method

.method private getBridgeStrippedClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->bridgeService:Ljava/lang/String;

    .line 181
    .local v0, "preStripped":Ljava/lang/String;
    const-string v1, "Bridge"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method isResizeCommand()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "resize"

    iget-object v1, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, "response":Lcom/millennialmedia/android/MMJSResponse;
    :try_start_0
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->bridgeService:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_6

    .line 109
    :try_start_1
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/android/MMWebView;

    .line 110
    .local v4, "webView":Lcom/millennialmedia/android/MMWebView;
    if-eqz v4, :cond_0

    .line 111
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->bridgeService:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/millennialmedia/android/MMCommand;->getBridgeService(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSObject;

    move-result-object v3

    .line 112
    .local v3, "service":Lcom/millennialmedia/android/MMJSObject;
    if-eqz v3, :cond_5

    .line 113
    invoke-virtual {v4}, Lcom/millennialmedia/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/millennialmedia/android/MMJSObject;->setContext(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/MMJSObject;->setMMWebView(Lcom/millennialmedia/android/MMWebView;)V

    .line 115
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v4, v6}, Lcom/millennialmedia/android/MMWebView;->updateArgumentsWithSettings(Ljava/util/Map;)V

    .line 120
    const/4 v4, 0x0

    .line 121
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->arguments:Ljava/util/Map;

    invoke-virtual {v3, v6, v7}, Lcom/millennialmedia/android/MMJSObject;->executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 143
    .end local v3    # "service":Lcom/millennialmedia/android/MMJSObject;
    .end local v4    # "webView":Lcom/millennialmedia/android/MMWebView;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 144
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/MMWebView;

    .line 145
    .local v5, "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    if-eqz v5, :cond_4

    .line 146
    if-nez v2, :cond_1

    .line 147
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 150
    :cond_1
    iget-object v6, v2, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 151
    iget-object v6, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    iput-object v6, v2, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 152
    :cond_2
    iget-object v6, v2, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->getBridgeStrippedClassName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    .line 156
    :cond_3
    move-object v1, v2

    .line 158
    .local v1, "resp":Lcom/millennialmedia/android/MMJSResponse;
    new-instance v6, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v6, p0, v5, v1}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V

    invoke-static {v6}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 176
    .end local v1    # "resp":Lcom/millennialmedia/android/MMJSResponse;
    .end local v5    # "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    :cond_4
    return-void

    .line 124
    .restart local v3    # "service":Lcom/millennialmedia/android/MMJSObject;
    .restart local v4    # "webView":Lcom/millennialmedia/android/MMWebView;
    :cond_5
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->bridgeService:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 129
    .end local v3    # "service":Lcom/millennialmedia/android/MMJSObject;
    .end local v4    # "webView":Lcom/millennialmedia/android/MMWebView;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MMCommand"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while executing javascript call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected exception, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    goto/16 :goto_0

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v6, "The service or service method was not defined."

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto/16 :goto_0

    .line 143
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->callback:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 144
    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->webViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/MMWebView;

    .line 145
    .restart local v5    # "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    if-eqz v5, :cond_a

    .line 146
    if-nez v2, :cond_7

    .line 147
    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    invoke-static {v7}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v2

    .line 150
    :cond_7
    iget-object v7, v2, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    if-nez v7, :cond_8

    .line 151
    iget-object v7, p0, Lcom/millennialmedia/android/MMCommand;->serviceMethod:Ljava/lang/String;

    iput-object v7, v2, Lcom/millennialmedia/android/MMJSResponse;->methodName:Ljava/lang/String;

    .line 152
    :cond_8
    iget-object v7, v2, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 153
    invoke-direct {p0}, Lcom/millennialmedia/android/MMCommand;->getBridgeStrippedClassName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/millennialmedia/android/MMJSResponse;->className:Ljava/lang/String;

    .line 156
    :cond_9
    move-object v1, v2

    .line 158
    .restart local v1    # "resp":Lcom/millennialmedia/android/MMJSResponse;
    new-instance v7, Lcom/millennialmedia/android/MMCommand$1;

    invoke-direct {v7, p0, v5, v1}, Lcom/millennialmedia/android/MMCommand$1;-><init>(Lcom/millennialmedia/android/MMCommand;Lcom/millennialmedia/android/MMWebView;Lcom/millennialmedia/android/MMJSResponse;)V

    invoke-static {v7}, Lcom/millennialmedia/android/MMSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 143
    .end local v1    # "resp":Lcom/millennialmedia/android/MMJSResponse;
    .end local v5    # "webViewCallback":Lcom/millennialmedia/android/MMWebView;
    :cond_a
    throw v6
.end method
