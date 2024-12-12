.class public Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;
.super Landroid/content/BroadcastReceiver;
.source "PushBroadcastForwarder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "PushBroadcastForwarder"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getPushTargetActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    const-string v4, "notification.activity.name"

    invoke-static {v4}, Lcom/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/google/inject/name/Named;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/inject/Key;->get(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lcom/google/inject/Key;

    move-result-object v3

    invoke-interface {v2, v3}, Lroboguice/inject/RoboInjector;->getInstance(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected handleNewPushNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 64
    const-string v4, "deepLinkUrl"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "targetUrl":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    .local v1, "newIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "newIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 73
    .restart local v1    # "newIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PushBroadcastForwarder"

    const-string v5, "Could not launch target URL: %s, exception: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->getPushTargetActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "notificationTarget":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v1    # "newIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 83
    .end local v1    # "newIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "PushBroadcastForwarder"

    const-string v5, "Could not launch target activity: %s, exception: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 32
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v1, 0x3

    .line 33
    .local v1, "ensEventsFlag":I
    const-string v4, "ensEvents"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "ensEventsFlagStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 36
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :cond_0
    :goto_0
    const-string v4, "pushId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-gez v1, :cond_3

    .line 46
    :cond_1
    iget-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    if-nez v4, :cond_2

    .line 47
    new-instance v4, Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/ea/eadp/http/services/AndroidHttpService;

    invoke-direct {v6}, Lcom/ea/eadp/http/services/AndroidHttpService;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;-><init>(Landroid/content/Context;Lcom/ea/eadp/http/services/HttpService;)V

    iput-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    .line 50
    :cond_2
    iget-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    const-string v5, "pushId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pnType"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_OPENED"

    invoke-interface {v4, v5, v6, v7}, Lcom/ea/eadp/pushnotification/services/IPushService;->sendTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->handleNewPushNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 55
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "PushBroadcastForwarder"

    const-string v5, "ensEvents flag found but not parseable as integer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
