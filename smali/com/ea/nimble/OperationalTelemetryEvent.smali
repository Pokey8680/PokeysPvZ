.class public interface abstract Lcom/ea/nimble/OperationalTelemetryEvent;
.super Ljava/lang/Object;
.source "OperationalTelemetryEvent.java"


# virtual methods
.method public abstract getEventDictionary()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventType()Ljava/lang/String;
.end method

.method public abstract getLoggedTime()Ljava/util/Date;
.end method
