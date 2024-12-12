.class public final enum Lcom/ea/nimble/SynergyIdManagerError$Code;
.super Ljava/lang/Enum;
.source "SynergyIdManagerError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyIdManagerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/SynergyIdManagerError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "AUTHENTICATOR_CONFLICT"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v3, v2}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

    .line 8
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "UNEXPECTED_LOGIN_STATE"

    const/16 v2, 0x1389

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    .line 9
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "INVALID_ID"

    const/16 v2, 0x138a

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

    .line 10
    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const-string v1, "MISSING_AUTHENTICATOR"

    const/16 v2, 0x138b

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ea/nimble/SynergyIdManagerError$Code;

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/ea/nimble/SynergyIdManagerError$Code;->m_value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/SynergyIdManagerError$Code;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/SynergyIdManagerError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/SynergyIdManagerError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ea/nimble/SynergyIdManagerError$Code;->m_value:I

    return v0
.end method
