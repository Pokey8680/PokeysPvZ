.class public abstract enum Lorg/roboguice/shaded/goole/common/collect/BoundType;
.super Ljava/lang/Enum;
.source "BoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/roboguice/shaded/goole/common/collect/BoundType;",
        ">;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/BoundType;

.field public static final enum CLOSED:Lorg/roboguice/shaded/goole/common/collect/BoundType;

.field public static final enum OPEN:Lorg/roboguice/shaded/goole/common/collect/BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/BoundType$1;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/BoundType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->OPEN:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    .line 40
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/BoundType$2;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/BoundType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->CLOSED:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/BoundType;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/BoundType;->OPEN:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/BoundType;->CLOSED:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/BoundType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/BoundType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/collect/BoundType$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/BoundType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forBoolean(Z)Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .locals 1
    .param p0, "inclusive"    # Z

    .prologue
    .line 51
    if-eqz p0, :cond_0

    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->CLOSED:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->OPEN:Lorg/roboguice/shaded/goole/common/collect/BoundType;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;

    return-object v0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/BoundType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/BoundType;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/BoundType;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/BoundType;

    return-object v0
.end method


# virtual methods
.method abstract flip()Lorg/roboguice/shaded/goole/common/collect/BoundType;
.end method
