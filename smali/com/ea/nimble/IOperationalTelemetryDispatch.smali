.class public interface abstract Lcom/ea/nimble/IOperationalTelemetryDispatch;
.super Ljava/lang/Object;
.source "IOperationalTelemetryDispatch.java"


# static fields
.field public static final EVENTTYPE_NETWORK_METRICS:Ljava/lang/String; = "com.ea.nimble.network"

.field public static final EVENTTYPE_TRACKING_SYNERGY_PAYLOADS:Ljava/lang/String; = "com.ea.nimble.trackingimpl.synergy"

.field public static final NIMBLE_DEFAULT_MAX_OT_EVENT_COUNT:I = 0x64

.field public static final NOTIFICATION_OT_EVENT_THRESHOLD_WARNING:Ljava/lang/String; = "nimble.notification.ot.eventthresholdwarning"


# virtual methods
.method public abstract getEvents(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/OperationalTelemetryEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxEventCount(Ljava/lang/String;)I
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

.method public abstract setMaxEventCount(Ljava/lang/String;I)V
.end method
