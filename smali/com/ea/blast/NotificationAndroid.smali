.class Lcom/ea/blast/NotificationAndroid;
.super Ljava/lang/Object;
.source "NotificationAndroid.java"


# static fields
.field private static final LOCAL_NOTIFICATION_SAVE_FILE:Ljava/lang/String; = "EAScheduledLocalNotifications"

.field private static final LOCAL_NOTIFICATION_SCHEDULE_INTENT:Ljava/lang/String; = "com.google.android.local.intent.SCHEDULE"

.field private static final LOG_ERROR_ENABLED:Z = false

.field private static final LOG_INFO_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/NotificationAndroid"

.field public static final NOTIFICATION_FIELD_ALERT_ACTION:Ljava/lang/String; = "alert_action"

.field public static final NOTIFICATION_FIELD_ALERT_BODY:Ljava/lang/String; = "alert_body"

.field public static final NOTIFICATION_FIELD_BADGE_NUMBER:Ljava/lang/String; = "badge_number"

.field public static final NOTIFICATION_FIELD_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final NOTIFICATION_FIELD_SOUND_NAME:Ljava/lang/String; = "sound_name"

.field private static NotificationIdLock:Ljava/lang/Object; = null

.field private static final REGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final UNREGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"

.field private static mFirstPendingNotificationCheck:Z


# instance fields
.field private mRNG:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/blast/NotificationAndroid;->mFirstPendingNotificationCheck:Z

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "NotificationAndroid Constructor"

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/ea/blast/NotificationAndroid;->mRNG:Ljava/util/Random;

    .line 65
    return-void
.end method

