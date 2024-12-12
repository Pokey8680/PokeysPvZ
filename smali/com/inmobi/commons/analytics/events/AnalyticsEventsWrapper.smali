.class public final Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
.super Ljava/lang/Object;
.source "AnalyticsEventsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMItemType;,
        Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;
    }
.end annotation


# static fields
.field private static a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

.field private static c:Z


# instance fields
.field private b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 257
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "IllegalArgumentException"

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 268
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->startSession(Ljava/lang/String;Ljava/util/Map;)V

    .line 275
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 271
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "[InMobi]-[Analytics]-4.4.3"

    const-string v1, "Please call InMobi.initialize or startSession before calling any events API"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
    .locals 3

    .prologue
    .line 72
    const-class v1, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getWebviewUserAgent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setWebviewUserAgent(Ljava/lang/String;)V

    .line 75
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    .line 78
    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->startInstance()Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;

    .line 80
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;

    invoke-static {}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    move-result-object v2

    iput-object v2, v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    .line 82
    sget-object v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a:Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isEventsUser()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    return v0
.end method

.method public static setIsEventsUser()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->c:Z

    .line 35
    return-void
.end method


# virtual methods
.method public beginSection(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p2, :cond_1

    .line 143
    const-string v0, "arguments cannot be null"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/inmobi/commons/analytics/db/FunctionLevelBegin;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/util/Map;)V

    .line 151
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "Begin Section Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endSection(ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    if-nez p2, :cond_1

    .line 178
    const-string v0, "arguments cannot be null"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/analytics/db/FunctionLevelEnd;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper$IMSectionStatus;Ljava/util/Map;)V

    .line 186
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "End Section Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public endSession(Ljava/util/Map;)V
    .locals 3
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
    .line 119
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionEndSession;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/inmobi/commons/analytics/db/FunctionEndSession;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 120
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "End Session Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startSession(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "appid cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_1
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionStartSession;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionStartSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "Init exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    :cond_0
    const-string v0, "arguments cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionTagEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "Tag Event Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public tagTransactionManually(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 204
    if-nez p1, :cond_1

    .line 205
    const-string v0, "transaction intent cannot be null or empty"

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a(Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/inmobi/commons/analytics/db/FunctionTagTransaction;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 213
    iget-object v1, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->addElement(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/inmobi/commons/analytics/events/AnalyticsEventsWrapper;->b:Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEventsQueue;->processFunctions()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "[InMobi]-[Analytics]-4.4.3"

    const-string v2, "Tag Transaction Manually Exception"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
