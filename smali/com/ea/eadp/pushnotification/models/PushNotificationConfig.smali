.class public Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
.super Ljava/lang/Object;
.source "PushNotificationConfig.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private deviceIdentifier:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private disabled:Z

.field private disabledReason:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private operatingSystem:Ljava/lang/String;

.field private registrationIdentifier:Ljava/lang/String;

.field private silentIntervalEnd:Ljava/lang/Integer;

.field private silentIntervalStart:Ljava/lang/Integer;

.field private timezone:Ljava/util/TimeZone;

.field private userAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    .line 92
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    .line 93
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    .line 94
    const-string v0, "android"

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    .line 96
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "userAlias"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "operatingSystem"    # Ljava/lang/String;
    .param p4, "manufacturer"    # Ljava/lang/String;
    .param p5, "registrationIdentifier"    # Ljava/lang/String;
    .param p6, "deviceIdentifier"    # Ljava/lang/String;
    .param p7, "model"    # Ljava/lang/String;
    .param p8, "appId"    # Ljava/lang/String;
    .param p9, "appVersion"    # Ljava/lang/String;
    .param p10, "country"    # Ljava/lang/String;
    .param p11, "locale"    # Ljava/lang/String;
    .param p12, "timezone"    # Ljava/util/TimeZone;
    .param p13, "silentIntervalStart"    # Ljava/lang/Integer;
    .param p14, "silentIntervalEnd"    # Ljava/lang/Integer;
    .param p15, "dateOfBirth"    # Ljava/lang/String;
    .param p16, "disabledReason"    # Ljava/lang/String;
    .param p17, "disabled"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    iput-object p5, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    iput-object p6, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    iput-object p7, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    iput-object p8, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    iput-object p9, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    iput-object p10, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    iput-object p11, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    iput-object p12, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    iput-object p13, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    iput-object p14, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 16
    instance-of v0, p1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 37
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 16
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    const/16 v35, 0x1

    :goto_0
    return v35

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move/from16 v35, v0

    if-nez v35, :cond_1

    const/16 v35, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    check-cast v2, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    .local v2, "other":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->canEqual(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_2

    const/16 v35, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v34

    .local v34, "this$userAlias":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v18

    .local v18, "other$userAlias":Ljava/lang/String;
    if-nez v34, :cond_4

    if-eqz v18, :cond_5

    :cond_3
    const/16 v35, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v24

    .local v24, "this$deviceType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    .local v8, "other$deviceType":Ljava/lang/String;
    if-nez v24, :cond_7

    if-eqz v8, :cond_8

    :cond_6
    const/16 v35, 0x0

    goto :goto_0

    :cond_7
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getOperatingSystem()Ljava/lang/String;

    move-result-object v29

    .local v29, "this$operatingSystem":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getOperatingSystem()Ljava/lang/String;

    move-result-object v13

    .local v13, "other$operatingSystem":Ljava/lang/String;
    if-nez v29, :cond_a

    if-eqz v13, :cond_b

    :cond_9
    const/16 v35, 0x0

    goto :goto_0

    :cond_a
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v27

    .local v27, "this$manufacturer":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v11

    .local v11, "other$manufacturer":Ljava/lang/String;
    if-nez v27, :cond_d

    if-eqz v11, :cond_e

    :cond_c
    const/16 v35, 0x0

    goto :goto_0

    :cond_d
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getRegistrationIdentifier()Ljava/lang/String;

    move-result-object v30

    .local v30, "this$registrationIdentifier":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getRegistrationIdentifier()Ljava/lang/String;

    move-result-object v14

    .local v14, "other$registrationIdentifier":Ljava/lang/String;
    if-nez v30, :cond_10

    if-eqz v14, :cond_11

    :cond_f
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v23

    .local v23, "this$deviceIdentifier":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v7

    .local v7, "other$deviceIdentifier":Ljava/lang/String;
    if-nez v23, :cond_13

    if-eqz v7, :cond_14

    :cond_12
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getModel()Ljava/lang/String;

    move-result-object v28

    .local v28, "this$model":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getModel()Ljava/lang/String;

    move-result-object v12

    .local v12, "other$model":Ljava/lang/String;
    if-nez v28, :cond_16

    if-eqz v12, :cond_17

    :cond_15
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppId()Ljava/lang/String;

    move-result-object v19

    .local v19, "this$appId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppId()Ljava/lang/String;

    move-result-object v3

    .local v3, "other$appId":Ljava/lang/String;
    if-nez v19, :cond_19

    if-eqz v3, :cond_1a

    :cond_18
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_18

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v20

    .local v20, "this$appVersion":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .local v4, "other$appVersion":Ljava/lang/String;
    if-nez v20, :cond_1c

    if-eqz v4, :cond_1d

    :cond_1b
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getCountry()Ljava/lang/String;

    move-result-object v21

    .local v21, "this$country":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getCountry()Ljava/lang/String;

    move-result-object v5

    .local v5, "other$country":Ljava/lang/String;
    if-nez v21, :cond_1f

    if-eqz v5, :cond_20

    :cond_1e
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getLocale()Ljava/lang/String;

    move-result-object v26

    .local v26, "this$locale":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getLocale()Ljava/lang/String;

    move-result-object v10

    .local v10, "other$locale":Ljava/lang/String;
    if-nez v26, :cond_22

    if-eqz v10, :cond_23

    :cond_21
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getTimezone()Ljava/util/TimeZone;

    move-result-object v33

    .local v33, "this$timezone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getTimezone()Ljava/util/TimeZone;

    move-result-object v17

    .local v17, "other$timezone":Ljava/util/TimeZone;
    if-nez v33, :cond_25

    if-eqz v17, :cond_26

    :cond_24
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalStart()Ljava/lang/Integer;

    move-result-object v32

    .local v32, "this$silentIntervalStart":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalStart()Ljava/lang/Integer;

    move-result-object v16

    .local v16, "other$silentIntervalStart":Ljava/lang/Integer;
    if-nez v32, :cond_28

    if-eqz v16, :cond_29

    :cond_27
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalEnd()Ljava/lang/Integer;

    move-result-object v31

    .local v31, "this$silentIntervalEnd":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalEnd()Ljava/lang/Integer;

    move-result-object v15

    .local v15, "other$silentIntervalEnd":Ljava/lang/Integer;
    if-nez v31, :cond_2b

    if-eqz v15, :cond_2c

    :cond_2a
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2a

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDateOfBirth()Ljava/lang/String;

    move-result-object v22

    .local v22, "this$dateOfBirth":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDateOfBirth()Ljava/lang/String;

    move-result-object v6

    .local v6, "other$dateOfBirth":Ljava/lang/String;
    if-nez v22, :cond_2e

    if-eqz v6, :cond_2f

    :cond_2d
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDisabledReason()Ljava/lang/String;

    move-result-object v25

    .local v25, "this$disabledReason":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDisabledReason()Ljava/lang/String;

    move-result-object v9

    .local v9, "other$disabledReason":Ljava/lang/String;
    if-nez v25, :cond_31

    if-eqz v9, :cond_32

    :cond_30
    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_30

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v35

    invoke-virtual {v2}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_33

    const/16 v35, 0x0

    goto/16 :goto_0

    :cond_33
    const/16 v35, 0x1

    goto/16 :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatingSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSilentIntervalEnd()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSilentIntervalStart()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimezone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 20

    .prologue
    .line 16
    const/16 v16, 0x1f

    .local v16, "PRIME":I
    const/16 v17, 0x1

    .local v17, "result":I
    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v15

    .local v15, "$userAlias":Ljava/lang/String;
    if-nez v15, :cond_0

    const/16 v18, 0x0

    :goto_0
    add-int/lit8 v17, v18, 0x1f

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    .local v5, "$deviceType":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v5, :cond_1

    const/16 v18, 0x0

    :goto_1
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getOperatingSystem()Ljava/lang/String;

    move-result-object v10

    .local v10, "$operatingSystem":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v10, :cond_2

    const/16 v18, 0x0

    :goto_2
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v8

    .local v8, "$manufacturer":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v8, :cond_3

    const/16 v18, 0x0

    :goto_3
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getRegistrationIdentifier()Ljava/lang/String;

    move-result-object v11

    .local v11, "$registrationIdentifier":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v11, :cond_4

    const/16 v18, 0x0

    :goto_4
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v4

    .local v4, "$deviceIdentifier":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v4, :cond_5

    const/16 v18, 0x0

    :goto_5
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getModel()Ljava/lang/String;

    move-result-object v9

    .local v9, "$model":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v9, :cond_6

    const/16 v18, 0x0

    :goto_6
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    .local v0, "$appId":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v0, :cond_7

    const/16 v18, 0x0

    :goto_7
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .local v1, "$appVersion":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v1, :cond_8

    const/16 v18, 0x0

    :goto_8
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getCountry()Ljava/lang/String;

    move-result-object v2

    .local v2, "$country":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v2, :cond_9

    const/16 v18, 0x0

    :goto_9
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getLocale()Ljava/lang/String;

    move-result-object v7

    .local v7, "$locale":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v7, :cond_a

    const/16 v18, 0x0

    :goto_a
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getTimezone()Ljava/util/TimeZone;

    move-result-object v14

    .local v14, "$timezone":Ljava/util/TimeZone;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v14, :cond_b

    const/16 v18, 0x0

    :goto_b
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalStart()Ljava/lang/Integer;

    move-result-object v13

    .local v13, "$silentIntervalStart":Ljava/lang/Integer;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v13, :cond_c

    const/16 v18, 0x0

    :goto_c
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalEnd()Ljava/lang/Integer;

    move-result-object v12

    .local v12, "$silentIntervalEnd":Ljava/lang/Integer;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v12, :cond_d

    const/16 v18, 0x0

    :goto_d
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDateOfBirth()Ljava/lang/String;

    move-result-object v3

    .local v3, "$dateOfBirth":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v3, :cond_e

    const/16 v18, 0x0

    :goto_e
    add-int v17, v19, v18

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDisabledReason()Ljava/lang/String;

    move-result-object v6

    .local v6, "$disabledReason":Ljava/lang/String;
    mul-int/lit8 v19, v17, 0x1f

    if-nez v6, :cond_f

    const/16 v18, 0x0

    :goto_f
    add-int v17, v19, v18

    mul-int/lit8 v19, v17, 0x1f

    invoke-virtual/range {p0 .. p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x4cf

    :goto_10
    add-int v17, v19, v18

    return v17

    .end local v0    # "$appId":Ljava/lang/String;
    .end local v1    # "$appVersion":Ljava/lang/String;
    .end local v2    # "$country":Ljava/lang/String;
    .end local v3    # "$dateOfBirth":Ljava/lang/String;
    .end local v4    # "$deviceIdentifier":Ljava/lang/String;
    .end local v5    # "$deviceType":Ljava/lang/String;
    .end local v6    # "$disabledReason":Ljava/lang/String;
    .end local v7    # "$locale":Ljava/lang/String;
    .end local v8    # "$manufacturer":Ljava/lang/String;
    .end local v9    # "$model":Ljava/lang/String;
    .end local v10    # "$operatingSystem":Ljava/lang/String;
    .end local v11    # "$registrationIdentifier":Ljava/lang/String;
    .end local v12    # "$silentIntervalEnd":Ljava/lang/Integer;
    .end local v13    # "$silentIntervalStart":Ljava/lang/Integer;
    .end local v14    # "$timezone":Ljava/util/TimeZone;
    :cond_0
    invoke-virtual {v15}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_0

    .restart local v5    # "$deviceType":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_1

    .restart local v10    # "$operatingSystem":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_2

    .restart local v8    # "$manufacturer":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_3

    .restart local v11    # "$registrationIdentifier":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_4

    .restart local v4    # "$deviceIdentifier":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_5

    .restart local v9    # "$model":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_6

    .restart local v0    # "$appId":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_7

    .restart local v1    # "$appVersion":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_8

    .restart local v2    # "$country":Ljava/lang/String;
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_9

    .restart local v7    # "$locale":Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_a

    .restart local v14    # "$timezone":Ljava/util/TimeZone;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto/16 :goto_b

    .restart local v13    # "$silentIntervalStart":Ljava/lang/Integer;
    :cond_c
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto :goto_c

    .restart local v12    # "$silentIntervalEnd":Ljava/lang/Integer;
    :cond_d
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto :goto_d

    .restart local v3    # "$dateOfBirth":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto :goto_e

    .restart local v6    # "$disabledReason":Ljava/lang/String;
    :cond_f
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v18

    goto :goto_f

    :cond_10
    const/16 v18, 0x4d5

    goto :goto_10
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    return-void
.end method

.method public setDisabledReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "disabledReason"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    return-void
.end method

.method public setOperatingSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "operatingSystem"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationIdentifier"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setSilentIntervalEnd(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "silentIntervalEnd"    # Ljava/lang/Integer;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    return-void
.end method

.method public setSilentIntervalStart(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "silentIntervalStart"    # Ljava/lang/Integer;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    return-void
.end method

.method public setTimezone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAlias"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushNotificationConfig(userAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getUserAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", operatingSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getOperatingSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", registrationIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getRegistrationIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getTimezone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silentIntervalStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalStart()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silentIntervalEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getSilentIntervalEnd()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dateOfBirth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDateOfBirth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabledReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->getDisabledReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->isDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAppId(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withAppVersion(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withCountry(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withDateOfBirth(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v16, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withDeviceIdentifier(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "deviceIdentifier"    # Ljava/lang/String;

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withDeviceType(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withDisabled(Z)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "disabled"    # Z

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v18, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withDisabledReason(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "disabledReason"    # Ljava/lang/String;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v17, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withLocale(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withManufacturer(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withModel(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withOperatingSystem(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "operatingSystem"    # Ljava/lang/String;

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withRegistrationIdentifier(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "registrationIdentifier"    # Ljava/lang/String;

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withSilentIntervalEnd(Ljava/lang/Integer;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "silentIntervalEnd"    # Ljava/lang/Integer;

    .prologue
    .line 75
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v15, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withSilentIntervalStart(Ljava/lang/Integer;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "silentIntervalStart"    # Ljava/lang/Integer;

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withTimezone(Ljava/util/TimeZone;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v13, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public withUserAlias(Ljava/lang/String;)Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    .locals 19
    .param p1, "userAlias"    # Ljava/lang/String;

    .prologue
    .line 23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->userAlias:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v1, v0, :cond_0

    .end local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;
    :cond_0
    new-instance v1, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->operatingSystem:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->manufacturer:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->registrationIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->deviceIdentifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->model:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->appVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->country:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->locale:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->timezone:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalStart:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->silentIntervalEnd:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->dateOfBirth:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabledReason:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;->disabled:Z

    move/from16 v18, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lcom/ea/eadp/pushnotification/models/PushNotificationConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p0, v1

    goto :goto_0
.end method
