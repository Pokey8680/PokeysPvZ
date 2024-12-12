.class public final enum Lcom/ea/nimble/SynergyServerError$Code;
.super Ljava/lang/Enum;
.source "SynergyServerError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyServerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/SynergyServerError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_NONCE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_NOT_SUPPORTED_RECEIPT_TYPE:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_SIGNATURE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const-string v1, "ERROR_NONCE_VERIFICATION"

    const/16 v2, -0x753d

    invoke-direct {v0, v1, v3, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NONCE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    .line 8
    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const-string v1, "ERROR_SIGNATURE_VERIFICATION"

    const/16 v2, -0x753e

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_SIGNATURE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    .line 9
    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const-string v1, "ERROR_NOT_SUPPORTED_RECEIPT_TYPE"

    const/16 v2, -0x753f

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NOT_SUPPORTED_RECEIPT_TYPE:Lcom/ea/nimble/SynergyServerError$Code;

    .line 10
    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const-string v1, "AMAZON_SERVER_CONNECTION_ERROR"

    const/16 v2, -0x7540

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    .line 11
    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const-string v1, "APPLE_SERVER_CONNECTION_ERROR"

    const/16 v2, 0x2711

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ea/nimble/SynergyServerError$Code;

    sget-object v1, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NONCE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_SIGNATURE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NOT_SUPPORTED_RECEIPT_TYPE:Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/SynergyServerError$Code;->AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/SynergyServerError$Code;->APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/ea/nimble/SynergyServerError$Code;->m_value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/SynergyServerError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/ea/nimble/SynergyServerError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/SynergyServerError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/SynergyServerError$Code;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/ea/nimble/SynergyServerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/SynergyServerError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/SynergyServerError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/ea/nimble/SynergyServerError$Code;->m_value:I

    return v0
.end method
