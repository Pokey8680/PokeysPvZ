.class public Lcom/ea/nimble/pushtng/NimblePushTNGBroadcastForwarder;
.super Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;
.source "NimblePushTNGBroadcastForwarder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPushTargetActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 77
    const-string v4, ""

    .line 79
    .local v4, "pushActivityName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 80
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 81
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v5, "com.ea.nimble.pushtng.notification.activity.name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "com.ea.nimble.pushtng.notification.activity.name"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v4

    .line 84
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string v5, "PushTNG"

    const-string v6, "Could not locate target activity. PN delivered to launch activity"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, "appContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 89
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PushTNG"

    const-string v6, "Could not locate target activity. PN Not delivered."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected handleNewPushNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v6, "IsDeleteIntent"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 30
    .local v1, "isDelete":Z
    if-eqz v1, :cond_1

    .line 32
    const-string v6, "collapse_key"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "collapseKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PushTNGStacking_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 35
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    .end local v0    # "collapseKey":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v6, "pushId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "pushId":Ljava/lang/String;
    const-string v6, "pnType"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "pnType":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    .line 45
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v5, "trackingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "trackingType"

    const-string v7, "NIMBLESTANDARD::PN_SHOWN_TO_USER"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v6, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v6, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NIMBLESTANDARD::PN_SHOWN_TO_USER"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->persistTrackingData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 53
    .end local v5    # "trackingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 55
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/ea/nimble/pushtng/NimblePushTNGBroadcastForwarder;->showMessage(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Lcom/ea/nimble/pushtng/PushNotification;->getComponent()Lcom/ea/nimble/pushtng/IPushNotification;

    move-result-object v6

    invoke-interface {v6}, Lcom/ea/nimble/pushtng/IPushNotification;->sendPendingTrackingRequests()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v6

    goto :goto_0

    .line 61
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/ea/eadp/pushnotification/forwarding/PushBroadcastForwarder;->handleNewPushNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected showMessage(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "payload"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method
