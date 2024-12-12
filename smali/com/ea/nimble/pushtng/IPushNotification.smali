.class public interface abstract Lcom/ea/nimble/pushtng/IPushNotification;
.super Ljava/lang/Object;
.source "IPushNotification.java"


# virtual methods
.method public abstract getDisableStatus()Ljava/lang/String;
.end method

.method public abstract getRegistrationStatus()Z
.end method

.method public abstract sendPendingTrackingRequests()V
.end method

.method public abstract startAsDisabled(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
.end method

.method public abstract startWithDefaults(Ljava/lang/String;Ljava/util/Date;Lcom/ea/eadp/pushnotification/listeners/IPushListener;)V
.end method
