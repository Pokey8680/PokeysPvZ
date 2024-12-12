.class public Lcom/millennialmedia/android/MMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MMBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_AD_SINGLE_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_AD_SINGLE_TAP"

.field public static final ACTION_DISPLAY_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_DISPLAY_STARTED"

.field public static final ACTION_FETCH_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_FAILED"

.field public static final ACTION_FETCH_STARTED_CACHING:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

.field public static final ACTION_FETCH_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

.field public static final ACTION_GETAD_FAILED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_FAILED"

.field public static final ACTION_GETAD_SUCCEEDED:Ljava/lang/String; = "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

.field public static final ACTION_INTENT_STARTED:Ljava/lang/String; = "millennialmedia.action.ACTION_INTENT_STARTED"

.field public static final ACTION_OVERLAY_CLOSED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_CLOSED"

.field public static final ACTION_OVERLAY_OPENED:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_OPENED"

.field public static final ACTION_OVERLAY_TAP:Ljava/lang/String; = "millennialmedia.action.ACTION_OVERLAY_TAP"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CATEGORY_SDK:Ljava/lang/String; = "millennialmedia.category.CATEGORY_SDK"

.field private static final TAG:Ljava/lang/String; = "MMBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "millennialmedia.category.CATEGORY_SDK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 55
    const-string v1, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public displayStarted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 217
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media display started."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public fetchFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 206
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch failed."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 195
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch finished caching."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 184
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media fetch started caching."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public getAdFailure(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 138
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Failure."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public getAdSuccess(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 127
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Success."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V
    .locals 3
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "intent"    # Ljava/lang/String;

    .prologue
    .line 171
    if-eqz p2, :cond_0

    .line 172
    const-string v0, "MMBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial Media started intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x4

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v7, "packageName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "packageName":Ljava/lang/String;
    const-string v7, "internalId"

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 77
    .local v4, "internalId":J
    const/4 v2, 0x0

    .line 78
    .local v2, "adImpl":Lcom/millennialmedia/android/MMAdImpl;
    const/4 v1, 0x0

    .line 79
    .local v1, "ad":Lcom/millennialmedia/android/MMAd;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 84
    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    .line 90
    :cond_2
    const-string v8, "MMBroadcastReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " @@ Intent - Ad in receiver = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_3

    const-string v7, " null"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_OPENED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayOpened(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 94
    :cond_4
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_CLOSED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 95
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayClosed(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 96
    :cond_5
    const-string v7, "millennialmedia.action.ACTION_OVERLAY_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 97
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->overlayTap(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 98
    :cond_6
    const-string v7, "millennialmedia.action.ACTION_AD_SINGLE_TAP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 99
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->onSingleTap(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 100
    :cond_7
    const-string v7, "millennialmedia.action.ACTION_DISPLAY_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 101
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->displayStarted(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 102
    :cond_8
    const-string v7, "millennialmedia.action.ACTION_FETCH_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 103
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFailure(Lcom/millennialmedia/android/MMAd;)V

    goto :goto_0

    .line 104
    :cond_9
    const-string v7, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 105
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchFinishedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 106
    :cond_a
    const-string v7, "millennialmedia.action.ACTION_FETCH_STARTED_CACHING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 108
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->fetchStartedCaching(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v7, "millennialmedia.action.ACTION_GETAD_FAILED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 110
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdFailure(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 111
    :cond_c
    const-string v7, "millennialmedia.action.ACTION_GETAD_SUCCEEDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 112
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMBroadcastReceiver;->getAdSuccess(Lcom/millennialmedia/android/MMAd;)V

    goto/16 :goto_0

    .line 113
    :cond_d
    const-string v7, "millennialmedia.action.ACTION_INTENT_STARTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 114
    const-string v7, "intentType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/millennialmedia/android/MMBroadcastReceiver;->intentStarted(Lcom/millennialmedia/android/MMAd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 237
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media ad Tap."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public overlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 160
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay closed."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public overlayOpened(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 149
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay opened."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public overlayTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    const-string v0, "MMBroadcastReceiver"

    const-string v1, "Millennial Media overlay Tap."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
