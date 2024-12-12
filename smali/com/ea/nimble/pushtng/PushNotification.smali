.class public Lcom/ea/nimble/pushtng/PushNotification;
.super Ljava/lang/Object;
.source "PushNotification.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.pushtng"

.field public static final DISABLED_REASON_GAME_SERVER:Ljava/lang/String; = "game_server"

.field public static final DISABLED_REASON_OPT_OUT:Ljava/lang/String; = "opt_out"

.field public static final DISABLED_REASON_REGISTER_FAILURE:Ljava/lang/String; = "client_register_failure"

.field public static final KEY_TRACKING_TYPE:Ljava/lang/String; = "trackingType"

.field public static final NOTIFICATION_PUSHTNG_COMPONENT_SETUP_COMPLETE:Ljava/lang/String; = "nimble.pushtng.componentSetupComplete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/pushtng/IPushNotification;
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.ea.nimble.pushtng"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/pushtng/IPushNotification;

    return-object v0
.end method

.method private static initialize()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "PN"

    const-string v1, "initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lcom/ea/nimble/pushtng/PushNotificationImpl;

    invoke-direct {v0}, Lcom/ea/nimble/pushtng/PushNotificationImpl;-><init>()V

    const-string v1, "com.ea.nimble.pushtng"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 26
    return-void
.end method
