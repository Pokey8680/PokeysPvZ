.class public interface abstract Lcom/ea/nimble/ISynergyEnvironment;
.super Ljava/lang/Object;
.source "ISynergyEnvironment.java"


# static fields
.field public static final NETWORK_CONNECTION_NONE:I = 0x1

.field public static final NETWORK_CONNECTION_UNKNOWN:I = 0x0

.field public static final NETWORK_CONNECTION_WIFI:I = 0x2

.field public static final NETWORK_CONNECTION_WIRELESS:I = 0x3

.field public static final SYNERGY_APP_VERSION_OK:I = 0x0

.field public static final SYNERGY_APP_VERSION_UPDATE_RECOMMENDED:I = 0x1

.field public static final SYNERGY_APP_VERSION_UPDATE_REQUIRED:I = 0x2


# virtual methods
.method public abstract checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;
.end method

.method public abstract getEADeviceId()Ljava/lang/String;
.end method

.method public abstract getEAHardwareId()Ljava/lang/String;
.end method

.method public abstract getGosMdmAppKey()Ljava/lang/String;
.end method

.method public abstract getLatestAppVersionCheckResult()I
.end method

.method public abstract getNexusClientId()Ljava/lang/String;
.end method

.method public abstract getNexusClientSecret()Ljava/lang/String;
.end method

.method public abstract getProductId()Ljava/lang/String;
.end method

.method public abstract getSellId()Ljava/lang/String;
.end method

.method public abstract getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;
.end method

.method public abstract getSynergyId()Ljava/lang/String;
.end method

.method public abstract getTrackingPostInterval()I
.end method

.method public abstract isDataAvailable()Z
.end method

.method public abstract isUpdateInProgress()Z
.end method
