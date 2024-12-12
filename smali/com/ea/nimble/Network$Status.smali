.class public final enum Lcom/ea/nimble/Network$Status;
.super Ljava/lang/Enum;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/Network$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/Network$Status;

.field public static final enum DEAD:Lcom/ea/nimble/Network$Status;

.field public static final enum NONE:Lcom/ea/nimble/Network$Status;

.field public static final enum OK:Lcom/ea/nimble/Network$Status;

.field public static final enum UNKNOWN:Lcom/ea/nimble/Network$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/ea/nimble/Network$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    .line 19
    new-instance v0, Lcom/ea/nimble/Network$Status;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    .line 20
    new-instance v0, Lcom/ea/nimble/Network$Status;

    const-string v1, "DEAD"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    .line 21
    new-instance v0, Lcom/ea/nimble/Network$Status;

    const-string v1, "OK"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ea/nimble/Network$Status;

    sget-object v1, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ea/nimble/Network$Status;->$VALUES:[Lcom/ea/nimble/Network$Status;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/Network$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/ea/nimble/Network$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Network$Status;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/Network$Status;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ea/nimble/Network$Status;->$VALUES:[Lcom/ea/nimble/Network$Status;

    invoke-virtual {v0}, [Lcom/ea/nimble/Network$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/Network$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/ea/nimble/Network$1;->$SwitchMap$com$ea$nimble$Network$Status:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Network$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    const-string v0, "NET UNKNOWN"

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    const-string v0, "NET NONE"

    goto :goto_0

    .line 31
    :pswitch_1
    const-string v0, "NET DEAD"

    goto :goto_0

    .line 33
    :pswitch_2
    const-string v0, "NET OK"

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
