.class public interface abstract Lcom/ea/nimble/tracking/ITracking;
.super Ljava/lang/Object;
.source "ITracking.java"


# virtual methods
.method public abstract addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract clearCustomSessionData()V
.end method

.method public abstract getEnable()Z
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method
