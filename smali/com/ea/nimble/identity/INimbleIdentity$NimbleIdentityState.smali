.class public final enum Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
.super Ljava/lang/Enum;
.source "INimbleIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/INimbleIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NimbleIdentityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

.field public static final enum NIMBLE_IDENTITY_READY:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

.field public static final enum NIMBLE_IDENTITY_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    const-string v1, "NIMBLE_IDENTITY_READY"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_READY:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .line 38
    new-instance v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    const-string v1, "NIMBLE_IDENTITY_AUTHENTICATING"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .line 39
    new-instance v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    const-string v1, "NIMBLE_IDENTITY_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_READY:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_AUTHENTICATING:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->NIMBLE_IDENTITY_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->$VALUES:[Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->$VALUES:[Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;

    return-object v0
.end method
