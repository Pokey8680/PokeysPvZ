.class abstract Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.super Lcom/ea/nimble/Component;
.source "NimbleTrackingImplBase.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;,
        Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;
    }
.end annotation


# static fields
.field private static final DATA_VERSION_CURRENT:I = 0x3

.field private static final DEFAULT_MAX_QUEUE_LENGTH:I = 0x3

.field protected static final DEFAULT_POST_INTERVAL:D = 1.0

.field protected static final DEFAULT_REPOST_MULTIPLIER:D = 2.0

.field protected static final DEFAULT_RETRY_DELAY:D = 1.0

.field protected static final MAX_POST_RETRY_DELAY:D = 300.0

.field private static final MAX_QUEUED_EVENTS:I = 0x32

.field private static final MAX_QUEUED_SESSIONS:I = 0x32

.field protected static final NOW_POST_INTERVAL:D = 0.0

.field private static final ORIGIN_LOGIN_STATUS_STRING_AUTO_LOGGING_IN:Ljava/lang/String; = "autoLogin"

.field private static final ORIGIN_LOGIN_STATUS_STRING_LIVE_USER:Ljava/lang/String; = "live"

.field private static final ORIGIN_NOTIFICATION_LOGIN_STATUS_UPDATE_KEY_STATUS:Ljava/lang/String; = "STATUS"

.field private static final PERSISTENCE_CURRENT_SESSION_ID:Ljava/lang/String; = "currentSessionObject"

.field private static final PERSISTENCE_ENABLE_FLAG:Ljava/lang/String; = "trackingEnabledFlag"

.field private static final PERSISTENCE_EVENT_QUEUE_ID:Ljava/lang/String; = "eventQueue"

.field private static final PERSISTENCE_FIRST_SESSION_ID_NUMBER:Ljava/lang/String; = "firstSessionIDNumber"

.field private static final PERSISTENCE_LAST_SESSION_ID_NUMBER:Ljava/lang/String; = "lastSessionIDNumber"

.field private static final PERSISTENCE_LOGGED_IN_TO_ORIGIN_ID:Ljava/lang/String; = "loggedInToOrigin"

.field private static final PERSISTENCE_QUEUED_SESSIONS_ID:Ljava/lang/String; = "queuedSessionObjects"

.field private static final PERSISTENCE_SAVED_SESSION_ID_NUMBER:Ljava/lang/String; = "savedSession"

.field private static final PERSISTENCE_SESSION_DATA_ID:Ljava/lang/String; = "sessionData"

.field private static final PERSISTENCE_TOTAL_SESSION_COUNT:Ljava/lang/String; = "totalSessionCount"

.field private static final PERSISTENCE_TRACKING_ATTRIBUTES:Ljava/lang/String; = "trackingAttributes"

.field private static final PERSISTENCE_VERSION_ID:Ljava/lang/String; = "dataVersion"

.field private static final SESSION_FILE_FORMAT:Ljava/lang/String; = "%sSession%d"


# instance fields
.field protected m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

.field protected m_customSessionData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;",
            ">;"
        }
    .end annotation
.end field

.field private m_enable:Z

.field private m_firstSessionIDNumber:J

.field private m_isPostPending:Z

.field private m_isRequestInProgress:Z

.field private m_lastSessionIDNumber:J

.field protected m_loggedInToOrigin:Z

.field private m_maxQueueLength:I

.field private m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

.field private m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

.field private m_pendingEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_postInterval:D

.field protected m_postRetryDelay:D

.field private m_postTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

.field private m_sessionsToPost:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;"
        }
    .end annotation
.end field

.field protected m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

.field private m_totalSessions:J

