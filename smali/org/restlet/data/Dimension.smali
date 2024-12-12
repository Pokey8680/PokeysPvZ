.class public final enum Lorg/restlet/data/Dimension;
.super Ljava/lang/Enum;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/restlet/data/Dimension;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/restlet/data/Dimension;

.field public static final enum AUTHORIZATION:Lorg/restlet/data/Dimension;

.field public static final enum CHARACTER_SET:Lorg/restlet/data/Dimension;

.field public static final enum CLIENT_ADDRESS:Lorg/restlet/data/Dimension;

.field public static final enum CLIENT_AGENT:Lorg/restlet/data/Dimension;

.field public static final enum ENCODING:Lorg/restlet/data/Dimension;

.field public static final enum LANGUAGE:Lorg/restlet/data/Dimension;

.field public static final enum MEDIA_TYPE:Lorg/restlet/data/Dimension;

.field public static final enum TIME:Lorg/restlet/data/Dimension;

.field public static final enum UNSPECIFIED:Lorg/restlet/data/Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "AUTHORIZATION"

    invoke-direct {v0, v1, v3}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->AUTHORIZATION:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "CHARACTER_SET"

    invoke-direct {v0, v1, v4}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->CHARACTER_SET:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "CLIENT_ADDRESS"

    invoke-direct {v0, v1, v5}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->CLIENT_ADDRESS:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "CLIENT_AGENT"

    invoke-direct {v0, v1, v6}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->CLIENT_AGENT:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v7}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->UNSPECIFIED:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "ENCODING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->ENCODING:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->LANGUAGE:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "MEDIA_TYPE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->MEDIA_TYPE:Lorg/restlet/data/Dimension;

    new-instance v0, Lorg/restlet/data/Dimension;

    const-string v1, "TIME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/restlet/data/Dimension;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/restlet/data/Dimension;->TIME:Lorg/restlet/data/Dimension;

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/restlet/data/Dimension;

    sget-object v1, Lorg/restlet/data/Dimension;->AUTHORIZATION:Lorg/restlet/data/Dimension;

    aput-object v1, v0, v3

    sget-object v1, Lorg/restlet/data/Dimension;->CHARACTER_SET:Lorg/restlet/data/Dimension;

    aput-object v1, v0, v4

    sget-object v1, Lorg/restlet/data/Dimension;->CLIENT_ADDRESS:Lorg/restlet/data/Dimension;

    aput-object v1, v0, v5

    sget-object v1, Lorg/restlet/data/Dimension;->CLIENT_AGENT:Lorg/restlet/data/Dimension;

    aput-object v1, v0, v6

    sget-object v1, Lorg/restlet/data/Dimension;->UNSPECIFIED:Lorg/restlet/data/Dimension;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/restlet/data/Dimension;->ENCODING:Lorg/restlet/data/Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/restlet/data/Dimension;->LANGUAGE:Lorg/restlet/data/Dimension;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/restlet/data/Dimension;->MEDIA_TYPE:Lorg/restlet/data/Dimension;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/restlet/data/Dimension;->TIME:Lorg/restlet/data/Dimension;

    aput-object v2, v0, v1

    sput-object v0, Lorg/restlet/data/Dimension;->$VALUES:[Lorg/restlet/data/Dimension;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/Dimension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lorg/restlet/data/Dimension;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Dimension;

    return-object v0
.end method

.method public static values()[Lorg/restlet/data/Dimension;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/restlet/data/Dimension;->$VALUES:[Lorg/restlet/data/Dimension;

    invoke-virtual {v0}, [Lorg/restlet/data/Dimension;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/restlet/data/Dimension;

    return-object v0
.end method
