.class synthetic Lcom/ea/nimble/tracking/SynergyConstants$1;
.super Ljava/lang/Object;
.source "SynergyConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/SynergyConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 273
    invoke-static {}, Lcom/ea/nimble/tracking/SynergyConstants;->values()[Lcom/ea/nimble/tracking/SynergyConstants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    :try_start_0
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_NORMALLY:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_AFTERINSTALL:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_AFTERUPGRADE:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APPSTART_FROMPUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_START:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_ENTER_FOREGROUND_FROM_URL:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_NEW_SESSION_START_SYNERGYID_CHANGE:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_RESUME_FROM_PUSH:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_END:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/ea/nimble/tracking/SynergyConstants$1;->$SwitchMap$com$ea$nimble$tracking$SynergyConstants:[I

    sget-object v1, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_APP_SESSION_TIME:Lcom/ea/nimble/tracking/SynergyConstants;

    invoke-virtual {v1}, Lcom/ea/nimble/tracking/SynergyConstants;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
