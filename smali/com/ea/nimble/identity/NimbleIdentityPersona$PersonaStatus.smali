.class public final enum Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
.super Ljava/lang/Enum;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_NONE"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 22
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_PENDING"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 23
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 24
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_DEACTIVATED"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 25
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 26
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_DELETED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 27
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_BANNED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object v0
.end method
