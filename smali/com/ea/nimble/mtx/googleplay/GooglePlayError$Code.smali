.class public final enum Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
.super Ljava/lang/Enum;
.source "GooglePlayError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum BILLING_RESPONSE_RESULT_USER_CANCELED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_BAD_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_BAD_STATE_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_ERROR_BASE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_MISSING_TOKEN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_REMOTE_EXCEPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_SEND_INTENT_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_UNKNOWN_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_UNKNOWN_PURCHASE_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_USER_CANCELLED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum IABHELPER_VERIFICATION_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

.field public static final enum UNKNOWN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_USER_CANCELED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_USER_CANCELED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 10
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v4, v5}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 11
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 12
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_DEVELOPER_ERROR"

    invoke-direct {v0, v1, v5, v7}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 13
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_ERROR"

    invoke-direct {v0, v1, v6, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 14
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 15
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 16
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_ERROR_BASE"

    const/4 v2, 0x7

    const/16 v3, -0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_ERROR_BASE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 17
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_REMOTE_EXCEPTION"

    const/16 v2, 0x8

    const/16 v3, -0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_REMOTE_EXCEPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 18
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_BAD_RESPONSE"

    const/16 v2, 0x9

    const/16 v3, -0x3ea

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 19
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_VERIFICATION_FAILED"

    const/16 v2, 0xa

    const/16 v3, -0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_VERIFICATION_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 20
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_SEND_INTENT_FAILED"

    const/16 v2, 0xb

    const/16 v3, -0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_SEND_INTENT_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 21
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_USER_CANCELLED"

    const/16 v2, 0xc

    const/16 v3, -0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_USER_CANCELLED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 22
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_UNKNOWN_PURCHASE_RESPONSE"

    const/16 v2, 0xd

    const/16 v3, -0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_PURCHASE_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 23
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_MISSING_TOKEN"

    const/16 v2, 0xe

    const/16 v3, -0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_MISSING_TOKEN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 24
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_BAD_STATE_ERROR"

    const/16 v2, 0xf

    const/16 v3, -0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_STATE_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 25
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "IABHELPER_UNKNOWN_ERROR"

    const/16 v2, 0x10

    const/16 v3, -0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 26
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x11

    const/16 v3, 0x2713

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->UNKNOWN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 7
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    const/4 v1, 0x0

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_USER_CANCELED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_ERROR_BASE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_REMOTE_EXCEPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_VERIFICATION_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_SEND_INTENT_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_USER_CANCELLED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_PURCHASE_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_MISSING_TOKEN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_STATE_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->UNKNOWN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->$VALUES:[Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->m_value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->$VALUES:[Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->m_value:I

    return v0
.end method
