.class public final enum Lorg/restlet/engine/connector/ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/connector/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/connector/ConnectionState;

.field public static final enum CLOSED:Lorg/restlet/engine/connector/ConnectionState;

.field public static final enum CLOSING:Lorg/restlet/engine/connector/ConnectionState;

.field public static final enum OPEN:Lorg/restlet/engine/connector/ConnectionState;

.field public static final enum OPENING:Lorg/restlet/engine/connector/ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/restlet/engine/connector/ConnectionState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/connector/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/ConnectionState;->OPENING:Lorg/restlet/engine/connector/ConnectionState;

    .line 47
    new-instance v0, Lorg/restlet/engine/connector/ConnectionState;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/connector/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/ConnectionState;->OPEN:Lorg/restlet/engine/connector/ConnectionState;

    .line 50
    new-instance v0, Lorg/restlet/engine/connector/ConnectionState;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/connector/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    .line 53
    new-instance v0, Lorg/restlet/engine/connector/ConnectionState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/connector/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/restlet/engine/connector/ConnectionState;

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->OPENING:Lorg/restlet/engine/connector/ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->OPEN:Lorg/restlet/engine/connector/ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSING:Lorg/restlet/engine/connector/ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/connector/ConnectionState;->CLOSED:Lorg/restlet/engine/connector/ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/restlet/engine/connector/ConnectionState;->$VALUES:[Lorg/restlet/engine/connector/ConnectionState;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/connector/ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/restlet/engine/connector/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/connector/ConnectionState;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/connector/ConnectionState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/restlet/engine/connector/ConnectionState;->$VALUES:[Lorg/restlet/engine/connector/ConnectionState;

    invoke-virtual {v0}, [Lorg/restlet/engine/connector/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/connector/ConnectionState;

    return-object v0
.end method
