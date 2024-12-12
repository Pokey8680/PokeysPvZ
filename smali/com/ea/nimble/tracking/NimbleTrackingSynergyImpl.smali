.class Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
.super Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_PREFIX:Ljava/lang/String; = "SYNERGYTRACKING::"

.field private static final MAX_CUSTOM_EVENT_PARAMETERS:I = 0x14


# instance fields
.field private m_eventNumber:I

.field private m_mainAuthenticator:Ljava/util/Map;
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

.field private final m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private m_pidMap:Ljava/util/Map;
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

.field private m_sessionId:Ljava/lang/String;

.field private m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;-><init>()V

    .line 69
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    new-instance v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$1;)V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onSynergyIdChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onPidInfoUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->onMainAuthenticatorUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method private addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V
    .locals 3
    .param p1, "event"    # Lcom/ea/nimble/tracking/Tracking$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p2, "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "eventKeyType01"

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v1, v1, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v0, "eventValue01"

    iget-object v1, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v2, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string v0, "eventKeyType02"

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v1, v1, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string v0, "eventValue02"

    iget-object v1, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v2, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string v0, "eventKeyType03"

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v1, v1, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string v0, "eventValue03"

    iget-object v1, p1, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    const-string v2, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    return-void
.end method

.method private generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;
    .locals 31
    .param p1, "synergyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v22

    .line 702
    .local v22, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v23

    .line 703
    .local v23, "synergyIdManager":Lcom/ea/nimble/ISynergyIdManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v5

    .line 705
    .local v5, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 711
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, ""

    .line 712
    .local v3, "advertiserId":Ljava/lang/String;
    const/4 v15, 0x1

    .line 715
    .local v15, "limitAdTracking":Z
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/IApplicationEnvironment;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v3

    .line 716
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/IApplicationEnvironment;->isLimitAdTrackingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 722
    :goto_0
    const-string v26, "advertiserID"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v26, "limitAdTracking"

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-interface/range {v22 .. v22}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v20

    .line 726
    .local v20, "sellId":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v13

    .line 727
    .local v13, "hwId":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v9

    .line 728
    .local v9, "deviceId":Ljava/lang/String;
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 729
    .local v11, "firmware":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/IApplicationEnvironment;->getCarrier()Ljava/lang/String;

    move-result-object v8

    .line 730
    .local v8, "carrier":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "appVersion":Ljava/lang/String;
    const-string v19, "1.23.8.1124"

    .line 732
    .local v19, "sdkVer":Ljava/lang/String;
    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v27, "%tZ"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v26 .. v28}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 735
    .local v24, "timeZone":Ljava/lang/String;
    const-string v26, "carrier"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    const-string v26, "timezone"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const-string v27, "pflag"

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->isAppCracked()Z

    move-result v26

    if-eqz v26, :cond_4

    const-string v26, "1"

    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v27, "jflag"

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->isDeviceRooted()Z

    move-result v26

    if-eqz v26, :cond_5

    const-string v26, "1"

    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v26, "firmwareVer"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v26, "sellId"

    invoke-static/range {v20 .. v20}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    const-string v26, "buildId"

    invoke-static {v6}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    const-string v26, "sdkVer"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v26, "sdkCfg"

    const-string v27, "DL"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v26, "deviceId"

    invoke-static {v9}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v26, "hwId"

    invoke-static {v13}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string v26, "schemaVer"

    const-string v27, "2"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v26, "platform"

    const-string v27, "android"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v18, "N"

    .line 750
    .local v18, "networkAccess":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v17

    .line 751
    .local v17, "network":Lcom/ea/nimble/INetwork;
    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v26

    sget-object v27, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 753
    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/INetwork;->isNetworkWifi()Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v18, "W"

    .line 755
    :cond_0
    :goto_3
    const-string v26, "networkAccess"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v27, "originUser"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_loggedInToOrigin:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    const-string v26, "Y"

    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v25, p1

    .line 762
    .local v25, "uid":Ljava/lang/String;
    :goto_5
    if-eqz v25, :cond_1

    .line 764
    const-string v26, "uid"

    invoke-static/range {v25 .. v25}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_1
    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "android_id"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, "androidId":Ljava/lang/String;
    const-string v26, "androidId"

    invoke-static {v4}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v26, "macHash"

    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v7, ""

    .line 778
    .local v7, "aut":Ljava/lang/String;
    const-string v26, "aut"

    invoke-static {v7}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v26

    if-lez v26, :cond_2

    .line 794
    const-string v26, "pidMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    :cond_2
    if-eqz v5, :cond_3

    .line 800
    invoke-interface {v5}, Lcom/ea/nimble/IApplicationEnvironment;->getGameSpecifiedPlayerId()Ljava/lang/String;

    move-result-object v12

    .line 801
    .local v12, "gamePlayerId":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 802
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 804
    const-string v26, "gamePlayerId"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .end local v12    # "gamePlayerId":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 809
    .local v21, "session_Size":I
    if-lez v21, :cond_9

    .line 812
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    move/from16 v0, v21

    if-ge v14, v0, :cond_9

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_customSessionData:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingImplBase$SessionData;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 718
    .end local v4    # "androidId":Ljava/lang/String;
    .end local v6    # "appVersion":Ljava/lang/String;
    .end local v7    # "aut":Ljava/lang/String;
    .end local v8    # "carrier":Ljava/lang/String;
    .end local v9    # "deviceId":Ljava/lang/String;
    .end local v11    # "firmware":Ljava/lang/String;
    .end local v13    # "hwId":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "network":Lcom/ea/nimble/INetwork;
    .end local v18    # "networkAccess":Ljava/lang/String;
    .end local v19    # "sdkVer":Ljava/lang/String;
    .end local v20    # "sellId":Ljava/lang/String;
    .end local v21    # "session_Size":I
    .end local v24    # "timeZone":Ljava/lang/String;
    .end local v25    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 720
    .local v10, "e":Ljava/lang/Exception;
    const-string v26, "Exception when getting advertising ID for Android"

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 737
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "appVersion":Ljava/lang/String;
    .restart local v8    # "carrier":Ljava/lang/String;
    .restart local v9    # "deviceId":Ljava/lang/String;
    .restart local v11    # "firmware":Ljava/lang/String;
    .restart local v13    # "hwId":Ljava/lang/String;
    .restart local v19    # "sdkVer":Ljava/lang/String;
    .restart local v20    # "sellId":Ljava/lang/String;
    .restart local v24    # "timeZone":Ljava/lang/String;
    :cond_4
    const-string v26, "0"

    goto/16 :goto_1

    .line 738
    :cond_5
    const-string v26, "0"

    goto/16 :goto_2

    .line 753
    .restart local v17    # "network":Lcom/ea/nimble/INetwork;
    .restart local v18    # "networkAccess":Ljava/lang/String;
    :cond_6
    const-string v18, "G"

    goto/16 :goto_3

    .line 758
    :cond_7
    const-string v26, "N"

    goto/16 :goto_4

    .line 761
    :cond_8
    invoke-interface/range {v23 .. v23}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_5

    .line 818
    .restart local v4    # "androidId":Ljava/lang/String;
    .restart local v7    # "aut":Ljava/lang/String;
    .restart local v21    # "session_Size":I
    .restart local v25    # "uid":Ljava/lang/String;
    :cond_9
    return-object v16
