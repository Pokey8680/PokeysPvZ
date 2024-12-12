.class public Lcom/ea/nimble/pushtng/NimblePushTNGBroadcastReceiver;
.super Lcom/ea/eadp/pushnotification/forwarding/GcmBroadcastReceiver;
.source "NimblePushTNGBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/ea/eadp/pushnotification/forwarding/GcmBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getIntentServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/ea/nimble/pushtng/NimblePushTNGIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
