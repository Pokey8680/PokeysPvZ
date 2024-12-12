.class public final enum Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;
.super Ljava/lang/Enum;
.source "NimbleUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/friends/NimbleUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayedCurrentGameFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

.field public static final enum NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

.field public static final enum NOT_PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

.field public static final enum PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 17
    new-instance v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    const-string v1, "PLAYED"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 18
    new-instance v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    const-string v1, "NOT_PLAYED"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    sget-object v1, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->NOT_PLAYED:Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->$VALUES:[Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->$VALUES:[Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    invoke-virtual {v0}, [Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/friends/NimbleUser$PlayedCurrentGameFlag;

    return-object v0
.end method
