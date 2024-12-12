.class Lcom/ea/nimble/EnvironmentDataContainer;
.super Ljava/lang/Object;
.source "EnvironmentDataContainer.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyEnvironment;
.implements Ljava/io/Externalizable;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_OK:I = 0x0

.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_UPGRADE_RECOMMENDED:I = 0x1

.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_UPGRADE_REQUIRED:I = 0x2


# instance fields
.field private m_applicationLanguageCode:Ljava/lang/String;

.field private m_eaDeviceId:Ljava/lang/String;

.field private m_getDirectionResponseDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_lastDirectorResponseTimestamp:Ljava/lang/Long;

.field private m_serverUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_synergyAnonymousId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    .line 36
    const-string v0, "en"

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEADeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEAHardwareId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "hwId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getGetDirectionResponseDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getGosMdmAppKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "mdmAppKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeysOfDifferences(Lcom/ea/nimble/ISynergyEnvironment;)Ljava/util/Set;
    .locals 4
    .param p1, "other"    # Lcom/ea/nimble/ISynergyEnvironment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/ISynergyEnvironment;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 308
    .local v0, "diffKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    :cond_0
    const-string v2, "ENVIRONMENT_KEY_EADEVICEID"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_1
    if-eqz p1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 316
    :cond_2
    const-string v2, "ENVIRONMENT_KEY_EAHARDWAREID"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 321
    :cond_4
    const-string v2, "ENVIRONMENT_KEY_SYNERGYID"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_5
    if-eqz p1, :cond_6

    .line 325
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSellId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 327
    :cond_6
    const-string v2, "ENVIRONMENT_KEY_SELLID"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_7
    if-eqz p1, :cond_8

    .line 331
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 333
    :cond_8
    const-string v2, "ENVIRONMENT_KEY_PRODUCTID"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_9
    if-eqz p1, :cond_a

    const-string v2, "synergy.drm"

    .line 337
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.drm"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 339
    :cond_a
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_DRM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_b
    if-eqz p1, :cond_c

    const-string v2, "synergy.director"

    .line 343
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.director"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 345
    :cond_c
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_DIRECTOR"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_d
    if-eqz p1, :cond_e

    const-string v2, "synergy.m2u"

    .line 349
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.m2u"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 351
    :cond_e
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_MESSAGE_TO_USER"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_f
    if-eqz p1, :cond_10

    const-string v2, "synergy.product"

    .line 355
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.product"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 357
    :cond_10
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_PRODUCT"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_11
    if-eqz p1, :cond_12

    const-string v2, "synergy.tracking"

    .line 361
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.tracking"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 363
    :cond_12
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_TRACKING"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_13
    if-eqz p1, :cond_14

    const-string v2, "synergy.user"

    .line 367
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.user"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 369
    :cond_14
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_USER"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_15
    if-eqz p1, :cond_16

    const-string v2, "geoip.url"

    .line 373
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "geoip.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 375
    :cond_16
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_CENTRAL_IP_GEOLOCATION"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_17
    if-eqz p1, :cond_18

    const-string v2, "synergy.s2s"

    .line 379
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "synergy.s2s"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 381
    :cond_18
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_S2S"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_19
    if-eqz p1, :cond_1a

    const-string v2, "friends.url"

    .line 385
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "friends.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 387
    :cond_1a
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_FRIENDS"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_1b
    if-eqz p1, :cond_1c

    const-string v2, "eadp.friends.host"

    .line 391
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eadp.friends.host"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 393
    :cond_1c
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_EADP_FRIENDS_HOST"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_1d
    if-eqz p1, :cond_1e

    const-string v2, "avatars.url"

    .line 397
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "avatars.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 399
    :cond_1e
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_AVATAR"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_1f
    if-eqz p1, :cond_20

    const-string v2, "origincasualapp.url"

    .line 403
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "origincasualapp.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 405
    :cond_20
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_CASUAL_APP"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_21
    if-eqz p1, :cond_22

    const-string v2, "origincasualserver.url"

    .line 409
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "origincasualserver.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 411
    :cond_22
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_CASUAL_SERVER"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_23
    if-eqz p1, :cond_24

    const-string v2, "akamai.url"

    .line 415
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "akamai.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 417
    :cond_24
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_AKAMAI"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_25
    if-eqz p1, :cond_26

    const-string v2, "dmg.url"

    .line 421
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dmg.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 423
    :cond_26
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_DYNAMIC_MORE_GAMES"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_27
    if-eqz p1, :cond_28

    const-string v2, "mayhem.url"

    .line 427
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mayhem.url"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 429
    :cond_28
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_MAYHEM"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_29
    if-eqz p1, :cond_2a

    const-string v2, "nexus.connect"

    .line 433
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nexus.connect"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 435
    :cond_2a
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_CONNECT"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    :cond_2b
    if-eqz p1, :cond_2c

    const-string v2, "nexus.proxy"

    .line 439
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nexus.proxy"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 441
    :cond_2c
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_PROXY"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_2d
    if-eqz p1, :cond_2e

    const-string v2, "nexus.portal"

    .line 445
    invoke-virtual {p0, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nexus.portal"

    invoke-interface {p1, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 447
    :cond_2e
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_PORTAL"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_2f
    if-eqz p1, :cond_30

    .line 451
    invoke-virtual {p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getLatestAppVersionCheckResult()I

    move-result v2

    invoke-interface {p1}, Lcom/ea/nimble/ISynergyEnvironment;->getLatestAppVersionCheckResult()I

    move-result v3

    if-eq v2, v3, :cond_31

    .line 453
    :cond_30
    const-string v2, "ENVIRONMENT_KEY_APP_VERSION_CHECK_RESULT"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_31
    :goto_0
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 465
    .end local v0    # "diffKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 456
    .restart local v0    # "diffKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "Null pointer exception comparing EnvironmentDataContainer."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_32
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLatestAppVersionCheckResult()I
    .locals 5

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 138
    .local v0, "appUpgradeIntegerValue":I
    iget-object v3, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    :cond_0
    const/4 v2, -0x1

    .line 171
    :goto_0
    return v2

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v4, "appUpgrade"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, "appUpgradeResponseValue":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 146
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "appUpgradeResponseValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 167
    const/4 v2, 0x0

    .local v2, "versionCheckResult":I
    goto :goto_0

    .line 148
    .end local v2    # "versionCheckResult":I
    .restart local v1    # "appUpgradeResponseValue":Ljava/lang/Object;
    :cond_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 150
    check-cast v1, Ljava/lang/String;

    .end local v1    # "appUpgradeResponseValue":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 158
    :pswitch_0
    const/4 v2, 0x0

    .line 159
    .restart local v2    # "versionCheckResult":I
    goto :goto_0

    .line 161
    .end local v2    # "versionCheckResult":I
    :pswitch_1
    const/4 v2, 0x1

    .line 162
    .restart local v2    # "versionCheckResult":I
    goto :goto_0

    .line 164
    .end local v2    # "versionCheckResult":I
    :pswitch_2
    const/4 v2, 0x2

    .line 165
    .restart local v2    # "versionCheckResult":I
    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getNexusClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "clientId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNexusClientSecret()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "clientSecret"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "productId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "sellId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method getServerUrls()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 214
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    return-object v0
.end method

.method getSynergyAnonymousId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;
    .locals 1
    .param p1, "nimbleEnvironment"    # Lcom/ea/nimble/NimbleConfiguration;

    .prologue
    .line 130
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingPostInterval()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 177
    iget-object v2, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v3, "telemetryFreq"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 182
    .local v0, "interval":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public isUpdateInProgress()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    .line 253
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    .line 258
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    .line 259
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    .line 270
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 273
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    .line 276
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    .line 277
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 279
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    .line 282
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 285
    iput-object v4, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    .line 287
    :cond_5
    return-void
.end method

.method setEADeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eaDeviceId"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method setGetDirectionResponseDictionary(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "getDirectionResponseDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 195
    const-string v3, "sellId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 196
    .local v2, "sellId":Ljava/lang/Integer;
    const-string v3, "sellId"

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v3, "productId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 199
    .local v1, "productId":Ljava/lang/Integer;
    const-string v3, "productId"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "hwId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 202
    .local v0, "hwId":Ljava/lang/Integer;
    const-string v3, "hwId"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    .line 210
    .end local v0    # "hwId":Ljava/lang/Integer;
    .end local v1    # "productId":Ljava/lang/Integer;
    .end local v2    # "sellId":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    goto :goto_0
.end method

.method setMostRecentDirectorResponseTimestamp(Ljava/lang/Long;)V
    .locals 0
    .param p1, "mostRecentDirectorResponseTimestamp"    # Ljava/lang/Long;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    .line 245
    return-void
.end method

.method setServerUrls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "serverUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    .line 220
    return-void
.end method

.method setSynergyAnonymousId(Ljava/lang/String;)V
    .locals 0
    .param p1, "synergyAnonymousId"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    :goto_4
    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 298
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 299
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    goto :goto_1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    goto :goto_2

    .line 296
    :cond_3
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    goto :goto_3

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    .line 298
    :cond_5
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    goto :goto_5
.end method
