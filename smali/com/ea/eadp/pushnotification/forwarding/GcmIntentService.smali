.class public Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;
.super Landroid/app/IntentService;
.source "GcmIntentService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService$EnsEventFlags;,
        Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService$PushIntentExtraKeys;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GcmIntentService"


# instance fields
.field private pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private postNotification(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 119
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.ea.eadp.pushnotification.FORWARD_AS_ORDERED_BROADCAST"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v3, "notificationIntent":Landroid/content/Intent;
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xc

    if-lt v8, v9, :cond_0

    .line 121
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    :cond_0
    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->isInForeground()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 126
    invoke-virtual {p0, v3}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 148
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v8, "pushId"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "pushId":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 131
    .local v6, "pushIdHash":I
    :goto_1
    const/high16 v8, 0x8000000

    invoke-static {p1, v6, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 133
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    invoke-virtual {p0, v2, p2}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->customizeNotification(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/os/Bundle;)V

    .line 139
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 140
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const-string v8, "collapse_key"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "collapseKey":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v8, "do_not_collapse"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 143
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v4, v0, v7, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .end local v0    # "collapseKey":Ljava/lang/String;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v4    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "pushIdHash":I
    :cond_2
    move v6, v7

    .line 129
    goto :goto_1

    .line 145
    .restart local v0    # "collapseKey":Ljava/lang/String;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v2    # "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v4    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "pushIdHash":I
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method protected customizeNotification(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "notification"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 168
    const-string v6, "alert"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 171
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "app_name"

    const-string v8, "string"

    invoke-virtual {v4, v7, v8, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "title":Ljava/lang/String;
    :try_start_0
    const-string v6, "pn_icon"

    const-string v7, "drawable"

    invoke-virtual {v4, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const/4 v0, 0x5

    .line 182
    .local v0, "defaults":I
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.VIBRATE"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 183
    or-int/lit8 v0, v0, 0x2

    .line 186
    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    return-void

    .line 177
    .end local v0    # "defaults":I
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "GcmIntentService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PN NOT DISPLAYED: Unable to set application icon due to exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected displayNotification(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected isInForeground()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/ea/eadp/pushnotification/lifecycles/PushLifecycleCallbacks;->inForeground:Z

    return v0
.end method

.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 67
    .local v1, "gcm":Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "messageType":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    const-string v3, "send_error"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    const-string v3, "GcmIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/ea/eadp/pushnotification/forwarding/GcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 87
    return-void

    .line 78
    :cond_1
    const-string v3, "deleted_messages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const-string v3, "GcmIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted messages on server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_2
    const-string v3, "gcm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->onHandleMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 91
    .local v3, "extras":Landroid/os/Bundle;
    const-string v4, "GcmIntentService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v3}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->displayNotification(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->postNotification(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 97
    :cond_0
    const/4 v1, 0x3

    .line 98
    .local v1, "ensEventsFlag":I
    const-string v4, "ensEvents"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "ensEventsFlagStr":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 101
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :cond_1
    :goto_0
    const-string v4, "pushId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    if-gez v1, :cond_4

    .line 109
    :cond_2
    iget-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    if-nez v4, :cond_3

    .line 110
    new-instance v4, Lcom/ea/eadp/pushnotification/services/AndroidPushService;

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/ea/eadp/http/services/AndroidHttpService;

    invoke-direct {v6}, Lcom/ea/eadp/http/services/AndroidHttpService;-><init>()V

    invoke-direct {v4, v5, v6}, Lcom/ea/eadp/pushnotification/services/AndroidPushService;-><init>(Landroid/content/Context;Lcom/ea/eadp/http/services/HttpService;)V

    iput-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    .line 113
    :cond_3
    iget-object v4, p0, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->pushManager:Lcom/ea/eadp/pushnotification/services/IPushService;

    const-string v5, "pushId"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pnType"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFICATION_RECEIVED"

    invoke-interface {v4, v5, v6, v7}, Lcom/ea/eadp/pushnotification/services/IPushService;->sendTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_4
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GcmIntentService"

    const-string v5, "ensEvents flag found but not parseable as integer"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
