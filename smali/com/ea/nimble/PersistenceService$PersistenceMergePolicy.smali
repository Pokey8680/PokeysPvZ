.class public final enum Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;
.super Ljava/lang/Enum;
.source "PersistenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/PersistenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersistenceMergePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

.field public static final enum OVERWRITE:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

.field public static final enum SOURCE_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

.field public static final enum TARGET_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    const-string v1, "OVERWRITE"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->OVERWRITE:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    .line 31
    new-instance v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    const-string v1, "SOURCE_FIRST"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->SOURCE_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    .line 32
    new-instance v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    const-string v1, "TARGET_FIRST"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->TARGET_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    sget-object v1, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->OVERWRITE:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->SOURCE_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->TARGET_FIRST:Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->$VALUES:[Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->$VALUES:[Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    invoke-virtual {v0}, [Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    return-object v0
.end method
