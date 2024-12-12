.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;
.super Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;
.source "NimbleTrackingSynergyComponent.java"


# static fields
.field static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.trackingimpl.synergy"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V

    .line 17
    return-void
.end method

.method static initialize()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyComponent;-><init>()V

    const-string v1, "com.ea.nimble.trackingimpl.synergy"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 12
    return-void
.end method
