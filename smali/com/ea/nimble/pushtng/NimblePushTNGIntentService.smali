.class public Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;
.super Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;
.source "NimblePushTNGIntentService.java"


# static fields
.field private static final DO_NOT_COLLAPSE:Ljava/lang/String; = "do_not_collapse"

.field public static final EXTRA_IS_DELETE_INTENT:Ljava/lang/String; = "IsDeleteIntent"

.field private static final KEY_PUSH_COUNT:Ljava/lang/String; = "push_count"

.field private static final KEY_PUSH_TEXT_LIST:Ljava/lang/String; = "push_text_list"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected customizeNotification(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 66
    invoke-super/range {p0 .. p2}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->customizeNotification(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/os/Bundle;)V

    .line 68
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v17, "collapse_key"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "collapseKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v17, "do_not_collapse"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PushTNGStacking_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 78
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v17, "push_count"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 79
    .local v11, "notificationCount":I
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 80
    .local v10, "notificationAlerts":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v11, :cond_3

    .line 81
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "push_text_list"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "alert":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 83
    invoke-virtual {v10, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 88
    .end local v3    # "alert":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 89
    const-string v17, "alert"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 93
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v11, v0, :cond_5

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 95
    .local v15, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "packageName":Ljava/lang/String;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 98
    .local v8, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 99
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 100
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_2

    .line 103
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "app_name"

    const-string v19, "string"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 104
    .local v16, "title":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 105
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 106
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 111
    .end local v8    # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "resources":Landroid/content/res/Resources;
    .end local v16    # "title":Ljava/lang/String;
    :cond_5
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.ea.eadp.pushnotification.FORWARD_AS_ORDERED_BROADCAST"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v12, "notificationIntent":Landroid/content/Intent;
    const-string v17, "IsDeleteIntent"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const-string v17, "collapse_key"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    const/16 v18, 0x0

    const/high16 v19, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 115
    .local v5, "deleteIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 119
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_6

    .line 120
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "push_text_list"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 122
    :cond_6
    const-string v17, "push_count"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method protected isInForeground()Z
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHandleMessage(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "key":Ljava/lang/String;
    const-string v7, "eamobile-message_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    new-instance v2, Lcom/ea/nimble/pushtng/OldGCMIntentHandler;

    invoke-direct {v2}, Lcom/ea/nimble/pushtng/OldGCMIntentHandler;-><init>()V

    .line 41
    .local v2, "oldService":Lcom/ea/nimble/pushtng/OldGCMIntentHandler;
    invoke-virtual {p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, p1}, Lcom/ea/nimble/pushtng/OldGCMIntentHandler;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 61
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "oldService":Lcom/ea/nimble/pushtng/OldGCMIntentHandler;
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v6, "pushId"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "pushId":Ljava/lang/String;
    const-string v6, "pnType"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "pnType":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 51
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v5, "trackingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "trackingType"

    const-string v7, "NIMBLESTANDARD::PN_RECEIVED"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v6, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v6, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0}, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NIMBLESTANDARD::PN_RECEIVED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/ea/nimble/pushtng/PushNotificationImpl;->persistTrackingData(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 59
    .end local v5    # "trackingData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v6, "PushNotification"

    const-string v7, "true"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-super {p0, p1}, Lcom/ea/eadp/pushnotification/forwarding/GcmIntentService;->onHandleMessage(Landroid/content/Intent;)V

    goto :goto_0
.end method
