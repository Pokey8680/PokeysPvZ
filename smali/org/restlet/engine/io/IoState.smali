.class public final enum Lorg/restlet/engine/io/IoState;
.super Ljava/lang/Enum;
.source "IoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/io/IoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/io/IoState;

.field public static final enum IDLE:Lorg/restlet/engine/io/IoState;

.field public static final enum INTEREST:Lorg/restlet/engine/io/IoState;

.field public static final enum PROCESSING:Lorg/restlet/engine/io/IoState;

.field public static final enum READY:Lorg/restlet/engine/io/IoState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/restlet/engine/io/IoState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/io/IoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    .line 48
    new-instance v0, Lorg/restlet/engine/io/IoState;

    const-string v1, "INTEREST"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/io/IoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    .line 51
    new-instance v0, Lorg/restlet/engine/io/IoState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/io/IoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    .line 54
    new-instance v0, Lorg/restlet/engine/io/IoState;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/io/IoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/restlet/engine/io/IoState;

    sget-object v1, Lorg/restlet/engine/io/IoState;->IDLE:Lorg/restlet/engine/io/IoState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/restlet/engine/io/IoState;->INTEREST:Lorg/restlet/engine/io/IoState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/io/IoState;->READY:Lorg/restlet/engine/io/IoState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/io/IoState;->PROCESSING:Lorg/restlet/engine/io/IoState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/restlet/engine/io/IoState;->$VALUES:[Lorg/restlet/engine/io/IoState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/io/IoState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lorg/restlet/engine/io/IoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/IoState;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/io/IoState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/restlet/engine/io/IoState;->$VALUES:[Lorg/restlet/engine/io/IoState;

    invoke-virtual {v0}, [Lorg/restlet/engine/io/IoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/io/IoState;

    return-object v0
.end method
