.class public final enum Lcom/ea/nimble/mtx/NimbleMTXError$Code;
.super Ljava/lang/Enum;
.source "NimbleMTXError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/NimbleMTXError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/mtx/NimbleMTXError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ERROR_GETTING_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_SERVER_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_TRANSACTION_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_DEFERRED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "BILLING_NOT_AVAILABLE"

    const/16 v2, 0x4e20

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 10
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "ITEM_ALREADY_OWNED"

    const/16 v2, 0x4e21

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 11
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "ITEM_NOT_OWNED"

    const/16 v2, 0x4e22

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 12
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "USER_CANCELED"

    const/16 v2, 0x4e23

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 13
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "VERIFICATION_ERROR"

    const/16 v2, 0x4e24

    invoke-direct {v0, v1, v8, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 14
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "GET_NONCE_ERROR"

    const/4 v2, 0x5

    const/16 v3, 0x4e25

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 15
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "NON_CRITICAL_INTERRUPTION"

    const/4 v2, 0x6

    const/16 v3, 0x4e26

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 16
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "INTERNAL_STATE"

    const/4 v2, 0x7

    const/16 v3, 0x4e27

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 17
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "TRANSACTION_PENDING"

    const/16 v2, 0x8

    const/16 v3, 0x4e28

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 18
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "TRANSACTION_NOT_RESUMABLE"

    const/16 v2, 0x9

    const/16 v3, 0x4e29

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 19
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "UNRECOGNIZED_TRANSACTION_ID"

    const/16 v2, 0xa

    const/16 v3, 0x4e2a

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 20
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "INVALID_TRANSACTION_STATE"

    const/16 v2, 0xb

    const/16 v3, 0x4e2b

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_TRANSACTION_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 21
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "UNABLE_TO_CONSTRUCT_REQUEST"

    const/16 v2, 0xc

    const/16 v3, 0x4e2c

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 22
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "PLATFORM_ERROR"

    const/16 v2, 0xd

    const/16 v3, 0x4e2d

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 23
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "INVALID_SERVER_RESPONSE"

    const/16 v2, 0xe

    const/16 v3, 0x4e2e

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SERVER_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 24
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "ERROR_GETTING_PREPURCHASE_INFO"

    const/16 v2, 0xf

    const/16 v3, 0x4e2f

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ERROR_GETTING_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 25
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "ITEM_UNAVAILABLE"

    const/16 v2, 0x10

    const/16 v3, 0x4e30

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 26
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "INVALID_SKU"

    const/16 v2, 0x11

    const/16 v3, 0x4e31

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 27
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "TRANSACTION_DEFERRED"

    const/16 v2, 0x12

    const/16 v3, 0x4e32

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_DEFERRED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 28
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v1, "TRANSACTION_SUPERSEDED"

    const/16 v2, 0x13

    const/16 v3, 0x4e33

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 7
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_TRANSACTION_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SERVER_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ERROR_GETTING_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_DEFERRED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->m_value:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->m_value:I

    return v0
.end method
