.class Lcom/millennialmedia/android/ComponentRegistry;
.super Ljava/lang/Object;
.source "ComponentRegistry.java"


# static fields
.field static bannerBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMBanner;",
            ">;"
        }
    .end annotation
.end field

.field static cachedVideoBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMCachedVideo;",
            ">;"
        }
    .end annotation
.end field

.field static calendarBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMCalendar;",
            ">;"
        }
    .end annotation
.end field

.field static deviceBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMDevice;",
            ">;"
        }
    .end annotation
.end field

.field static examples:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/ExampleComponent;",
            ">;"
        }
    .end annotation
.end field

.field static inlineVideoBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMInlineVideo;",
            ">;"
        }
    .end annotation
.end field

.field static interstitialBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field static loggingComponents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/MMLog$LoggingComponent;",
            ">;"
        }
    .end annotation
.end field

.field static mediaBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMMedia;",
            ">;"
        }
    .end annotation
.end field

.field static notificationBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMNotification;",
            ">;"
        }
    .end annotation
.end field

.field static speechkitBridges:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/millennialmedia/android/BridgeMMSpeechkit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->examples:Ljava/util/Stack;

    .line 28
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->bannerBridges:Ljava/util/Stack;

    .line 29
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->cachedVideoBridges:Ljava/util/Stack;

    .line 30
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->calendarBridges:Ljava/util/Stack;

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->deviceBridges:Ljava/util/Stack;

    .line 32
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->inlineVideoBridges:Ljava/util/Stack;

    .line 33
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->interstitialBridges:Ljava/util/Stack;

    .line 34
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->mediaBridges:Ljava/util/Stack;

    .line 35
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->notificationBridges:Ljava/util/Stack;

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->speechkitBridges:Ljava/util/Stack;

    .line 37
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/ComponentRegistry;->loggingComponents:Ljava/util/Stack;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBannerBridge(Lcom/millennialmedia/android/BridgeMMBanner;)V
    .locals 1
    .param p0, "bannerBridge"    # Lcom/millennialmedia/android/BridgeMMBanner;

    .prologue
    .line 56
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->bannerBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method static addCachedVideoBridge(Lcom/millennialmedia/android/BridgeMMCachedVideo;)V
    .locals 1
    .param p0, "cachedVideoBridge"    # Lcom/millennialmedia/android/BridgeMMCachedVideo;

    .prologue
    .line 71
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->cachedVideoBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method static addCalendarBridge(Lcom/millennialmedia/android/BridgeMMCalendar;)V
    .locals 1
    .param p0, "calendarBridge"    # Lcom/millennialmedia/android/BridgeMMCalendar;

    .prologue
    .line 86
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->calendarBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method static addDeviceBridge(Lcom/millennialmedia/android/BridgeMMDevice;)V
    .locals 1
    .param p0, "deviceBridge"    # Lcom/millennialmedia/android/BridgeMMDevice;

    .prologue
    .line 101
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->deviceBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method static addExample(Lcom/millennialmedia/android/ExampleComponent;)V
    .locals 1
    .param p0, "testComponent"    # Lcom/millennialmedia/android/ExampleComponent;

    .prologue
    .line 41
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->examples:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method static addInlineVideoBridge(Lcom/millennialmedia/android/BridgeMMInlineVideo;)V
    .locals 1
    .param p0, "inlineVideoBridge"    # Lcom/millennialmedia/android/BridgeMMInlineVideo;

    .prologue
    .line 116
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->inlineVideoBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static addInterstitialBridge(Lcom/millennialmedia/android/BridgeMMInterstitial;)V
    .locals 1
    .param p0, "interstitialBridge"    # Lcom/millennialmedia/android/BridgeMMInterstitial;

    .prologue
    .line 131
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->interstitialBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method static addLoggingComponent(Lcom/millennialmedia/android/MMLog$LoggingComponent;)V
    .locals 1
    .param p0, "loggingComponent"    # Lcom/millennialmedia/android/MMLog$LoggingComponent;

    .prologue
    .line 191
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->loggingComponents:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method static addMediaBridge(Lcom/millennialmedia/android/BridgeMMMedia;)V
    .locals 1
    .param p0, "mediaBridge"    # Lcom/millennialmedia/android/BridgeMMMedia;

    .prologue
    .line 146
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->mediaBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method static addNotificationBridge(Lcom/millennialmedia/android/BridgeMMNotification;)V
    .locals 1
    .param p0, "notificationBridge"    # Lcom/millennialmedia/android/BridgeMMNotification;

    .prologue
    .line 161
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->notificationBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method static addSpeechkitBridge(Lcom/millennialmedia/android/BridgeMMSpeechkit;)V
    .locals 1
    .param p0, "speechkitBridge"    # Lcom/millennialmedia/android/BridgeMMSpeechkit;

    .prologue
    .line 176
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->speechkitBridges:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method static getBannerBridge()Lcom/millennialmedia/android/BridgeMMBanner;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->bannerBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMBanner;

    return-object v0
