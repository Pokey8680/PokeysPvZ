.class public Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;
.super Ljava/lang/Object;
.source "AdTrackerWebViewLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;,
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$JSInterface;,
        Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$MyWebViewClient;
    }
.end annotation


# static fields
.field private static a:Landroid/webkit/WebView;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:J

.field private d:J

.field private e:Lcom/inmobi/commons/analytics/iat/impl/Goal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c:J

    .line 32
    iput-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    .line 46
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$d;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$d;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c:J

    return-wide v0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    return-wide p1
.end method

.method static synthetic a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 210
    .line 212
    new-instance v2, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;

    invoke-direct {v2}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;-><init>()V

    .line 214
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    move v4, v3

    move-object v0, v7

    move v1, v3

    .line 215
    :goto_0
    :try_start_1
    array-length v5, v6

    if-ge v4, v5, :cond_3

    .line 217
    aget-object v5, v6, v4

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v5, v3

    .line 218
    :goto_1
    array-length v9, v8

    if-ge v5, v9, :cond_2

    .line 220
    const-string v9, "err"

    aget-object v10, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    add-int/lit8 v9, v5, 0x1

    aget-object v9, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 224
    :cond_1
    const-string v9, "res"

    aget-object v10, v8, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 226
    add-int/lit8 v0, v5, 0x1

    aget-object v0, v8, v0

    goto :goto_2

    .line 215
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 230
    :cond_3
    invoke-static {v2, v1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;I)I

    .line 231
    invoke-static {v2, v0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;->a(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$e;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    const/16 v4, 0x138b

    if-ne v4, v1, :cond_5

    .line 236
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Webview Timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    move-object v7, v2

    .line 265
    :goto_4
    return-object v7

    .line 238
    :cond_5
    const/16 v4, 0x1389

    if-ne v4, v1, :cond_6

    .line 240
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid params passed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 259
    :catch_0
    move-exception v0

    move v6, v1

    .line 261
    :goto_5
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 262
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Check content Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 242
    :cond_6
    const/16 v4, 0x138a

    if-ne v4, v1, :cond_7

    .line 244
    :try_start_2
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLHTTP request not supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 246
    :cond_7
    const/16 v4, 0x138d

    if-ne v4, v1, :cond_8

    .line 248
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid JSON Response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 250
    :cond_8
    const/16 v4, 0x138c

    if-ne v4, v1, :cond_9

    .line 252
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Webview Server Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 254
    :cond_9
    const/16 v4, 0x1388

    if-ne v4, v1, :cond_4

    .line 256
    const-string v4, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Webview response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 259
    :catch_1
    move-exception v0

    move v6, v3

    goto/16 :goto_5
.end method

.method static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;J)J
    .locals 1

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 14

    .prologue
    .line 273
    .line 275
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v0, "iat_ids"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 278
    const-string v2, "errmsg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    const-string v2, "timetoLive"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 280
    const-string v3, "errcode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 282
    const/16 v1, 0x1770

    if-eq v6, v1, :cond_0

    .line 284
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 285
    const-string v0, "[InMobi]-[AdTracker]-4.4.3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to upload goal in webview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 291
    :cond_0
    sget-object v7, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_SUCCESS:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    iget-object v8, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->d:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    const/16 v1, 0x1771

    if-ne v6, v1, :cond_1

    .line 296
    const/4 v0, 0x0

    .line 298
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "IMAdTrackerStatusUpload"

    const-string v4, "iat_ids"

    invoke-static {v1, v3, v4, v0}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IMAdTrackerStatusUpload"

    const-string v3, "timetoLive"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/inmobi/commons/internal/FileOperations;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 303
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_FAILURE:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    iget-object v2, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x1a8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 304
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    const-string v2, "Failed to upload goal in webview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static isWebviewLoading()Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deinit(I)V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$a;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    return-void
.end method

.method public loadWebview(Lcom/inmobi/commons/analytics/iat/impl/Goal;)Z
    .locals 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;->e:Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 329
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$c;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$c;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 341
    :catch_0
    move-exception v0

    .line 343
    const-string v1, "[InMobi]-[AdTracker]-4.4.3"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerNetworkInterface;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$b;

    invoke-direct {v1, p0}, Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader$b;-><init>(Lcom/inmobi/commons/analytics/iat/impl/net/AdTrackerWebViewLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void
.end method
