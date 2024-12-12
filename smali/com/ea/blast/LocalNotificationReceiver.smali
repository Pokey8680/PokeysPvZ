.class public Lcom/ea/blast/LocalNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalNotificationReceiver.java"


# static fields
.field public static final ACTION_SCHEDULE:Ljava/lang/String; = "com.google.android.local.intent.SCHEDULE"

.field public static final LOCAL_NOTIFICATION_BACKGROUND_TAG:Ljava/lang/String; = "local-notification-background-tag"

.field public static final LOCAL_NOTIFICATION_STARTUP_TAG:Ljava/lang/String; = "local-notification-startup-tag"

.field private static final LOG_ERROR_ENABLED:Z = true

.field private static final LOG_INFO_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/LocalNotificationReceiver"

.field public static instance:Lcom/ea/blast/LocalNotificationReceiver;

.field private static sUnhandledBackgroundMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnhandledStartupMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    const-string v0, "LocalNotificationReceiver Constructor"

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 58
    sput-object p0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    .line 59
    return-void
.end method

.method private ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationTag"    # Ljava/lang/String;
    .param p3, "notificationCount"    # I

    .prologue
    .line 269
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 271
    .local v1, "nm":Landroid/app/NotificationManager;
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 273
    invoke-virtual {v1, p2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 271
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 317
    const-string v0, "EAMCore/LocalNotificationReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 307
    const-string v0, "EAMCore/LocalNotificationReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method private static native NativeOnLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private static native NativeOnPendingLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
.end method


# virtual methods
.method public ClearOSNotificationBarBackground(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    const-string v0, "local-notification-background-tag"

    sget-object v1, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    .line 263
    return-void
.end method

.method public ClearOSNotificationBarStartup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    const-string v0, "local-notification-startup-tag"

    sget-object v1, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public ClearPendingBackgroundMessages()V
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    return-void
.end method

.method public ClearPendingStartupMessages()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconId"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "notificationId"    # I
    .param p7, "notificationTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GenerateNotification iconId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notificationId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notificationTag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 187
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 190
    .local v1, "notification":Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 191
    invoke-static {p1, v4, p5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 197
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 198
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p7, p6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 199
    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listSize"    # I
    .param p4, "listTag"    # Ljava/lang/String;

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 154
    .local v12, "mainActivityPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 157
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 161
    .local v5, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 164
    .local v10, "mainActivitiesInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 167
    .local v11, "mainActivityInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 170
    .local v2, "iconId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "alert_body"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "iconId":I
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "mainIntent":Landroid/content/Intent;
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "mainActivitiesInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "mainActivityInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "mainActivityPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v9

    .line 174
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate OS notification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public NotifyPendingBackgroundLocalNotifications()V
    .locals 5

    .prologue
    .line 223
    const-string v4, "NotifyPendingBackgroundLocalNotifications"

    invoke-static {v4}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 227
    :try_start_0
    sget-object v3, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    .line 229
    .local v3, "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 231
    .local v0, "curPendingMessage":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ea/blast/LocalNotificationReceiver;->SendNotification(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    .end local v0    # "curPendingMessage":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v4}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 235
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method

.method public NotifyPendingStartupLocalNotifications(II)V
    .locals 5
    .param p1, "srcModulePtr"    # I
    .param p2, "listenerPtr"    # I

    .prologue
    .line 205
    const-string v4, "NotifyPendingStartupLocalNotifications"

    invoke-static {v4}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 209
    :try_start_0
    sget-object v3, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    .line 211
    .local v3, "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 213
    .local v0, "curPendingMessage":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1, p2}, Lcom/ea/blast/LocalNotificationReceiver;->SendPendingNotification(Landroid/content/Intent;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0    # "curPendingMessage":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v4}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 217
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method

.method protected SendNotification(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 109
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v6, "alert_body"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "alertBody":Ljava/lang/String;
    const-string v6, "alert_action"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "alertAction":Ljava/lang/String;
    const-string v6, "sound_name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "soundName":Ljava/lang/String;
    const-string v6, "badge_number"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 113
    .local v2, "badgeNumber":I
    const-string v6, "notification_id"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, "notificationId":I
    invoke-static {v4}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    .line 117
    invoke-static {v1, v0, v5, v2, v4}, Lcom/ea/blast/LocalNotificationReceiver;->NativeOnLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 118
    return-void
.end method

.method protected SendPendingNotification(Landroid/content/Intent;II)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "srcModulePtr"    # I
    .param p3, "listenerPtr"    # I

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 125
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v5, "alert_body"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "alertBody":Ljava/lang/String;
    const-string v5, "alert_action"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "alertAction":Ljava/lang/String;
    const-string v5, "sound_name"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "soundName":Ljava/lang/String;
    const-string v5, "badge_number"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "badgeNumber":I
    const-string v5, "notification_id"

    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    .local v4, "notificationId":I
    invoke-static {v4}, Lcom/ea/blast/NotificationAndroid;->RemovePendingNotificationIdFromSchedule(I)V

    move v5, p2

    move v6, p3

    .line 133
    invoke-static/range {v0 .. v6}, Lcom/ea/blast/LocalNotificationReceiver;->NativeOnPendingLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 134
    return-void
.end method

.method protected handleLocalNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-startup-tag"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->IsActivityStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-background-tag"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0, p2}, Lcom/ea/blast/LocalNotificationReceiver;->SendNotification(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/LocalNotificationReceiver;->handleLocalNotification(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/blast/LocalNotificationReceiver;->LogError(Ljava/lang/String;)V

    goto :goto_0
.end method