.end method

.method static getCachedVideoBridge()Lcom/millennialmedia/android/BridgeMMCachedVideo;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->cachedVideoBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMCachedVideo;

    return-object v0
.end method

.method static getCalendarBridge()Lcom/millennialmedia/android/BridgeMMCalendar;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->calendarBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMCalendar;

    return-object v0
.end method

.method private static getComponent(Ljava/util/Stack;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Stack",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "components":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static getDeviceBridge()Lcom/millennialmedia/android/BridgeMMDevice;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->deviceBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMDevice;

    return-object v0
.end method

.method static getExample()Lcom/millennialmedia/android/ExampleComponent;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->examples:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/ExampleComponent;

    return-object v0
.end method

.method static getInlineVideoBridge()Lcom/millennialmedia/android/BridgeMMInlineVideo;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->inlineVideoBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMInlineVideo;

    return-object v0
.end method

.method static getInterstitialBridge()Lcom/millennialmedia/android/BridgeMMInterstitial;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->interstitialBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMInterstitial;

    return-object v0
.end method

.method static getLoggingComponent()Lcom/millennialmedia/android/MMLog$LoggingComponent;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->loggingComponents:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMLog$LoggingComponent;

    return-object v0
.end method

.method static getMediaBridge()Lcom/millennialmedia/android/BridgeMMMedia;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->mediaBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMMedia;

    return-object v0
.end method

.method static getNotificationBridge()Lcom/millennialmedia/android/BridgeMMNotification;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->notificationBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMNotification;

    return-object v0
.end method

.method static getSpeechkitBridge()Lcom/millennialmedia/android/BridgeMMSpeechkit;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->speechkitBridges:Ljava/util/Stack;

    invoke-static {v0}, Lcom/millennialmedia/android/ComponentRegistry;->getComponent(Ljava/util/Stack;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/BridgeMMSpeechkit;

    return-object v0
.end method

.method static removeBannerBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 66
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->bannerBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 67
    return-void
.end method

.method static removeCachedVideoBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 81
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->cachedVideoBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 82
    return-void
.end method

.method static removeCalendarBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 96
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->calendarBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 97
    return-void
.end method

.method private static removeComponent(ZLjava/util/Stack;)V
    .locals 2
    .param p0, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/Stack",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "components":Ljava/util/Stack;, "Ljava/util/Stack<TT;>;"
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p0, :cond_0

    .line 223
    :cond_2
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method static removeDeviceBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 111
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->deviceBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 112
    return-void
.end method

.method static removeExample(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 51
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->examples:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 52
    return-void
.end method

.method static removeInlineVideoBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 126
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->inlineVideoBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 127
    return-void
.end method

.method static removeInterstitialBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 141
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->interstitialBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 142
    return-void
.end method

.method static removeLoggingComponent(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 201
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->loggingComponents:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 202
    return-void
.end method

.method static removeMediaBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 156
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->mediaBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 157
    return-void
.end method

.method static removeNotificationBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 171
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->notificationBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 172
    return-void
.end method

.method static removeSpeechkitBridge(Z)V
    .locals 1
    .param p0, "force"    # Z

    .prologue
    .line 186
    sget-object v0, Lcom/millennialmedia/android/ComponentRegistry;->speechkitBridges:Ljava/util/Stack;

    invoke-static {p0, v0}, Lcom/millennialmedia/android/ComponentRegistry;->removeComponent(ZLjava/util/Stack;)V

    .line 187
    return-void
.end method
