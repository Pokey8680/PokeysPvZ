.class final enum Lcom/ea/nimble/BaseCore$State;
.super Ljava/lang/Enum;
.source "BaseCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/BaseCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/BaseCore$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/BaseCore$State;

.field public static final enum AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

.field public static final enum DESTROY:Lcom/ea/nimble/BaseCore$State;

.field public static final enum INACTIVE:Lcom/ea/nimble/BaseCore$State;

.field public static final enum MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

.field public static final enum MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

.field public static final enum QUITTING:Lcom/ea/nimble/BaseCore$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 383
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    .line 384
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "AUTO_SETUP"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    .line 385
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "MANUAL_SETUP"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    .line 386
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "MANUAL_TEARDOWN"

    invoke-direct {v0, v1, v6}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    .line 387
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "QUITTING"

    invoke-direct {v0, v1, v7}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->QUITTING:Lcom/ea/nimble/BaseCore$State;

    .line 388
    new-instance v0, Lcom/ea/nimble/BaseCore$State;

    const-string v1, "DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/BaseCore$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    .line 381
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->QUITTING:Lcom/ea/nimble/BaseCore$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/BaseCore$State;->$VALUES:[Lcom/ea/nimble/BaseCore$State;

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
    .line 381
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/BaseCore$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 381
    const-class v0, Lcom/ea/nimble/BaseCore$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/BaseCore$State;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/BaseCore$State;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->$VALUES:[Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v0}, [Lcom/ea/nimble/BaseCore$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/BaseCore$State;

    return-object v0
.end method
