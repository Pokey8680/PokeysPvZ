.class public Lcom/ea/blast/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMReceiver.java"


# static fields
.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field public static final C2DM_NOTIFICATION_BACKGROUND_TAG:Ljava/lang/String; = "c2dm-notification-background-tag"

.field public static final C2DM_NOTIFICATION_STARTUP_TAG:Ljava/lang/String; = "c2dm-notification-startup-tag"

.field private static final LOG_ERROR_ENABLED:Z = false

.field private static final LOG_INFO_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/C2DMReceiver"

.field public static instance:Lcom/ea/blast/C2DMReceiver;

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
    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    const-string v0, "C2DMReceiver Constructor"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 61
    sput-object p0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    .line 62
    return-void
.end method

.method private ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationTag"    # Ljava/lang/String;
    .param p3, "notificationCount"    # I

    .prologue
    .line 366
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 368
    .local v1, "nm":Landroid/app/NotificationManager;
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 370
    invoke-virtual {v1, p2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 368
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private HandleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->OnNotification(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0, p2}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "payload":Ljava/lang/String;
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    if-nez v2, :cond_1

    .line 327
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "c2dm-notification-startup-tag"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    .end local v1    # "payload":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v1    # "payload":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->IsActivityStopped()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v2, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "c2dm-notification-background-tag"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    .end local v1    # "payload":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "C2DMReceiver:HandleMessage : unsatisfied link"

    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    .restart local v1    # "payload":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ea/blast/C2DMReceiver;->NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private HandleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const-string v4, "registration_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "registrationId":Ljava/lang/String;
    const-string v4, "error"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "error":Ljava/lang/String;
    const-string v4, "unregistered"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "unregistered":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 293
    invoke-static {v1}, Lcom/ea/blast/C2DMReceiver;->NativeOnRegistrationError(Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 295
    :cond_0
    if-eqz v3, :cond_1

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/ea/blast/C2DMReceiver;->NativeOnUnregistered()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v4, "C2DMReceiver:HandleRegistration : unsatisfied link"

    invoke-static {v4}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_1
    if-eqz v2, :cond_2

    .line 302
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 303
    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->NativeOnRegistered(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    const-string v4, "Unexpected handleRegistration extras"

    invoke-static {v4}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 416
    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method

.method private static native NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method private static native NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;II)V
.end method

.method private static native NativeOnRegistered(Ljava/lang/String;)V
.end method

.method private static native NativeOnRegistrationError(Ljava/lang/String;)V
.end method

.method private static native NativeOnUnregistered()V
.end method

.method private NotifyPendingPushNotifications(Ljava/util/List;II)V
    .locals 7
    .param p2, "srcModulePtr"    # I
    .param p3, "listenerPtr"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "unhandledMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const-string v5, "NotifyPendingPushNotifications"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 129
    move-object v4, p1

    .line 131
    .local v4, "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 133
    .local v0, "curPendingMessage":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "payload":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, p2, p3}, Lcom/ea/blast/C2DMReceiver;->NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v0    # "curPendingMessage":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "payload":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v5, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 140
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method


# virtual methods
.method public ClearOSNotificationBarBackground(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    const-string v0, "c2dm-notification-background-tag"

    sget-object v1, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    .line 360
    return-void
.end method

.method public ClearOSNotificationBarStartup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    const-string v0, "c2dm-notification-startup-tag"

    sget-object v1, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    .line 353
    return-void
.end method

.method public ClearPendingBackgroundMessages()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method public ClearPendingStartupMessages()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method protected ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p1, "notificationIntent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const-string v3, ""

    .line 192
    .local v3, "payload":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 194
    .local v2, "notificationBundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "key":Ljava/lang/String;
    const-string v4, "eamobile-message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 210
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 202
    .restart local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
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

    .line 262
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

    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 265
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 268
    .local v1, "notification":Landroid/app/Notification;
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 269
    invoke-static {p1, v4, p5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, p1, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 275
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 276
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p7, p6, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 277
    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "listSize"    # I
    .param p4, "listTag"    # Ljava/lang/String;

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, "mainActivityPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 235
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 239
    .local v5, "mainIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 242
    .local v10, "mainActivitiesInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 245
    .local v11, "mainActivityInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .local v2, "iconId":I
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 248
    invoke-virtual/range {v0 .. v7}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v2    # "iconId":I
    .end local v3    # "title":Ljava/lang/String;
    .end local v5    # "mainIntent":Landroid/content/Intent;
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "mainActivitiesInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "mainActivityInfo":Landroid/content/pm/ResolveInfo;
    .end local v12    # "mainActivityPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v9

    .line 252
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

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public NotifyPendingBackgroundPushNotifications()V
    .locals 7

    .prologue
    .line 103
    const-string v5, "NotifyPendingBackgroundPushNotifications"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 107
    :try_start_0
    sget-object v4, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    .line 109
    .local v4, "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 111
    .local v0, "curPendingMessage":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "payload":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ea/blast/C2DMReceiver;->NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v0    # "curPendingMessage":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "payload":Ljava/lang/String;
    .end local v4    # "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v5, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 118
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method

.method public NotifyPendingStartupPushNotifications(II)V
    .locals 7
    .param p1, "srcModulePtr"    # I
    .param p2, "listenerPtr"    # I

    .prologue
    .line 82
    const-string v5, "NotifyPendingStartupPushNotifications"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 86
    :try_start_0
    sget-object v4, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    .line 88
    .local v4, "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 90
    .local v0, "curPendingMessage":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "payload":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pending Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, p1, p2}, Lcom/ea/blast/C2DMReceiver;->NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0    # "curPendingMessage":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "payload":Ljava/lang/String;
    .end local v4    # "pendingMessages":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v5, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v5}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 97
    .end local v1    # "e":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    return-void
.end method

.method protected OnNotification(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
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

    invoke-static {v1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->HandleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->HandleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V

    goto :goto_0
.end method
