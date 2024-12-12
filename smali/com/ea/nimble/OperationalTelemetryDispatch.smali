.class public Lcom/ea/nimble/OperationalTelemetryDispatch;
.super Ljava/lang/Object;
.source "OperationalTelemetryDispatch.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.operationaltelemetrydispatch"

.field public static final LOG_TAG:Ljava/lang/String; = "OTDispatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;
    .locals 1

    .prologue
    .line 10
    const-string v0, "com.ea.nimble.operationaltelemetrydispatch"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IOperationalTelemetryDispatch;

    return-object v0
.end method
