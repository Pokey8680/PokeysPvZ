.class final enum Lcom/ea/nimble/ComponentManager$Stage;
.super Ljava/lang/Enum;
.source "ComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/ComponentManager$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum CREATE:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum READY:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum SETUP:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    .line 17
    new-instance v0, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v1, "SETUP"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    .line 18
    new-instance v0, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    .line 19
    new-instance v0, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1, v5}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->$VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/ComponentManager$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/ea/nimble/ComponentManager$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/ComponentManager$Stage;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/ComponentManager$Stage;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->$VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v0}, [Lcom/ea/nimble/ComponentManager$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/ComponentManager$Stage;

    return-object v0
.end method
