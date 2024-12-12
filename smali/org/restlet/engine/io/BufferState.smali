.class public final enum Lorg/restlet/engine/io/BufferState;
.super Ljava/lang/Enum;
.source "BufferState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/io/BufferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/io/BufferState;

.field public static final enum DRAINING:Lorg/restlet/engine/io/BufferState;

.field public static final enum FILLED:Lorg/restlet/engine/io/BufferState;

.field public static final enum FILLING:Lorg/restlet/engine/io/BufferState;

.field public static final enum IDLE:Lorg/restlet/engine/io/BufferState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lorg/restlet/engine/io/BufferState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/io/BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    .line 48
    new-instance v0, Lorg/restlet/engine/io/BufferState;

    const-string v1, "FILLING"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/io/BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    .line 51
    new-instance v0, Lorg/restlet/engine/io/BufferState;

    const-string v1, "FILLED"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/io/BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/BufferState;->FILLED:Lorg/restlet/engine/io/BufferState;

    .line 54
    new-instance v0, Lorg/restlet/engine/io/BufferState;

    const-string v1, "DRAINING"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/io/BufferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/restlet/engine/io/BufferState;

    sget-object v1, Lorg/restlet/engine/io/BufferState;->IDLE:Lorg/restlet/engine/io/BufferState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/restlet/engine/io/BufferState;->FILLING:Lorg/restlet/engine/io/BufferState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/io/BufferState;->FILLED:Lorg/restlet/engine/io/BufferState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/io/BufferState;->DRAINING:Lorg/restlet/engine/io/BufferState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/restlet/engine/io/BufferState;->$VALUES:[Lorg/restlet/engine/io/BufferState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/io/BufferState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lorg/restlet/engine/io/BufferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/BufferState;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/io/BufferState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/restlet/engine/io/BufferState;->$VALUES:[Lorg/restlet/engine/io/BufferState;

    invoke-virtual {v0}, [Lorg/restlet/engine/io/BufferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/io/BufferState;

    return-object v0
.end method
