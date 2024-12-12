.class public final enum Lorg/restlet/engine/io/ChunkState;
.super Ljava/lang/Enum;
.source "ChunkState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/engine/io/ChunkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/engine/io/ChunkState;

.field public static final enum DATA:Lorg/restlet/engine/io/ChunkState;

.field public static final enum END:Lorg/restlet/engine/io/ChunkState;

.field public static final enum SIZE:Lorg/restlet/engine/io/ChunkState;

.field public static final enum TRAILER:Lorg/restlet/engine/io/ChunkState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lorg/restlet/engine/io/ChunkState;

    const-string v1, "SIZE"

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/io/ChunkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/ChunkState;->SIZE:Lorg/restlet/engine/io/ChunkState;

    .line 47
    new-instance v0, Lorg/restlet/engine/io/ChunkState;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v3}, Lorg/restlet/engine/io/ChunkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/ChunkState;->DATA:Lorg/restlet/engine/io/ChunkState;

    .line 50
    new-instance v0, Lorg/restlet/engine/io/ChunkState;

    const-string v1, "TRAILER"

    invoke-direct {v0, v1, v4}, Lorg/restlet/engine/io/ChunkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/ChunkState;->TRAILER:Lorg/restlet/engine/io/ChunkState;

    .line 53
    new-instance v0, Lorg/restlet/engine/io/ChunkState;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lorg/restlet/engine/io/ChunkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/engine/io/ChunkState;->END:Lorg/restlet/engine/io/ChunkState;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/restlet/engine/io/ChunkState;

    sget-object v1, Lorg/restlet/engine/io/ChunkState;->SIZE:Lorg/restlet/engine/io/ChunkState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/restlet/engine/io/ChunkState;->DATA:Lorg/restlet/engine/io/ChunkState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/engine/io/ChunkState;->TRAILER:Lorg/restlet/engine/io/ChunkState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/engine/io/ChunkState;->END:Lorg/restlet/engine/io/ChunkState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/restlet/engine/io/ChunkState;->$VALUES:[Lorg/restlet/engine/io/ChunkState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/engine/io/ChunkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lorg/restlet/engine/io/ChunkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/engine/io/ChunkState;

    return-object v0
.end method

.method public static values()[Lorg/restlet/engine/io/ChunkState;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/restlet/engine/io/ChunkState;->$VALUES:[Lorg/restlet/engine/io/ChunkState;

    invoke-virtual {v0}, [Lorg/restlet/engine/io/ChunkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/engine/io/ChunkState;

    return-object v0
.end method
