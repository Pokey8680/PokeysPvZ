.class public interface abstract Lcom/ea/eadp/pushnotification/services/IPushService;
.super Ljava/lang/Object;
.source "IPushService.java"


# static fields
.field public static final NOTIFICATION_TYPE_OPENED:Ljava/lang/String; = "NOTIFICATION_OPENED"

.field public static final NOTIFICATION_TYPE_RECEIVED:Ljava/lang/String; = "NOTIFICATION_RECEIVED"


# virtual methods
.method public abstract getInAppNotifications(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getPushListener()Lcom/ea/eadp/pushnotification/listeners/IPushListener;
.end method

.method public abstract onRestart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract registerDevice(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;)V
.end method

.method public abstract sendTrackingEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPushListener(Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
.end method

.method public abstract startWithConfig(Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;Ljava/lang/String;)V
.end method
