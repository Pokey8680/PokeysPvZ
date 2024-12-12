.class public final enum Lcom/ea/nimble/NimbleFacebookError$Code;
.super Ljava/lang/Enum;
.source "NimbleFacebookError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NimbleFacebookError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/NimbleFacebookError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/NimbleFacebookError$Code;

.field public static final enum FBSERVER_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

.field public static final enum RESPONSE_PARSE_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/ea/nimble/NimbleFacebookError$Code;

    const-string v1, "FBSERVER_ERROR"

    const v2, 0x15f90

    invoke-direct {v0, v1, v3, v2}, Lcom/ea/nimble/NimbleFacebookError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/NimbleFacebookError$Code;->FBSERVER_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    .line 13
    new-instance v0, Lcom/ea/nimble/NimbleFacebookError$Code;

    const-string v1, "RESPONSE_PARSE_ERROR"

    const v2, 0x15f91

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/NimbleFacebookError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/NimbleFacebookError$Code;->RESPONSE_PARSE_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ea/nimble/NimbleFacebookError$Code;

    sget-object v1, Lcom/ea/nimble/NimbleFacebookError$Code;->FBSERVER_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/NimbleFacebookError$Code;->RESPONSE_PARSE_ERROR:Lcom/ea/nimble/NimbleFacebookError$Code;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/NimbleFacebookError$Code;->$VALUES:[Lcom/ea/nimble/NimbleFacebookError$Code;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/ea/nimble/NimbleFacebookError$Code;->m_value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/NimbleFacebookError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/ea/nimble/NimbleFacebookError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NimbleFacebookError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/NimbleFacebookError$Code;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/ea/nimble/NimbleFacebookError$Code;->$VALUES:[Lcom/ea/nimble/NimbleFacebookError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/NimbleFacebookError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/NimbleFacebookError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ea/nimble/NimbleFacebookError$Code;->m_value:I

    return v0
.end method
