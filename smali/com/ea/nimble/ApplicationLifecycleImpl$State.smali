.class final enum Lcom/ea/nimble/ApplicationLifecycleImpl$State;
.super Ljava/lang/Enum;
.source "ApplicationLifecycleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ApplicationLifecycleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/ApplicationLifecycleImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 481
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 482
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 483
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 484
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 485
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "SUSPEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 486
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "QUIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 487
    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "CONFIG_CHANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 478
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->$VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

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
    .line 478
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 478
    const-class v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    .locals 1

    .prologue
    .line 478
    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->$VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v0}, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    return-object v0
.end method