.field protected m_trackingAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_pendingEvents:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    .line 131
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    .line 132
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    .line 134
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    .line 135
    new-instance v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 136
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    .line 137
    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    .line 138
    iput-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    .line 140
    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    .line 141
    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    .line 144
    const/4 v0, 0x3

    iput v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postIntervalTimerExpired(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onStartupRequestsFinished(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onOriginLoginStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onNetworkStatusChange()V

    return-void
.end method

.method static synthetic access$600(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .param p1, "x1"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .param p2, "x2"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    return-void
.end method

.method private addCurrentSessionObjectToBackOfQueue()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 1429
    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    .line 1430
    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 1432
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    if-lt v0, v1, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    invoke-direct {p0, v0, v2, v3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V

    .line 1442
    :goto_0
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    .line 1443
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private configureTrackingOnFirstInstall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 772
    const-string v3, "First Install. Look for App Settings to enable/disable tracking"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 777
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 778
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.ea.nimble.tracking.defaultEnable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "defaultTrackingEnableFlag":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 782
    const-string v3, "enable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 784
    const-string v3, "Default App Setting : Enable Tracking"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    .line 805
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "defaultTrackingEnableFlag":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 787
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "defaultTrackingEnableFlag":Ljava/lang/String;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string v3, "disable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    const-string v3, "Default App Setting : Disable Tracking"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 790
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "defaultTrackingEnableFlag":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 804
    :cond_2
    const-string v3, "Nimble"

    const-string v4, "WARNING! Cannot find valid TrackingEnable from AndroidManifest.xml"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dropExtraSessions()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1472
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    const-string v0, "Failed to drop enough sessions. Dropping sessions without checking canDropSession."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1475
    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Still unable to drop enough sessions. Remaining number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1480
    :cond_0
    return-void
.end method

.method private dropExtraSessions(Z)Z
    .locals 12
    .param p1, "checkIfCanDrop"    # Z

    .prologue
    .line 1502
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 1505
    const/4 v6, 0x1

    .line 1560
    :goto_0
    return v6

    .line 1507
    :cond_0
    const-string v6, "Current number of sessions (%d) has reached maximum (%d). Removing old sessions."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 1508
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1507
    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v0, "currentObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    .local v2, "currentSessionID":J
    :goto_1
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    cmp-long v6, v2, v6

    if-gtz v6, :cond_8

    .line 1516
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    sub-long v4, v2, v6

    .line 1517
    .local v4, "sessionIndex":J
    iget-object v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 1519
    iget-object v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    long-to-int v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 1530
    .local v1, "nextObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {p0, v6, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1533
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    :goto_2
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_1

    .line 1523
    .end local v1    # "nextObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-result-object v1

    .line 1524
    .restart local v1    # "nextObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    if-nez v1, :cond_1

    goto :goto_2

    .line 1538
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->canDropSession(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1540
    :cond_5
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-direct {p0, v0, v6, v7}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropSessions(Ljava/util/ArrayList;J)V

    .line 1542
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1543
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    .line 1546
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    .line 1547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1550
    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1554
    .end local v1    # "nextObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .end local v4    # "sessionIndex":J
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->canDropSession(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1556
    :cond_9
    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    invoke-direct {p0, v0, v6, v7}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropSessions(Ljava/util/ArrayList;J)V

    .line 1559
    :cond_a
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    .line 1560
    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    const-wide/16 v8, 0x32

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private dropSessions(Ljava/util/ArrayList;J)V
    .locals 8
    .param p2, "currentSessionID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1484
    .local p1, "currentObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1486
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1487
    int-to-long v4, v0

    sub-long v2, p2, v4

    .line 1488
    .local v2, "sessionID":J
    invoke-direct {p0, v2, v3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v4}, Lcom/ea/nimble/PersistenceService;->removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1490
    .end local v2    # "sessionID":J
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1492
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    .line 1494
    :cond_1
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 1495
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    .line 1496
    return-void
.end method

.method private fillSessionsToPost()V
    .locals 8

    .prologue
    .line 1449
    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_0
    iget v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    if-ge v2, v4, :cond_0

    .line 1451
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    int-to-long v6, v2

    add-long v0, v4, v6

    .line 1454
    .local v0, "currentID":J
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1468
    .end local v0    # "currentID":J
    :cond_0
    return-void

    .line 1456
    .restart local v0    # "currentID":J
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-result-object v3

    .line 1458
    .local v3, "sessionObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    if-eqz v3, :cond_2

    .line 1460
    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    .line 1449
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    :cond_2
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    goto :goto_1
.end method

.method private getFilenameForSessionID(J)Ljava/lang/String;
    .locals 5
    .param p1, "sessionID"    # J

    .prologue
    const/4 v4, 0x0

    .line 1401
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1403
    const-string v0, "Trying to find the filename for an invalid sessionID!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    const/4 v0, 0x0

    .line 1408
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%sSession%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAbleToPostEvent(Z)Z
    .locals 4
    .param p1, "runInBackground"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1008
    iget-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-nez v2, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    if-nez p1, :cond_3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1024
    :cond_2
    const-string v1, "isAbleToPostEvent - return because the app is in background"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1029
    :cond_3
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v2, v3, :cond_4

    .line 1033
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1035
    const-string v1, "Network status not OK for event post. Adding receiver for network status change."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 1040
    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1059
    const-string v1, "nimble.notification.networkStatusChanged"

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 1066
    :cond_4
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1068
    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    .line 1069
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1076
    goto :goto_0
.end method

.method private killPostTimer()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 307
    :cond_0
    return-void
.end method

.method private loadSessionFromFile(J)Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .locals 5
    .param p1, "sessionID"    # J

    .prologue
    const/4 v2, 0x0

    .line 1379
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 1381
    .local v1, "savingPersistenceDoc":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_1

    .line 1383
    const-string v3, "savedSession"

    invoke-virtual {v1, v3}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1384
    .local v0, "persistenceValue":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-ne v3, v4, :cond_0

    .line 1386
    check-cast v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 1395
    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    :goto_0
    return-object v0

    .restart local v0    # "persistenceValue":Ljava/io/Serializable;
    :cond_0
    move-object v0, v2

    .line 1390
    goto :goto_0

    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    :cond_1
    move-object v0, v2

    .line 1395
    goto :goto_0
.end method

.method private logEvent(Lcom/ea/nimble/tracking/Tracking$Event;Z)V
    .locals 9
    .param p1, "event"    # Lcom/ea/nimble/tracking/Tracking$Event;
    .param p2, "sessionEndEvent"    # Z

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;

    move-result-object v1

    .line 209
    .local v1, "newEvents":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 211
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 213
    .local v0, "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v4, v4, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v4, "Logged event, %s: \n"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    .end local v0    # "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    .line 218
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    if-nez v3, :cond_2

    .line 220
    :cond_1
    invoke-direct {p0, v6}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    .line 226
    :cond_2
    move v2, p2

    .line 227
    .local v2, "postNow":Z
    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v3, v3, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v8, :cond_3

    .line 229
    const-string v3, "Current number of events (%d) has reached maximum (%d). Posting event queue now."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v5, v5, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    .line 230
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 229
    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/4 v2, 0x1

    .line 233
    :cond_3
    if-eqz v2, :cond_4

    .line 235
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 236
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    .line 237
    invoke-direct {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    .line 239
    :cond_4
    return-void
.end method

.method private onNetworkStatusChange()V
    .locals 2

    .prologue
    .line 1081
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-ne v0, v1, :cond_0

    .line 1083
    const-string v0, "Network status restored, kicking off event post."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1086
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1087
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1089
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    .line 1091
    :cond_0
    return-void
.end method

.method private onOriginLoginStatusChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 925
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 928
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STATUS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "status":Ljava/lang/String;
    const-string v1, "live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "autoLogin"

    .line 930
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 932
    :cond_0
    const-string v1, "Login status update, TRUE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 933
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    .line 948
    .end local v0    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 937
    .restart local v0    # "status":Ljava/lang/String;
    :cond_1
    const-string v1, "Login status update, FALSE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    iput-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    goto :goto_0

    .line 945
    .end local v0    # "status":Ljava/lang/String;
    :cond_2
    const-string v1, "Login status updated event received without extras bundle. Marking NOT logged in to Origin."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 946
    iput-boolean v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    goto :goto_0
.end method

.method private onPostComplete(Lcom/ea/nimble/SynergyNetworkConnectionHandle;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 8
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .param p2, "sessionData"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    .line 1197
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1199
    :cond_0
    const-string v4, "No response exists in this post!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    :goto_0
    return-void

    .line 1203
    :cond_1
    const/4 v1, 0x0

    .line 1204
    .local v1, "retryNecessary":Z
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1205
    .local v2, "postInterval":D
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1207
    invoke-direct {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    .line 1208
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1209
    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    .line 1231
    :goto_1
    const-string v4, "Telemetry post request finished, resetting isRequestInProgress flag to false."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    .line 1235
    if-eqz v1, :cond_6

    .line 1236
    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1237
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1238
    iget-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    const-wide v6, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 1240
    const-wide v4, 0x4072c00000000000L    # 300.0

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1243
    :cond_2
    const-string v4, "Posting a retry with delay of %s due to failed send. Queue size: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1244
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    goto :goto_0

    .line 1213
    :cond_3
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/ISynergyResponse;->getHttpResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    .line 1214
    .local v0, "httpResponse":Lcom/ea/nimble/IHttpResponse;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x190

    if-eq v4, v5, :cond_4

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v4

    const/16 v5, 0x19f

    if-ne v4, v5, :cond_5

    .line 1216
    :cond_4
    const-string v4, "Received HTTP status %d. Discarding post."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    invoke-direct {p0, p2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    .line 1218
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1219
    iget-wide v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    goto :goto_1

    .line 1225
    :cond_5
    const-string v4, "Failed to send tracking events. Error: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v7

    invoke-interface {v7}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1226
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1246
    .end local v0    # "httpResponse":Lcom/ea/nimble/IHttpResponse;
    :cond_6
    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1249
    const-string v4, "More items found in the queue. Post the next one now. Queue size: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1250
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    goto/16 :goto_0

    .line 1253
    :cond_7
    const-string v4, "No more items found in the queue. Wait on the timer. Queue size: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1254
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    goto/16 :goto_0
.end method

.method private onStartupRequestsFinished(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 820
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 822
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "result"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 823
    .local v4, "result":Ljava/lang/String;
    const-string v10, "1"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 825
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v10

    invoke-interface {v10}, Lcom/ea/nimble/ISynergyEnvironment;->getTrackingPostInterval()I

    move-result v3

    .line 826
    .local v3, "postInterval":I
    if-ltz v3, :cond_0

    const/4 v10, -0x1

    if-ne v3, v10, :cond_9

    .line 828
    :cond_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iput-wide v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    .line 837
    :goto_0
    iget-object v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 839
    iget-object v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 841
    .local v0, "bundledSession":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    if-eqz v0, :cond_1

    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    if-eqz v10, :cond_1

    .line 843
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "sellId"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 844
    .local v5, "sellId":Ljava/lang/Object;
    if-eqz v5, :cond_4

    instance-of v10, v5, Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    const-string v12, ""

    .line 845
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    check-cast v5, Ljava/lang/String;

    .end local v5    # "sellId":Ljava/lang/Object;
    const-string v10, "0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 847
    :cond_2
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v6

    .line 848
    .local v6, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v6}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v9

    .line 849
    .local v9, "updatedSellId":Ljava/lang/String;
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "sellId"

    invoke-static {v9}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    if-eqz v9, :cond_3

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 852
    :cond_3
    const-string v10, "Sell Id was still null after synergy update"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 855
    .end local v6    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    .end local v9    # "updatedSellId":Ljava/lang/String;
    :cond_4
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "hwId"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 856
    .local v2, "hardwareId":Ljava/lang/Object;
    if-eqz v2, :cond_6

    instance-of v10, v2, Ljava/lang/String;

    if-eqz v10, :cond_6

    check-cast v2, Ljava/lang/String;

    .end local v2    # "hardwareId":Ljava/lang/Object;
    const-string v10, ""

    .line 857
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 859
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v6

    .line 860
    .restart local v6    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v6}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v8

    .line 861
    .local v8, "updatedHwId":Ljava/lang/String;
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "hwId"

    invoke-static {v8}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    if-eqz v8, :cond_5

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 864
    :cond_5
    const-string v10, "Hardware Id was still null after synergy update"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    .end local v6    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    .end local v8    # "updatedHwId":Ljava/lang/String;
    :cond_6
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "deviceId"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 868
    .local v1, "deviceId":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v10, v1, Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-string v12, ""

    .line 869
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    check-cast v1, Ljava/lang/String;

    .end local v1    # "deviceId":Ljava/lang/Object;
    const-string v10, "0"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 871
    :cond_7
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v6

    .line 872
    .restart local v6    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-interface {v6}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v7

    .line 873
    .local v7, "updatedDeviceId":Ljava/lang/String;
    iget-object v10, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v12, "deviceId"

    invoke-static {v7}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    if-eqz v7, :cond_8

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 876
    :cond_8
    const-string v10, "Device Id was still null after synergy update"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 832
    .end local v0    # "bundledSession":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .end local v6    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    .end local v7    # "updatedDeviceId":Ljava/lang/String;
    :cond_9
    int-to-double v10, v3

    iput-wide v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    goto/16 :goto_0

    .line 883
    :cond_a
    const-string v10, "Synergy environment update successful. Removing observer and re-attempting event post."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    iget-object v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    if-eqz v10, :cond_b

    .line 888
    iget-object v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    invoke-static {v10}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 889
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    .line 892
    :cond_b
    iget-boolean v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    if-eqz v10, :cond_c

    .line 894
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isPostPending:Z

    .line 897
    const-wide/16 v10, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    .line 901
    .end local v3    # "postInterval":I
    .end local v4    # "result":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private postIntervalTimerExpired(Z)V
    .locals 1
    .param p1, "packageEvents"    # Z

    .prologue
    .line 1308
    if-eqz p1, :cond_0

    .line 1310
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    .line 1312
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    .line 1313
    return-void
.end method

.method private postPendingEvents(Z)V
    .locals 18
    .param p1, "runInBackground"    # Z

    .prologue
    .line 1095
    invoke-direct/range {p0 .. p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->isAbleToPostEvent(Z)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_3

    .line 1102
    :cond_2
    const-string v14, "No tracking sessions to post."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1106
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 1109
    .local v8, "nextSession":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    :goto_1
    if-nez v8, :cond_5

    .line 1111
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_4

    .line 1115
    const-string v14, "No valid tracking sessions to post."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1119
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "nextSession":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    check-cast v8, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .restart local v8    # "nextSession":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    goto :goto_1

    .line 1122
    :cond_5
    move-object v12, v8

    .line 1126
    .local v12, "sessionData":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;

    move-result-object v9

    .line 1127
    .local v9, "request":Lcom/ea/nimble/SynergyRequest;
    if-eqz v9, :cond_0

    .line 1132
    iget-object v14, v9, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    move/from16 v0, p1

    iput-boolean v0, v14, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    .line 1133
    const-string v14, "Event queue marshalled. Incrementing repost count from %d to %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget v0, v12, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget v0, v12, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    iget v14, v12, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    .line 1136
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    .line 1138
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v13

    .line 1141
    .local v13, "threadManager":Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v14

    new-instance v15, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13, v12}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    invoke-interface {v14, v9, v15}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1158
    :catch_0
    move-exception v6

    .line 1160
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1161
    .local v3, "currentActivity":Landroid/app/Activity;
    if-eqz v3, :cond_6

    .line 1163
    new-instance v7, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v7}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1164
    .local v7, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string v14, "activity"

    invoke-virtual {v3, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1165
    .local v2, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1166
    iget-wide v14, v7, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v16, 0x100000

    div-long v4, v14, v16

    .line 1167
    .local v4, "availableMegs":J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OutOfMemoryError with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " MB left. Dropping current session"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1174
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "availableMegs":J
    .end local v7    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :goto_2
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    .line 1175
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    .line 1176
    .local v10, "postInterval":D
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V

    .line 1177
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 1178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_isRequestInProgress:Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_7

    .line 1183
    const-string v14, "More items found in the queue. Post the next one now. Queue size: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    goto/16 :goto_0

    .line 1171
    .end local v10    # "postInterval":D
    :cond_6
    const-string v14, "Out of memory. Dropping current session"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1189
    .restart local v10    # "postInterval":D
    :cond_7
    const-string v14, "No more items found in the queue. Wait on the timer. Queue size: %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1190
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v14}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    goto/16 :goto_0
.end method

.method private removeSessionAndFillQueue(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)V
    .locals 4
    .param p1, "sessionObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    const-wide/16 v2, 0x1

    .line 1416
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    .line 1419
    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 1421
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    .line 1423
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    .line 1424
    return-void
.end method

.method private resetPostTimer()V
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(D)V

    .line 270
    return-void
.end method

.method private resetPostTimer(DZ)V
    .locals 7
    .param p1, "period"    # D
    .param p3, "packageQueuedEvents"    # Z

    .prologue
    const/4 v5, 0x0

    .line 280
    move-wide v0, p1

    .line 281
    .local v0, "timerPeriod":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 285
    const-string v2, "resetPostTimer called with an invalid period: period < 0.0. Timer reset with period 0.0 instead"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-wide/16 v0, 0x0

    .line 289
    :cond_0
    const-string v2, "Resetting event post timer for %s seconds."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 294
    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v3, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;

    invoke-direct {v3, p0, p3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$PostTask;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Z)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->createTimer(DLjava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 295
    return-void
.end method

.method private saveSessionDataToPersistent()V
    .locals 3

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 996
    .local v0, "trackingPersistence":Lcom/ea/nimble/Persistence;
    const-string v1, "Saving event queue to persistence."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    const-string v1, "sessionData"

    iget-object v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1002
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 1003
    return-void
.end method

.method private saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V
    .locals 8
    .param p1, "sessionObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .param p2, "sessionID"    # J

    .prologue
    const/4 v6, 0x0

    .line 1355
    invoke-direct {p0, p2, p3}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getFilenameForSessionID(J)Ljava/lang/String;

    move-result-object v1

    .line 1356
    .local v1, "sessionFilename":Ljava/lang/String;
    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 1359
    .local v0, "savingPersistenceDoc":Lcom/ea/nimble/Persistence;
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1361
    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    .line 1366
    :cond_0
    :try_start_0
    const-string v3, "savedSession"

    invoke-virtual {v0, v3, p1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    :goto_0
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 1374
    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v3}, Lcom/ea/nimble/PersistenceService;->cleanReferenceToPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    .line 1375
    return-void

    .line 1367
    :catch_0
    move-exception v2

    .line 1368
    .local v2, "sessionWriteOOM":Ljava/lang/OutOfMemoryError;
    const-string v3, "OutOfMemoryError occurred while saving a session object to file. Exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveToPersistence()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v2

    .line 713
    .local v2, "trackingPersistenceCache":Lcom/ea/nimble/Persistence;
    const-string v4, "Saving event queue to persistence (cache storage)."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 720
    :try_start_0
    const-string v4, "dataVersion"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 721
    const-string v4, "currentSessionObject"

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 722
    const-string v4, "eventQueue"

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_pendingEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 723
    const-string v4, "sessionData"

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 724
    const-string v4, "loggedInToOrigin"

    iget-boolean v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 725
    const-string v4, "firstSessionIDNumber"

    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 726
    const-string v4, "lastSessionIDNumber"

    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 727
    const-string v4, "totalSessionCount"

    iget-wide v6, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 728
    const-string v4, "queuedSessionObjects"

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 729
    const-string v4, "trackingAttributes"

    iget-object v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/ea/nimble/Persistence;->synchronize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v3

    .line 752
    .local v3, "trackingPersistenceDoc":Lcom/ea/nimble/Persistence;
    const-string v4, "Saving tracking enable/disable flag to persistence (document storage)."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    invoke-virtual {v3}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 757
    invoke-virtual {v3, v9}, Lcom/ea/nimble/Persistence;->setBackUp(Z)V

    .line 761
    :cond_0
    const-string v4, "trackingEnabledFlag"

    iget-boolean v5, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 764
    invoke-virtual {v3}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 765
    .end local v3    # "trackingPersistenceDoc":Lcom/ea/nimble/Persistence;
    :goto_1
    return-void

    .line 731
    :catch_0
    move-exception v1

    .line 733
    .local v1, "queueWriteOOM":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v4, "OutOfMemoryError in saving m_sessionsToPost to persistence! MaxQueueLength is %s. Exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 742
    .end local v1    # "queueWriteOOM":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 744
    .local v0, "err":Ljava/lang/Throwable;
    const-string v4, "Caught generic throwable while saving to persistence! Discarding attempt to save. Exception: %s"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 972
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;-><init>()V

    .line 977
    .local v0, "newSessionData":Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;
    iput-object p1, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    .line 978
    iput-object p2, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    .line 979
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionDataToPersistent()V

    goto :goto_0
.end method

.method protected addObserverForSynergyEnvironmentUpdateFinished()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    .line 813
    const-string v0, "nimble.environment.notification.startup_requests_finished"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_receiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$StartupRequestsFinishedReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 815
    :cond_0
    return-void
.end method

.method protected canDropSession(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1570
    .local p1, "sessionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 699
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->deleteDatFile(Ljava/lang/String;)Z

    .line 700
    return-void
.end method

.method public clearCustomSessionData()V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 988
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionDataToPersistent()V

    .line 989
    return-void
.end method

.method protected abstract convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method protected abstract createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "TrackingBase"

    return-object v0
.end method

.method protected abstract getPersistenceIdentifier()Ljava/lang/String;
.end method

.method protected isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z
    .locals 1
    .param p1, "firstObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .param p2, "secondObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    .line 1565
    const/4 v0, 0x0

    return v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
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
    .line 246
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v2, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-nez v2, :cond_0

    .line 264
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v1, 0x0

    .line 253
    .local v1, "sessionEndEvent":Z
    const-string v2, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging session end event, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Posting event queue now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/4 v1, 0x1

    .line 258
    :cond_1
    new-instance v0, Lcom/ea/nimble/tracking/Tracking$Event;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/Tracking$Event;-><init>()V

    .line 259
    .local v0, "event":Lcom/ea/nimble/tracking/Tracking$Event;
    iput-object p1, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    .line 260
    iput-object p2, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    .line 261
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v0, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    .line 263
    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->logEvent(Lcom/ea/nimble/tracking/Tracking$Event;Z)V

    goto :goto_0
.end method

.method protected abstract packageCurrentSession()V
.end method

.method protected queueCurrentEventsForPost()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1325
    const-string v1, "queueCurrentEventsForPost called. Starting queue size: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    if-nez v1, :cond_1

    .line 1336
    const-string v1, "Unexpected state, currentSessionObject is null."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1350
    .local v0, "sessionDataCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v1, v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 1351
    return-void

    .line 1338
    .end local v0    # "sessionDataCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    if-nez v1, :cond_2

    .line 1340
    const-string v1, "Unexpected state, currentSessionObject events list is null or empty."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1344
    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addCurrentSessionObjectToBackOfQueue()V

    .line 1345
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->dropExtraSessions()V

    goto :goto_0
.end method

.method protected resetPostTimer(D)V
    .locals 1
    .param p1, "period"    # D

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer(DZ)V

    .line 276
    return-void
.end method

.method protected restore()V
    .locals 32

    .prologue
    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static/range {v28 .. v29}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v26

    .line 322
    .local v26, "trackingPersistenceDoc":Lcom/ea/nimble/Persistence;
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v28

    sget-object v29, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static/range {v28 .. v29}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v25

    .line 326
    .local v25, "trackingPersistenceCache":Lcom/ea/nimble/Persistence;
    const-string v28, "trackingEnabledFlag"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 327
    .local v17, "persistenceValue":Ljava/io/Serializable;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Boolean;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 331
    :try_start_0
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 450
    const-string v28, "currentSessionObject"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 451
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v28

    if-lez v28, :cond_1

    .line 455
    const-string v28, "Events logged during startup before persistently cached events were restored. Overwriting logged events with cached events!"

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    :cond_1
    check-cast v17, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .end local v17    # "persistenceValue":Ljava/io/Serializable;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 460
    :cond_2
    const-string v28, "queuedSessionObjects"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 461
    .restart local v17    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_e

    move-object/from16 v20, v17

    .line 464
    check-cast v20, Ljava/util/ArrayList;

    .line 465
    .local v20, "sessionsFromPersistence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v18, "queuedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 468
    .local v21, "sessionsSize":I
    const-string v28, "firstSessionIDNumber"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    .line 470
    .local v13, "firstID":Ljava/io/Serializable;
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Long;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 472
    check-cast v13, Ljava/lang/Long;

    .end local v13    # "firstID":Ljava/io/Serializable;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    .line 480
    :goto_1
    const-string v28, "lastSessionIDNumber"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    .line 482
    .local v16, "lastID":Ljava/io/Serializable;
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Long;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 484
    check-cast v16, Ljava/lang/Long;

    .end local v16    # "lastID":Ljava/io/Serializable;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    .line 492
    :goto_2
    const-string v28, "totalSessionCount"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    .line 493
    .local v24, "totalSessions":Ljava/io/Serializable;
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Long;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 495
    check-cast v24, Ljava/lang/Long;

    .end local v24    # "totalSessions":Ljava/io/Serializable;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    .line 502
    :goto_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v21

    if-ge v14, v0, :cond_d

    .line 504
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 507
    .local v19, "sessionObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_maxQueueLength:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_c

    .line 509
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 333
    .end local v14    # "i":I
    .end local v18    # "queuedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .end local v19    # "sessionObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .end local v20    # "sessionsFromPersistence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .end local v21    # "sessionsSize":I
    :catch_0
    move-exception v11

    .line 335
    .local v11, "e":Ljava/lang/ClassCastException;
    const-string v28, "Invalid persistence value for %s, expected Boolean, got %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "trackingEnabledFlag"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    .line 336
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 342
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :cond_3
    const-string v28, "trackingEnabledFlag"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 343
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Boolean;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 347
    :try_start_1
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 349
    :catch_1
    move-exception v11

    .line 351
    .restart local v11    # "e":Ljava/lang/ClassCastException;
    const-string v28, "Invalid persistence value for %s, expected Boolean, got %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "trackingEnabledFlag"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    .line 352
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 358
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :cond_4
    const/4 v12, 0x0

    .line 359
    .local v12, "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    const/4 v15, 0x0

    .line 362
    .local v15, "isTrackingEnableFlagSet":Z
    :try_start_2
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v12

    .line 373
    :goto_6
    if-eqz v12, :cond_7

    .line 375
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Nimble tracking persistence data does not exist, but EASP tracking data found. Loaded dat version"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "1.00.03"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_5

    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "1.00.02"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 392
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ge v14, v0, :cond_6

    .line 394
    :try_start_3
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/ea/nimble/EASPDataLoader;->readLogEvent(Ljava/nio/ByteBuffer;)Lcom/ea/nimble/EASPDataLoader$LogEvent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 392
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 364
    .end local v14    # "i":I
    :catch_2
    move-exception v11

    .line 366
    .local v11, "e":Ljava/io/FileNotFoundException;
    const-string v28, "No EASP tracking file."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 368
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v11

    .line 370
    .local v11, "e":Ljava/lang/Exception;
    const-string v28, "Exception loading EASP tracking file."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 397
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v14    # "i":I
    :cond_6
    :try_start_4
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v27

    .line 398
    .local v27, "userLevel":I
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    move-result v10

    .line 400
    .local v10, "disabled":Z
    const-string v28, "EASP user level(%d), disabled(%b)"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    if-nez v10, :cond_8

    const/16 v28, 0x1

    :goto_8
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    .line 404
    const/4 v15, 0x1

    .line 407
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "1.00.03"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v28

    if-eqz v28, :cond_7

    .line 410
    const/4 v4, 0x0

    .line 413
    .local v4, "ageGateDobStr":Ljava/lang/String;
    :try_start_5
    iget-object v0, v12, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v4

    .line 420
    :goto_9
    if-eqz v4, :cond_7

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_7

    .line 423
    const-string v28, "Setting age gate DOB from EASP data,  %s."

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v4, v29, v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    const-string v28, "ageGateDob"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 437
    .end local v4    # "ageGateDobStr":Ljava/lang/String;
    .end local v10    # "disabled":Z
    .end local v14    # "i":I
    .end local v27    # "userLevel":I
    :cond_7
    :goto_a
    if-nez v15, :cond_0

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->configureTrackingOnFirstInstall()V

    goto/16 :goto_0

    .line 403
    .restart local v10    # "disabled":Z
    .restart local v14    # "i":I
    .restart local v27    # "userLevel":I
    :cond_8
    const/16 v28, 0x0

    goto :goto_8

    .line 415
    .restart local v4    # "ageGateDobStr":Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 417
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception reading ageGateDob string: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    .line 429
    .end local v4    # "ageGateDobStr":Ljava/lang/String;
    .end local v10    # "disabled":Z
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v27    # "userLevel":I
    :catch_5
    move-exception v11

    .line 431
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Exception reading EASP tracking data file: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 477
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "easpData":Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .end local v14    # "i":I
    .end local v15    # "isTrackingEnableFlagSet":Z
    .restart local v13    # "firstID":Ljava/io/Serializable;
    .restart local v18    # "queuedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .restart local v20    # "sessionsFromPersistence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .restart local v21    # "sessionsSize":I
    :cond_9
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    goto/16 :goto_1

    .line 489
    .end local v13    # "firstID":Ljava/io/Serializable;
    .restart local v16    # "lastID":Ljava/io/Serializable;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    move-wide/from16 v28, v0

    add-int/lit8 v30, v21, -0x1

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    goto/16 :goto_2

    .line 499
    .end local v16    # "lastID":Ljava/io/Serializable;
    .restart local v24    # "totalSessions":Ljava/io/Serializable;
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_lastSessionIDNumber:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    move-wide/from16 v30, v0

    sub-long v28, v28, v30

    const-wide/16 v30, 0x1

    add-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_totalSessions:J

    goto/16 :goto_3

    .line 514
    .end local v24    # "totalSessions":Ljava/io/Serializable;
    .restart local v14    # "i":I
    .restart local v19    # "sessionObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_firstSessionIDNumber:J

    move-wide/from16 v28, v0

    int-to-long v0, v14

    move-wide/from16 v30, v0

    add-long v8, v28, v30

    .line 515
    .local v8, "currentSessionID":J
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8, v9}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveSessionToFile(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;J)V

    goto/16 :goto_5

    .line 518
    .end local v8    # "currentSessionID":J
    .end local v19    # "sessionObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->fillSessionsToPost()V

    .line 524
    .end local v14    # "i":I
    .end local v18    # "queuedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .end local v20    # "sessionsFromPersistence":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    .end local v21    # "sessionsSize":I
    :cond_e
    const-string v28, "eventQueue"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 525
    const/4 v6, 0x0

    .line 530
    .local v6, "cachedEventQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    move-object/from16 v28, v17

    check-cast v28, Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_f

    move-object/from16 v28, v17

    .line 534
    check-cast v28, Ljava/util/ArrayList;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 535
    .local v5, "arrayElement":Ljava/lang/Object;
    if-eqz v5, :cond_f

    instance-of v0, v5, Ljava/util/Map;

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 540
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v28, v17

    check-cast v28, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 541
    .local v23, "tempQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v6, v23

    .line 544
    const-string v28, "eventQueue"

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 548
    .end local v5    # "arrayElement":Ljava/lang/Object;
    .end local v23    # "tempQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_10

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v28

    if-lez v28, :cond_16

    .line 552
    const-string v28, "Restored old format event queue in addition to new format session object. Ignoring event queue."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v28

    if-lez v28, :cond_11

    .line 572
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    .line 581
    .end local v6    # "cachedEventQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_11
    :goto_c
    const-string v28, "sessionData"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 582
    const/4 v7, 0x0

    .line 587
    .local v7, "cachedSessionData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;>;"
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    move-object/from16 v28, v17

    check-cast v28, Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_12

    move-object/from16 v28, v17

    .line 591
    check-cast v28, Ljava/util/ArrayList;

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 592
    .restart local v5    # "arrayElement":Ljava/lang/Object;
    if-eqz v5, :cond_12

    instance-of v0, v5, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    move/from16 v28, v0

    if-eqz v28, :cond_12

    .line 597
    new-instance v22, Ljava/util/ArrayList;

    check-cast v17, Ljava/util/ArrayList;

    .end local v17    # "persistenceValue":Ljava/io/Serializable;
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 598
    .local v22, "tempQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;>;"
    move-object/from16 v7, v22

    .line 600
    if-eqz v7, :cond_12

    .line 602
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_customSessionData:Ljava/util/ArrayList;

    .line 607
    .end local v5    # "arrayElement":Ljava/lang/Object;
    .end local v22    # "tempQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;>;"
    :cond_12
    const-string v28, "trackingAttributes"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 608
    .restart local v17    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v17, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/util/HashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_13

    move-object/from16 v28, v17

    check-cast v28, Ljava/util/HashMap;

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    if-lez v28, :cond_13

    .line 610
    check-cast v17, Ljava/util/HashMap;

    .end local v17    # "persistenceValue":Ljava/io/Serializable;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    .line 613
    :cond_13
    const-string v28, "loggedInToOrigin"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v17

    .line 614
    .restart local v17    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v17, :cond_14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v28

    const-class v29, Ljava/lang/Boolean;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 618
    :try_start_8
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_loggedInToOrigin:Z
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    .line 628
    :cond_14
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    move-object/from16 v28, v0

    if-nez v28, :cond_15

    .line 630
    new-instance v28, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    .line 631
    const-string v28, "nimble.notification.LoginStatusChanged"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 634
    :cond_15
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/ea/nimble/ISynergyEnvironment;->isDataAvailable()Z

    move-result v28

    if-eqz v28, :cond_18

    .line 636
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/ea/nimble/ISynergyEnvironment;->getTrackingPostInterval()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postInterval:D

    .line 642
    :goto_e
    return-void

    .line 556
    .end local v7    # "cachedSessionData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;>;"
    .restart local v6    # "cachedEventQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_16
    const-string v28, "Restored old format event queue, storing in new format session object."

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v6, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    goto/16 :goto_b

    .line 577
    .end local v6    # "cachedEventQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_17
    new-instance v28, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct/range {v28 .. v28}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    goto/16 :goto_c

    .line 620
    .restart local v7    # "cachedSessionData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;>;"
    :catch_6
    move-exception v11

    .line 622
    .local v11, "e":Ljava/lang/ClassCastException;
    const-string v28, "Invalid persistence value for %s, expected Boolean, got %s"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "loggedInToOrigin"

    aput-object v31, v29, v30

    const/16 v30, 0x1

    .line 623
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    .line 622
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 640
    .end local v11    # "e":Ljava/lang/ClassCastException;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->addObserverForSynergyEnvironmentUpdateFinished()V

    goto :goto_e
.end method

.method protected resume()V
    .locals 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    if-nez v0, :cond_1

    .line 685
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;Lcom/ea/nimble/tracking/NimbleTrackingImplBase$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    .line 686
    const-string v0, "nimble.notification.LoginStatusChanged"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 688
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 689
    return-void
.end method

.method public setEnable(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    const-string v2, "setEnable called. enable = %s"

    new-array v3, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v1, "ENABLED"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-boolean v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    if-ne v1, p1, :cond_1

    .line 203
    :goto_1
    return-void

    .line 162
    :cond_0
    const-string v1, "DISABLED"

    goto :goto_0

    .line 171
    :cond_1
    if-nez p1, :cond_4

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventType"

    const-string v2, "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v1, "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

    invoke-virtual {p0, v1, v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->packageCurrentSession()V

    .line 180
    invoke-direct {p0, v4}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->postPendingEvents(Z)V

    .line 181
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    const-string v1, "Removing %d remaining events that couldn\'t be sent from queue."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v3}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_2
    new-instance v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-direct {v1}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 188
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 190
    const-string v1, "Removing unposted sessions."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_sessionsToPost:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 200
    .end local v0    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    iput-boolean p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_enable:Z

    .line 202
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    goto :goto_1

    .line 198
    :cond_4
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->resetPostTimer()V

    goto :goto_2
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1317
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_trackingAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_0
    return-void
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 312
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_postRetryDelay:D

    .line 313
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 314
    return-void
.end method

.method protected suspend()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_networkStatusChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 658
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_originLoginStatusChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingImplBase$OriginLoginStatusChangedReceiver;

    .line 662
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->killPostTimer()V

    .line 665
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->saveToPersistence()V

    .line 670
    invoke-static {}, Lcom/ea/nimble/EASPDataLoader;->getTrackingDatFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->deleteDatFile(Ljava/lang/String;)Z

    .line 671
    return-void
.end method

.method protected teardown()V
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 707
    return-void
.end method
