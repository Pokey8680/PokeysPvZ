.class public final enum Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
.super Ljava/lang/Enum;
.source "NimbleMTXTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/NimbleMTXTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum USER_INITIATED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum WAITING_FOR_PLATFORM_CONSUMPTION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum WAITING_FOR_PLATFORM_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum WAITING_FOR_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

.field public static final enum WAITING_FOR_VERIFICATION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 17
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "USER_INITIATED"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 18
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "WAITING_FOR_PREPURCHASE_INFO"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 19
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "WAITING_FOR_PLATFORM_RESPONSE"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 20
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "WAITING_FOR_VERIFICATION"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_VERIFICATION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 21
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 22
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "WAITING_FOR_PLATFORM_CONSUMPTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_CONSUMPTION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 23
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->UNDEFINED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_VERIFICATION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->WAITING_FOR_PLATFORM_CONSUMPTION:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->COMPLETE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    invoke-virtual {v0}, [Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionState;

    return-object v0
.end method