.method private AddNotificationIdToSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "alertBody"    # Ljava/lang/String;
    .param p2, "alertAction"    # Ljava/lang/String;
    .param p3, "soundName"    # Ljava/lang/String;
    .param p4, "badgeNumber"    # I
    .param p5, "notificationId"    # I

    .prologue
    const/4 v4, 0x0

    .line 345
    sget-object v5, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v5

    .line 347
    :try_start_0
    invoke-static {p5}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 349
    const-string v6, "AddNotificationIdToSchedule: Notification Id already in use."

    invoke-static {v6}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    .line 350
    monitor-exit v5

    .line 366
    :goto_0
    return v4

    .line 353
    :cond_0
    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v6, "EAScheduledLocalNotifications"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 355
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v2, "notificationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 364
    .local v1, "jsArray":Lorg/json/JSONArray;
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    monitor-exit v5

    goto :goto_0

    .line 367
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "jsArray":Lorg/json/JSONArray;
    .end local v2    # "notificationData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "notificationId"    # I

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private GeneratePendingIntentFromLocalNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "alertBody"    # Ljava/lang/String;
    .param p2, "alertAction"    # Ljava/lang/String;
    .param p3, "soundName"    # Ljava/lang/String;
    .param p4, "badgeNumber"    # I
    .param p5, "notificationId"    # I

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "alert_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v1, "alert_action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v1, "sound_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v1, "badge_number"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const/4 v2, 0x0

    invoke-static {v1, p5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private static IsNotificationIdAvailable(I)Z
    .locals 3
    .param p0, "notificationId"    # I

    .prologue
    const/4 v0, 0x0

    .line 338
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v2, "EAScheduledLocalNotifications"

    invoke-virtual {v1, v2, v0}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 439
    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 429
    return-void
.end method

.method private static native NativeOnNotifyOpenUrl(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public static RemoveNotificationIdFromSchedule(I)Z
    .locals 6
    .param p0, "notificationId"    # I

    .prologue
    const/4 v2, 0x0

    .line 374
    sget-object v3, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v3

    .line 376
    :try_start_0
    invoke-static {p0}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    const-string v4, "RemoveNotificationIdFromSchedule: Notification Id does not exist."

    invoke-static {v4}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    .line 379
    monitor-exit v3

    .line 388
    :goto_0
    return v2

    .line 382
    :cond_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v4, "EAScheduledLocalNotifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 384
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 386
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 389
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static RemovePendingNotificationIdFromSchedule(I)V
    .locals 1
    .param p0, "notificationId"    # I

    .prologue
    .line 396
    sget-boolean v0, Lcom/ea/blast/NotificationAndroid;->mFirstPendingNotificationCheck:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-static {p0}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    .line 400
    :cond_0
    return-void
.end method


# virtual methods
.method public CancelAllLocalNotifications()V
    .locals 10

    .prologue
    .line 273
    sget-object v7, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v7

    .line 275
    :try_start_0
    sget-object v6, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v8, "EAScheduledLocalNotifications"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 277
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 279
    .local v3, "scheduledNotificationId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 282
    .local v5, "toCancel":Landroid/app/PendingIntent;
    sget-object v6, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v8, "alarm"

    invoke-virtual {v6, v8}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 283
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 290
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "scheduledNotificationId":Ljava/lang/String;
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "toCancel":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 286
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 288
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    return-void
.end method

.method public CancelLocalNotification(I)Z
    .locals 4
    .param p1, "notificationId"    # I

    .prologue
    .line 255
    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const-string v2, "CancelLocalNotification: Failed to remove notification from schedule list."

    invoke-static {v2}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x0

    .line 266
    :goto_0
    return v2

    .line 260
    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 263
    .local v1, "toCancel":Landroid/app/PendingIntent;
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 264
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 266
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public GenerateUniqueNotificationId()I
    .locals 4

    .prologue
    .line 320
    sget-object v2, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/NotificationAndroid;->mRNG:Ljava/util/Random;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 328
    .local v0, "uniqueId":I
    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    monitor-exit v2

    return v0

    .line 331
    .end local v0    # "uniqueId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAllLocalNotifications()[Ljava/lang/Object;
    .locals 13

    .prologue
    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v10, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v10

    .line 205
    :try_start_0
    sget-object v9, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v11, "EAScheduledLocalNotifications"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 206
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    .line 208
    .local v8, "storedNotifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 210
    .local v6, "scheduledNotificationId":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "dataString":Ljava/lang/Object;
    instance-of v9, v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 218
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "dataString":Ljava/lang/Object;
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, "notificationDataArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    const-string v11, ""

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v9, 0x1

    const-string v11, ""

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v9, 0x2

    const-string v11, ""

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    const/4 v9, 0x3

    const-string v11, "0"

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    .end local v3    # "notificationDataArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 227
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "GetAllLocalNotifications: Error parsing saved data."

    invoke-static {v9}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    .line 229
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "scheduledNotificationId":Ljava/lang/String;
    .end local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v8    # "storedNotifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 237
    .restart local v0    # "dataString":Ljava/lang/Object;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v6    # "scheduledNotificationId":Ljava/lang/String;
    .restart local v7    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v8    # "storedNotifications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_0
    :try_start_3
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v9, "0"

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    .end local v0    # "dataString":Ljava/lang/Object;
    .end local v6    # "scheduledNotificationId":Ljava/lang/String;
    :cond_1
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 245
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/String;

    .line 246
    .local v5, "notificationsArray":[Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "notificationsArray":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 248
    .restart local v5    # "notificationsArray":[Ljava/lang/String;
    return-object v5
.end method

.method public NotifyPendingBackgroundLocalNotifications()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBarBackground(Landroid/content/Context;)V

    .line 155
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->NotifyPendingBackgroundLocalNotifications()V

    .line 156
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingBackgroundMessages()V

    .line 158
    :cond_0
    return-void
.end method

.method public NotifyPendingBackgroundPushNotifications()V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBarBackground(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->NotifyPendingBackgroundPushNotifications()V

    .line 129
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->ClearPendingBackgroundMessages()V

    .line 131
    :cond_0
    return-void
.end method

.method public NotifyPendingStartupLocalNotifications(II)V
    .locals 2
    .param p1, "srcModulePtr"    # I
    .param p2, "listenerPtr"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBarStartup(Landroid/content/Context;)V

    .line 141
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/LocalNotificationReceiver;->NotifyPendingStartupLocalNotifications(II)V

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/blast/NotificationAndroid;->mFirstPendingNotificationCheck:Z

    .line 145
    :cond_0
    return-void
.end method

.method public NotifyPendingStartupPushNotifications(II)V
    .locals 2
    .param p1, "srcModulePtr"    # I
    .param p2, "listenerPtr"    # I

    .prologue
    .line 113
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBarStartup(Landroid/content/Context;)V

    .line 116
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->NotifyPendingStartupPushNotifications(II)V

    .line 118
    :cond_0
    return-void
.end method

.method public RegisterApplicationForNotifications(Ljava/lang/String;)V
    .locals 5
    .param p1, "senderEmail"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterApplicationForNotifications - Starting Registration Service, senderEmail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 76
    .local v0, "mainActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "registrationIntent":Landroid/content/Intent;
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string v2, "sender"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method public ScheduleLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 9
    .param p1, "alertBody"    # Ljava/lang/String;
    .param p2, "alertAction"    # Ljava/lang/String;
    .param p3, "soundName"    # Ljava/lang/String;
    .param p4, "badgeNumber"    # I
    .param p5, "triggerDelay"    # I
    .param p6, "notificationId"    # I

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/NotificationAndroid;->AddNotificationIdToSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const-string v0, "ScheduleLocalNotification: Failed to add notification to schedule list."

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 187
    .local v7, "cal":Ljava/util/Calendar;
    const/16 v0, 0xd

    invoke-virtual {v7, v0, p5}, Ljava/util/Calendar;->add(II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object v8

    .line 191
    .local v8, "sender":Landroid/app/PendingIntent;
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    .line 192
    .local v6, "am":Landroid/app/AlarmManager;
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v6, v0, v2, v3, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public UnregisterApplicationForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    const-string v2, "UnregisterApplicationForNotifications - Starting Unregistration Service"

    invoke-static {v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 91
    .local v0, "mainActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "unregistrationIntent":Landroid/content/Intent;
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 95
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v2, :cond_0

    .line 97
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v2}, Lcom/ea/blast/C2DMReceiver;->ClearPendingStartupMessages()V

    .line 98
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v2}, Lcom/ea/blast/C2DMReceiver;->ClearPendingBackgroundMessages()V

    .line 101
    :cond_0
    sget-object v2, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v2, :cond_1

    .line 103
    sget-object v2, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v2}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingStartupMessages()V

    .line 104
    sget-object v2, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v2}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingBackgroundMessages()V

    .line 106
    :cond_1
    return-void
.end method

.method public VerifyUrlLaunch()V
    .locals 4

    .prologue
    .line 165
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 166
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "launchUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 170
    if-eqz v1, :cond_0

    .line 172
    invoke-static {v0, v1}, Lcom/ea/blast/NotificationAndroid;->NativeOnNotifyOpenUrl(Landroid/content/Intent;Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method
