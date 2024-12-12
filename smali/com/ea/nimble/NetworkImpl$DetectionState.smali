.class final enum Lcom/ea/nimble/NetworkImpl$DetectionState;
.super Ljava/lang/Enum;
.source "NetworkImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/NetworkImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DetectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/NetworkImpl$DetectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/NetworkImpl$DetectionState;

.field public static final enum NONE:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field public static final enum PING:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field public static final enum VERIFY_REACHABLE_BACKUP:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field public static final enum VERIFY_REACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

.field public static final enum VERIFY_UNREACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/NetworkImpl$DetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->NONE:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 50
    new-instance v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    const-string v1, "VERIFY_REACHABLE_MAIN"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/NetworkImpl$DetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 51
    new-instance v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    const-string v1, "VERIFY_UNREACHABLE_MAIN"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/NetworkImpl$DetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_UNREACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 52
    new-instance v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    const-string v1, "VERIFY_REACHABLE_BACKUP"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/NetworkImpl$DetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_BACKUP:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 53
    new-instance v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/NetworkImpl$DetectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->PING:Lcom/ea/nimble/NetworkImpl$DetectionState;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ea/nimble/NetworkImpl$DetectionState;

    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->NONE:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_UNREACHABLE_MAIN:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->VERIFY_REACHABLE_BACKUP:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/NetworkImpl$DetectionState;->PING:Lcom/ea/nimble/NetworkImpl$DetectionState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->$VALUES:[Lcom/ea/nimble/NetworkImpl$DetectionState;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/NetworkImpl$DetectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/NetworkImpl$DetectionState;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/NetworkImpl$DetectionState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/ea/nimble/NetworkImpl$DetectionState;->$VALUES:[Lcom/ea/nimble/NetworkImpl$DetectionState;

    invoke-virtual {v0}, [Lcom/ea/nimble/NetworkImpl$DetectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/NetworkImpl$DetectionState;

    return-object v0
.end method
