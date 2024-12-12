.class public final enum Lcom/ea/nimble/Persistence$Storage;
.super Ljava/lang/Enum;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Storage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/Persistence$Storage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/Persistence$Storage;

.field public static final enum CACHE:Lcom/ea/nimble/Persistence$Storage;

.field public static final enum DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

.field public static final enum TEMP:Lcom/ea/nimble/Persistence$Storage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/ea/nimble/Persistence$Storage;

    const-string v1, "DOCUMENT"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Persistence$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    .line 33
    new-instance v0, Lcom/ea/nimble/Persistence$Storage;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/Persistence$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    .line 34
    new-instance v0, Lcom/ea/nimble/Persistence$Storage;

    const-string v1, "TEMP"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/Persistence$Storage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Persistence$Storage;->TEMP:Lcom/ea/nimble/Persistence$Storage;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ea/nimble/Persistence$Storage;

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->TEMP:Lcom/ea/nimble/Persistence$Storage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/Persistence$Storage;->$VALUES:[Lcom/ea/nimble/Persistence$Storage;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/Persistence$Storage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Persistence$Storage;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/Persistence$Storage;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ea/nimble/Persistence$Storage;->$VALUES:[Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v0}, [Lcom/ea/nimble/Persistence$Storage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/Persistence$Storage;

    return-object v0
.end method