.end method

.method private generateSynergySessionId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 134
    const/16 v0, 0x18

    .line 141
    .local v0, "SESSIONID_MAX_DIGITS":I
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-static {v6}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "initialSessionId":Ljava/lang/String;
    const-string v6, "_"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v5, "sessionId":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rsub-int/lit8 v4, v6, 0x18

    .line 147
    .local v4, "reqDigits":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 148
    .local v3, "random":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "digitIndex":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 150
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static isSynergyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 956
    if-nez p0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 961
    :goto_0
    return v0

    :cond_0
    const-string v0, "SYNERGYTRACKING::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private onMainAuthenticatorUpdate(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 941
    const-string v1, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 942
    .local v0, "mainAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 944
    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticator:Ljava/util/Map;

    .line 946
    :cond_0
    return-void
.end method

.method private onPidInfoUpdate(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 927
    const-string v1, "pidMapId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 928
    .local v0, "pidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 930
    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    .line 933
    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    iget-object v1, v1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    const-string v2, "pidMap"

    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_0
    return-void
.end method

.method private onSynergyIdChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 894
    const-string v3, "previousSynergyId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "previousSynergyId":Ljava/lang/String;
    const-string v3, "currentSynergyId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "currentSynergyId":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 898
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "eventType"

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_SESSION_END_SYNERGYID_CHANGE:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const-string v3, "keyType01"

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_SYNERGYID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v3, "keyValue01"

    invoke-static {v2}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    const-string v3, "keyType02"

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_SYNERGYID:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v3, "keyValue02"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v3, "SYNERGYTRACKING::CUSTOM"

    invoke-virtual {p0, v3, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 909
    iget-object v3, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {p0, v2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v3, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    .line 912
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    .line 920
    const-string v3, "eventType"

    sget-object v4, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_NEW_SESSION_START_SYNERGYID_CHANGE:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v4, v4, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    const-string v3, "SYNERGYTRACKING::CUSTOM"

    invoke-virtual {p0, v3, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 922
    return-void
.end method

.method private parseCustomParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p1, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/16 v10, 0x14

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 967
    .local v1, "customKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/16 v10, 0x14

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 968
    .local v2, "customValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 970
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 971
    .local v5, "key":Ljava/lang/String;
    const-string v11, "keyType"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 975
    :try_start_0
    const-string v11, "keyType"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 976
    .local v7, "parameterNumber":I
    if-lez v7, :cond_3

    const/16 v11, 0x14

    if-gt v7, v11, :cond_3

    .line 978
    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 980
    add-int/lit8 v11, v7, -0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    .end local v7    # "parameterNumber":I
    :catch_0
    move-exception v3

    .line 998
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Invalid format for keyType parameter. Expected keyType##, got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 984
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "parameterNumber":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "parameterIndex":I
    :goto_1
    add-int/lit8 v11, v7, -0x1

    if-ge v6, v11, :cond_2

    .line 986
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 988
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 993
    .end local v6    # "parameterIndex":I
    :cond_3
    const-string v11, "Error: Custom parameter number %d is out of range of 1-%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1001
    .end local v7    # "parameterNumber":I
    :cond_4
    const-string v11, "keyValue"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1005
    :try_start_2
    const-string v11, "keyValue"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1006
    .restart local v7    # "parameterNumber":I
    if-lez v7, :cond_7

    const/16 v11, 0x14

    if-gt v7, v11, :cond_7

    .line 1008
    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 1010
    add-int/lit8 v11, v7, -0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1026
    .end local v7    # "parameterNumber":I
    :catch_1
    move-exception v3

    .line 1028
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Invalid format for keyValue parameter. Expected keyValue##, got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1014
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "parameterNumber":I
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6    # "parameterIndex":I
    :goto_2
    add-int/lit8 v11, v7, -0x1

    if-ge v6, v11, :cond_6

    .line 1016
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1018
    :cond_6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1023
    .end local v6    # "parameterIndex":I
    :cond_7
    const-string v11, "Error: Custom parameter number %d is out of range of 1-%d"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/16 v14, 0x14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1032
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "parameterNumber":I
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1033
    .local v8, "totalParameters":I
    const/4 v6, 0x0

    .restart local v6    # "parameterIndex":I
    :goto_3
    if-ge v6, v8, :cond_d

    .line 1035
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 1036
    .restart local v5    # "key":Ljava/lang/String;
    :goto_4
    if-nez v5, :cond_9

    .line 1038
    const-string v5, "0"

    .line 1039
    const-string v10, "Error: No corresponding keyType entry for parameter number %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1041
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_c

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v9, v10

    .line 1042
    .local v9, "value":Ljava/lang/String;
    :goto_5
    if-nez v9, :cond_a

    .line 1044
    const-string v9, ""

    .line 1045
    const-string v10, "Error: No corresponding keyValue entry for parameter number %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    add-int/lit8 v13, v6, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1047
    :cond_a
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "eventKeyType%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "eventValue%02d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1035
    .end local v5    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 1041
    .restart local v5    # "key":Ljava/lang/String;
    :cond_c
    const/4 v9, 0x0

    goto :goto_5

    .line 1050
    .end local v5    # "key":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private resetSession()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSynergySessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    .line 177
    return-void
.end method

.method private sleep()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 890
    return-void
.end method

.method private wakeup()V
    .locals 2

    .prologue
    .line 884
    const-string v0, "nimble.synergyidmanager.notification.synergy_id_changed"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_synergyIdChangedReceiver:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$SynergyIdChangedReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 885
    return-void
.end method


# virtual methods
.method protected canDropSession(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/tracking/TrackingBaseSessionObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "sessionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/tracking/TrackingBaseSessionObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 865
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .line 866
    .local v2, "firstObject":Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    iget-object v5, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 868
    const-string v5, "Trying to drop session with no events"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v5, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 879
    :cond_0
    :goto_0
    return v3

    .line 871
    :cond_1
    iget-object v5, v2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 873
    .local v0, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "eventType"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    .local v1, "eventType":Ljava/lang/String;
    if-eqz v1, :cond_2

    sget-object v6, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_AFTERINSTALL:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v6, v6, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 876
    goto :goto_0
.end method

.method protected cleanup()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->sleep()V

    .line 129
    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->cleanup()V

    .line 130
    return-void
.end method

.method protected convertEvent(Lcom/ea/nimble/tracking/Tracking$Event;)Ljava/util/List;
    .locals 25
    .param p1, "event"    # Lcom/ea/nimble/tracking/Tracking$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/tracking/Tracking$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 182
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_UNDEFINED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 183
    .local v18, "type":Lcom/ea/nimble/tracking/SynergyConstants;
    const/16 v21, -0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 185
    .local v19, "typeInt":Ljava/lang/Integer;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v13, "newEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/tracking/Tracking;->isNimbleStandardEvent(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->isSynergyEvent(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 194
    const/4 v8, 0x0

    .line 572
    :goto_0
    return-object v8

    .line 197
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPSTART_NORMAL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 199
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_NORMALLY:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 491
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 493
    .local v7, "eventKey":Ljava/lang/String;
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 494
    .local v10, "eventVal":Ljava/lang/String;
    invoke-static {v10}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 496
    const-string v22, "${"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-string v22, "}"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_trackingAttributes:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 499
    .local v17, "trackingAttribute":Ljava/lang/String;
    if-eqz v17, :cond_26

    .line 501
    move-object/from16 v10, v17

    .line 507
    :goto_3
    invoke-interface {v13, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 201
    .end local v7    # "eventKey":Ljava/lang/String;
    .end local v10    # "eventVal":Ljava/lang/String;
    .end local v17    # "trackingAttribute":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 203
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_AFTERINSTALL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_1

    .line 205
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 207
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_AFTERUPGRADE:Lcom/ea/nimble/tracking/SynergyConstants;

    goto :goto_1

    .line 209
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPSTART_FROMURL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 211
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 213
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPSTART_FROMPUSH"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 215
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_FROMPUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 218
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "messageId"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 220
    .local v12, "messageId":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 234
    .end local v12    # "messageId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 236
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 227
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "messageId":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v21, "eventValue01"

    move-object/from16 v0, v21

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "messageId"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "PushNotification"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 240
    .end local v12    # "messageId":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPRESUME_FROMURL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 242
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_ENTER_FOREGROUND_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 244
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPRESUME_FROMEBISU"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 246
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_ENTER_FOREGROUND_FROM_EBISU:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 248
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::APPRESUME_FROMPUSH"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 250
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_FROM_PUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 253
    :try_start_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v22, "messageId"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 255
    .restart local v12    # "messageId":Ljava/lang/String;
    if-nez v12, :cond_b

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 270
    .end local v12    # "messageId":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 272
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 262
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "messageId":Ljava/lang/String;
    :cond_b
    :try_start_3
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v21, "eventValue01"

    move-object/from16 v0, v21

    invoke-interface {v13, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "messageId"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "PushNotification"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "PushNotification"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 275
    .end local v12    # "messageId":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::SESSION_START"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 277
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_START:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 279
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::SESSION_END"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 281
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_END:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 283
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::SESSION_TIME"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 285
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_TIME:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 286
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 289
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 291
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_ITEMPURCHASE:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 292
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 295
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 297
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_ITEM_PURCHASED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 298
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 301
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::MTX_FREEITEM_DOWNLOADED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 303
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_MTXVIEW_FREEITEM_DOWNLOADED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 304
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MTX_SELLID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 307
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 309
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_TRACKING_OPTOUT:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 311
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_DISPLAY_OPT_IN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 313
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_SHOWN_PN_OPTIN_PROMPT:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 315
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_USER_OPT_IN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 317
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_USER_SHOWN_PN_OPTIN_PROMPT:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 318
    const-string v21, "eventKeyType02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v21, "eventValue02"

    const-string v22, "Yes"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 321
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_SHOWN_TO_USER"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 323
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_SHOWN_TO_USER:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 324
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 329
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 335
    const-string v21, "eventKeyType03"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v21, "eventValue03"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 339
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_RECEIVED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 341
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_RECEIVED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addPushTNGTrackingParams(Lcom/ea/nimble/tracking/Tracking$Event;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 344
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_DEVICE_REGISTERED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 346
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_DEVICE_REGISTERED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 348
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_DATE_OF_BIRTH"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_DISABLED_FLAG"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v21, "eventKeyType03"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v21, "eventValue03"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 357
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::PN_USER_CLICKED_OK"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 359
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_PN_SHOWN_TO_USER:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 360
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_MESSAGEID:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v21, "eventKeyType02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v21, "eventValue02"

    const-string v22, "Ok"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 365
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::IDENTITY_MIGRATION"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 367
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_MIGRATION:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 369
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 379
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::IDENTITY_LOGIN"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 381
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_LOGIN:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 383
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 392
    .local v15, "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 393
    .local v11, "loginPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 395
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 397
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    .line 398
    .local v16, "targetPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 400
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 402
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1d
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "pidMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 407
    .end local v11    # "loginPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "targetPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::IDENTITY_LOGOUT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 409
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_LOGOUT:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 411
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 420
    .restart local v15    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/Utility;->convertJSONObjectStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 421
    .restart local v11    # "loginPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 423
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 425
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "pidMap"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidMap:Ljava/util/Map;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 430
    .end local v11    # "loginPidmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::IDENTITY_MIGRATION_STARTED"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 432
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_IDENTITY_MIGRATION_STARTED:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 434
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v21, "eventKeyType03"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_JSON_MAP:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v21, "eventValue03"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 443
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::TUTORIAL_COMPLETE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 445
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_GAMEPLAY_PROGRESSION_TUTORIAL_COMPLETE:Lcom/ea/nimble/tracking/SynergyConstants;

    goto/16 :goto_1

    .line 447
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "NIMBLESTANDARD::LEVEL_UP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 449
    sget-object v18, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_GP_LEVEL_PROMOTION:Lcom/ea/nimble/tracking/SynergyConstants;

    .line 452
    const-string v21, "eventKeyType01"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v21, "eventValue01"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_DURATION"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v21, "eventKeyType02"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_DURATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v21, "eventValue02"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_GAMEPLAY_DURATION"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v21, "eventKeyType03"

    sget-object v22, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string v21, "eventValue03"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v22, v0

    const-string v23, "NIMBLESTANDARD::KEY_USER_LEVEL"

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 461
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "SYNERGYTRACKING::CUSTOM"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 463
    const/16 v20, 0x0

    .line 464
    .local v20, "val":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "eventType"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 468
    .local v9, "eventType":Ljava/lang/String;
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v20

    .line 476
    invoke-static/range {v20 .. v20}, Lcom/ea/nimble/tracking/SynergyConstants;->fromInt(I)Lcom/ea/nimble/tracking/SynergyConstants;

    move-result-object v18

    .line 477
    sget-object v21, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_UNDEFINED:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_24

    .line 479
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 481
    :cond_24
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->parameters:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->parseCustomParameters(Ljava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 470
    :catch_2
    move-exception v5

    .line 472
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error: Invalid format for eventType parameter. Expected integer value, got "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 485
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "eventType":Ljava/lang/String;
    .end local v20    # "val":I
    :cond_25
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 505
    .restart local v7    # "eventKey":Ljava/lang/String;
    .restart local v10    # "eventVal":Ljava/lang/String;
    .restart local v17    # "trackingAttribute":Ljava/lang/String;
    :cond_26
    const-string v10, ""

    goto/16 :goto_3

    .line 513
    .end local v7    # "eventKey":Ljava/lang/String;
    .end local v10    # "eventVal":Ljava/lang/String;
    .end local v17    # "trackingAttribute":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/Tracking$Event;->timestamp:Ljava/util/Date;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "dateStr":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v8, "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_29

    .line 517
    const-string v21, "eventType"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :goto_7
    const-string v21, "timestamp"

    move-object/from16 v0, v21

    invoke-interface {v13, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual/range {v18 .. v18}, Lcom/ea/nimble/tracking/SynergyConstants;->isSessionStartEventType()Z

    move-result v21

    if-eqz v21, :cond_2e

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v21

    if-lez v21, :cond_28

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    .line 537
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetSession()V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 541
    .local v14, "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v22, "session"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string v22, "step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    .line 544
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 521
    .end local v14    # "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_29
    const-string v21, "eventType"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 546
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 553
    :cond_2b
    const-string v21, "session"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v21, "step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_eventNumber:I

    .line 559
    invoke-virtual/range {v18 .. v18}, Lcom/ea/nimble/tracking/SynergyConstants;->isSessionStartEventType()Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 561
    const-string v21, "Logging session start event, %s. Posting event queue now."

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v18, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetPostTimer(D)V

    .line 566
    :cond_2c
    sget-object v21, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_END:Lcom/ea/nimble/tracking/SynergyConstants;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2d

    .line 568
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    .line 571
    :cond_2d
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 548
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_2b

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pendingEvents:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected createPostRequest(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Lcom/ea/nimble/SynergyRequest;
    .locals 20
    .param p1, "sessionData"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    .line 579
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v17

    const-string v18, "synergy.tracking"

    invoke-interface/range {v17 .. v18}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 584
    .local v15, "synergyTrackingServerUrl":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 586
    const-string v17, "Tracking server URL from NimbleEnvironment is nil. Adding observer for environment update finish."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->addObserverForSynergyEnvironmentUpdateFinished()V

    .line 591
    const/4 v11, 0x0

    .line 696
    :goto_0
    return-object v11

    .line 596
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    .line 597
    .local v13, "sessionInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v10, "postDataDict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 601
    const-string v17, "now_timestamp"

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-static/range {v18 .. v18}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 605
    .local v6, "eventsList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 607
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 608
    .local v4, "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "repostCount"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->repostCount:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 610
    .end local v4    # "event":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v17, "events"

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v17, "uid"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_2

    .line 616
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v16

    .line 617
    .local v16, "uid":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 619
    const-string v17, "Creating post request. No uid in session info dictionary, inserting uid value %s now."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    const-string v17, "uid"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v16    # "uid":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v14

    .line 635
    .local v14, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    const-string v17, "sellId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 636
    .local v12, "sellId":Ljava/lang/String;
    if-eqz v12, :cond_3

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 638
    :cond_3
    invoke-interface {v14}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 639
    if-eqz v12, :cond_4

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 641
    :cond_4
    const-string v17, "Creating POST request. Missing sell id."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_5
    :goto_3
    const-string v17, "hwId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "hwId":Ljava/lang/String;
    if-eqz v7, :cond_6

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 652
    :cond_6
    invoke-interface {v14}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    if-eqz v7, :cond_7

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 655
    :cond_7
    const-string v17, "Creating POST request. Missing hw id."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :cond_8
    :goto_4
    const-string v17, "deviceId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "deviceId":Ljava/lang/String;
    if-eqz v3, :cond_9

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 666
    :cond_9
    invoke-interface {v14}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 667
    if-eqz v3, :cond_a

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 669
    :cond_a
    const-string v17, "Creating POST request. Missing device id."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    :cond_b
    :goto_5
    new-instance v11, Lcom/ea/nimble/SynergyRequest;

    const-string v17, "/tracking/api/core/logEvent"

    sget-object v18, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 678
    .local v11, "request":Lcom/ea/nimble/SynergyRequest;
    iput-object v15, v11, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 679
    iput-object v10, v11, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 682
    invoke-static {}, Lcom/ea/nimble/OperationalTelemetryDispatch;->getComponent()Lcom/ea/nimble/IOperationalTelemetryDispatch;

    move-result-object v9

    .line 683
    .local v9, "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    if-eqz v9, :cond_c

    .line 685
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 686
    .local v5, "eventDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "BASEURL"

    iget-object v0, v11, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v17, "API"

    iget-object v0, v11, Lcom/ea/nimble/SynergyRequest;->api:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v17, "POSTDATA"

    invoke-static {v10}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v17, "com.ea.nimble.trackingimpl.synergy"

    move-object/from16 v0, v17

    invoke-interface {v9, v0, v5}, Lcom/ea/nimble/IOperationalTelemetryDispatch;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 694
    .end local v5    # "eventDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string v17, "nimble.notification.trackingimpl.synergy.postingToServer"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 624
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v7    # "hwId":Ljava/lang/String;
    .end local v9    # "otDispatch":Lcom/ea/nimble/IOperationalTelemetryDispatch;
    .end local v11    # "request":Lcom/ea/nimble/SynergyRequest;
    .end local v12    # "sellId":Ljava/lang/String;
    .end local v14    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    .restart local v16    # "uid":Ljava/lang/String;
    :cond_d
    const-string v17, "Creating post request. No uid in session info dictionary, still no uid available now."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 645
    .end local v16    # "uid":Ljava/lang/String;
    .restart local v12    # "sellId":Ljava/lang/String;
    .restart local v14    # "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    :cond_e
    const-string v17, "sellId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 659
    .restart local v7    # "hwId":Ljava/lang/String;
    :cond_f
    const-string v17, "hwId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 673
    .restart local v3    # "deviceId":Ljava/lang/String;
    :cond_10
    const-string v17, "deviceId"

    move-object/from16 v0, v17

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 951
    const-string v0, "com.ea.nimble.trackingimpl.synergy"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "TrackingSynergy"

    return-object v0
.end method

.method protected getPersistenceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    const-string v0, "Synergy"

    return-object v0
.end method

.method protected isSameSession(Lcom/ea/nimble/tracking/TrackingBaseSessionObject;Lcom/ea/nimble/tracking/TrackingBaseSessionObject;)Z
    .locals 6
    .param p1, "firstObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;
    .param p2, "secondObject"    # Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 847
    iget-object v2, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 849
    :cond_0
    const-string v2, "Trying to compare session with no events"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 859
    :goto_0
    return v2

    .line 852
    :cond_1
    iget-object v2, p1, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "session"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 853
    .local v0, "firstSession":Ljava/lang/String;
    iget-object v2, p2, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->events:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "session"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 854
    .local v1, "secondSession":Ljava/lang/String;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 856
    :cond_2
    const-string v2, "Trying to compare event with no session"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 857
    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected packageCurrentSession()V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->countOfEvents()I

    move-result v0

    if-lez v0, :cond_0

    .line 826
    const-string v0, "Preparing for post, generating session info dictionary."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_currentSessionObject:Lcom/ea/nimble/tracking/TrackingBaseSessionObject;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->generateSessionInfoDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/ea/nimble/tracking/TrackingBaseSessionObject;->sessionData:Ljava/util/Map;

    .line 832
    invoke-virtual {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->queueCurrentEventsForPost()V

    .line 834
    :cond_0
    return-void
.end method

.method protected restore()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->restore()V

    .line 119
    const-string v0, "nimble.notification.identity.authenticator.pid.info.update"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_pidInfoUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 120
    const-string v0, "nimble.notification.identity.main.authenticator.change"

    iget-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_mainAuthenticatorUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 122
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->wakeup()V

    .line 123
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->setEnable(Z)V

    .line 162
    if-nez p1, :cond_0

    .line 164
    iput-object v1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->m_sessionId:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->resetSession()V

    .line 169
    const-string v0, "NIMBLESTANDARD::SESSION_START"

    invoke-virtual {p0, v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    :cond_1
    return-void
.end method
