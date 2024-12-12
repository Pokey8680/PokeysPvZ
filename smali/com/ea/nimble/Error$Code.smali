.class public final enum Lcom/ea/nimble/Error$Code;
.super Ljava/lang/Enum;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/Error$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/Error$Code;

.field public static final enum INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

.field public static final enum MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_IMPLEMENTED:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_READY:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_AGE_COMPLIANCE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_NONCE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

.field public static final enum UNKNOWN:Lcom/ea/nimble/Error$Code;

.field public static final enum UNSUPPORTED:Lcom/ea/nimble/Error$Code;


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

    .line 18
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    .line 20
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYSTEM_UNEXPECTED"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    .line 21
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NOT_READY"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    .line 22
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "UNSUPPORTED"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->UNSUPPORTED:Lcom/ea/nimble/Error$Code;

    .line 23
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NOT_AVAILABLE"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v8, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    .line 24
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NOT_IMPLEMENTED"

    const/4 v2, 0x5

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NOT_IMPLEMENTED:Lcom/ea/nimble/Error$Code;

    .line 26
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x6

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    .line 27
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "MISSING_CALLBACK"

    const/4 v2, 0x7

    const/16 v3, 0x12c

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    .line 29
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_UNSUPPORTED_CONNECTION_TYPE"

    const/16 v2, 0x8

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

    .line 30
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_NO_CONNECTION"

    const/16 v2, 0x9

    const/16 v3, 0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    .line 31
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_UNREACHABLE"

    const/16 v2, 0xa

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

    .line 32
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_OVERSIZE_DATA"

    const/16 v2, 0xb

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    .line 33
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_OPERATION_CANCELLED"

    const/16 v2, 0xc

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    .line 34
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_INVALID_SERVER_RESPONSE"

    const/16 v2, 0xd

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    .line 35
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_TIMEOUT"

    const/16 v2, 0xe

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    .line 36
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "NETWORK_CONNECTION_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0x3f2

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    .line 38
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_SERVER_FULL"

    const/16 v2, 0x10

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    .line 39
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_GET_DIRECTION_TIMEOUT"

    const/16 v2, 0x11

    const/16 v3, 0x7d2

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    .line 40
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_GET_EA_DEVICE_ID_FAILURE"

    const/16 v2, 0x12

    const/16 v3, 0x7d3

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 41
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE"

    const/16 v2, 0x13

    const/16 v3, 0x7d4

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 42
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_GET_ANONYMOUS_ID_FAILURE"

    const/16 v2, 0x14

    const/16 v3, 0x7d5

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 43
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_ENVIRONMENT_UPDATE_FAILURE"

    const/16 v2, 0x15

    const/16 v3, 0x7d6

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 44
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_PURCHASE_VERIFICATION_FAILURE"

    const/16 v2, 0x16

    const/16 v3, 0x7d7

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 45
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_GET_NONCE_FAILURE"

    const/16 v2, 0x17

    const/16 v3, 0x7d8

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_NONCE_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 46
    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "SYNERGY_GET_AGE_COMPLIANCE_FAILURE"

    const/16 v2, 0x18

    const/16 v3, 0x7d9

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_AGE_COMPLIANCE_FAILURE:Lcom/ea/nimble/Error$Code;

    .line 16
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/ea/nimble/Error$Code;

    sget-object v1, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/Error$Code;->UNSUPPORTED:Lcom/ea/nimble/Error$Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/Error$Code;->NOT_IMPLEMENTED:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_NONCE_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_AGE_COMPLIANCE_FAILURE:Lcom/ea/nimble/Error$Code;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/Error$Code;->$VALUES:[Lcom/ea/nimble/Error$Code;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/ea/nimble/Error$Code;->m_value:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/Error$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/ea/nimble/Error$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Error$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/Error$Code;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/ea/nimble/Error$Code;->$VALUES:[Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/Error$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/Error$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ea/nimble/Error$Code;->m_value:I

    return v0
.end method
