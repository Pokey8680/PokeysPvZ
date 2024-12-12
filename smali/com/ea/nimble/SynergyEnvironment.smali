.class public Lcom/ea/nimble/SynergyEnvironment;
.super Ljava/lang/Object;
.source "SynergyEnvironment.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.synergyEnvironment"

.field public static final INVALID_INT_VALUE:I = -0x1

.field public static final NOTIFICATION_APP_VERSION_CHECK_FINISHED:Ljava/lang/String; = "nimble.environment.notification.app_version_check_finished"

.field public static final NOTIFICATION_RESTORED_FROM_PERSISTENT:Ljava/lang/String; = "nimble.environment.notification.restored_from_persistent"

.field public static final NOTIFICATION_STARTUP_ENVIRONMENT_DATA_CHANGED:Ljava/lang/String; = "nimble.environment.notification.startup_environment_data_changed"

.field public static final NOTIFICATION_STARTUP_REQUESTS_FINISHED:Ljava/lang/String; = "nimble.environment.notification.startup_requests_finished"

.field public static final NOTIFICATION_STARTUP_REQUESTS_STARTED:Ljava/lang/String; = "nimble.environment.notification.startup_requests_started"

.field public static final SERVER_URL_KEY_AKAMAI:Ljava/lang/String; = "akamai.url"

.field public static final SERVER_URL_KEY_DYNAMIC_MORE_GAMES:Ljava/lang/String; = "dmg.url"

.field public static final SERVER_URL_KEY_EADP_FRIENDS_HOST:Ljava/lang/String; = "eadp.friends.host"

.field public static final SERVER_URL_KEY_ENS:Ljava/lang/String; = "ens.url"

.field public static final SERVER_URL_KEY_IDENTITY_CONNECT:Ljava/lang/String; = "nexus.connect"

.field public static final SERVER_URL_KEY_IDENTITY_PORTAL:Ljava/lang/String; = "nexus.portal"

.field public static final SERVER_URL_KEY_IDENTITY_PROXY:Ljava/lang/String; = "nexus.proxy"

.field public static final SERVER_URL_KEY_MAYHEM:Ljava/lang/String; = "mayhem.url"

.field public static final SERVER_URL_KEY_ORIGIN_AVATAR:Ljava/lang/String; = "avatars.url"

.field public static final SERVER_URL_KEY_ORIGIN_CASUAL_APP:Ljava/lang/String; = "origincasualapp.url"

.field public static final SERVER_URL_KEY_ORIGIN_CASUAL_SERVER:Ljava/lang/String; = "origincasualserver.url"

.field public static final SERVER_URL_KEY_ORIGIN_FRIENDS:Ljava/lang/String; = "friends.url"

.field public static final SERVER_URL_KEY_SYNERGY_CENTRAL_IP_GEOLOCATION:Ljava/lang/String; = "geoip.url"

.field public static final SERVER_URL_KEY_SYNERGY_DIRECTOR:Ljava/lang/String; = "synergy.director"

.field public static final SERVER_URL_KEY_SYNERGY_DRM:Ljava/lang/String; = "synergy.drm"

.field public static final SERVER_URL_KEY_SYNERGY_MESSAGE_TO_USER:Ljava/lang/String; = "synergy.m2u"

.field public static final SERVER_URL_KEY_SYNERGY_PRODUCT:Ljava/lang/String; = "synergy.product"

.field public static final SERVER_URL_KEY_SYNERGY_S2S:Ljava/lang/String; = "synergy.s2s"

.field public static final SERVER_URL_KEY_SYNERGY_TRACKING:Ljava/lang/String; = "synergy.tracking"

.field public static final SERVER_URL_KEY_SYNERGY_USER:Ljava/lang/String; = "synergy.user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/ISynergyEnvironment;
    .locals 1

    .prologue
    .line 50
    const-string v0, "com.ea.nimble.synergyEnvironment"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ISynergyEnvironment;

    return-object v0
.end method
