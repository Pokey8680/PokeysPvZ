.class public final enum Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
.super Ljava/lang/Enum;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaStatusReasonCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_NONE"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 34
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_ONE"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 35
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 36
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_INVALID_EMAIL"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 37
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 38
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 39
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 40
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 41
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 42
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 43
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 44
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 45
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 46
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 47
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_MISTYPED_ID"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 48
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_ABUSED_ID"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 49
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 50
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 51
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 52
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_BANNED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 53
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    .line 31
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object v0
.end method
