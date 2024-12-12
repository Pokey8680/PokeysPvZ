.class public final enum Lorg/codegist/crest/config/ParamType;
.super Ljava/lang/Enum;
.source "ParamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codegist/crest/config/ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codegist/crest/config/ParamType;

.field public static final enum COOKIE:Lorg/codegist/crest/config/ParamType;

.field public static final enum FORM:Lorg/codegist/crest/config/ParamType;

.field public static final enum HEADER:Lorg/codegist/crest/config/ParamType;

.field public static final enum MATRIX:Lorg/codegist/crest/config/ParamType;

.field public static final enum PATH:Lorg/codegist/crest/config/ParamType;

.field public static final enum QUERY:Lorg/codegist/crest/config/ParamType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v3}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    .line 35
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "PATH"

    invoke-direct {v0, v1, v4}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->PATH:Lorg/codegist/crest/config/ParamType;

    .line 39
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "FORM"

    invoke-direct {v0, v1, v5}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    .line 43
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v6}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->HEADER:Lorg/codegist/crest/config/ParamType;

    .line 47
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "COOKIE"

    invoke-direct {v0, v1, v7}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    .line 51
    new-instance v0, Lorg/codegist/crest/config/ParamType;

    const-string v1, "MATRIX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/codegist/crest/config/ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/codegist/crest/config/ParamType;->MATRIX:Lorg/codegist/crest/config/ParamType;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codegist/crest/config/ParamType;

    sget-object v1, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codegist/crest/config/ParamType;->PATH:Lorg/codegist/crest/config/ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codegist/crest/config/ParamType;->FORM:Lorg/codegist/crest/config/ParamType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codegist/crest/config/ParamType;->HEADER:Lorg/codegist/crest/config/ParamType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codegist/crest/config/ParamType;->COOKIE:Lorg/codegist/crest/config/ParamType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codegist/crest/config/ParamType;->MATRIX:Lorg/codegist/crest/config/ParamType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codegist/crest/config/ParamType;->$VALUES:[Lorg/codegist/crest/config/ParamType;

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

.method public static getDefault()Lorg/codegist/crest/config/ParamType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/codegist/crest/config/ParamType;->QUERY:Lorg/codegist/crest/config/ParamType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codegist/crest/config/ParamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/codegist/crest/config/ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/ParamType;

    return-object v0
.end method

.method public static values()[Lorg/codegist/crest/config/ParamType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/codegist/crest/config/ParamType;->$VALUES:[Lorg/codegist/crest/config/ParamType;

    invoke-virtual {v0}, [Lorg/codegist/crest/config/ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/ParamType;

    return-object v0
.end method
