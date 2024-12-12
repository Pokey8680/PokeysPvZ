.class Lcom/ea/nimble/pushtng/NimbleDeviceIdService;
.super Ljava/lang/Object;
.source "NimbleDeviceIdService.java"

# interfaces
.implements Lcom/ea/eadp/deviceid/DeviceIdService;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
