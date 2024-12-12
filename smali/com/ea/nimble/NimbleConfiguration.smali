.class public final enum Lcom/ea/nimble/NimbleConfiguration;
.super Ljava/lang/Enum;
.source "NimbleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/NimbleConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum LIVE:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum STAGE:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    .line 6
    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "INTEGRATION"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "STAGE"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "CUSTOMIZED"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ea/nimble/NimbleConfiguration;

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->$VALUES:[Lcom/ea/nimble/NimbleConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    .line 28
    :goto_0
    return-object v0

    .line 14
    :cond_0
    const-string v0, "stage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    goto :goto_0

    .line 18
    :cond_1
    const-string v0, "live"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    goto :goto_0

    .line 22
    :cond_2
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    goto :goto_0

    .line 28
    :cond_3
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/ea/nimble/NimbleConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NimbleConfiguration;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->$VALUES:[Lcom/ea/nimble/NimbleConfiguration;

    invoke-virtual {v0}, [Lcom/ea/nimble/NimbleConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/NimbleConfiguration;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration$1;->$SwitchMap$com$ea$nimble$NimbleConfiguration:[I

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleConfiguration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const-string v0, "int"

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "stage"

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "live"

    goto :goto_0

    .line 49
    :pswitch_3
    const-string v0, "custom"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
