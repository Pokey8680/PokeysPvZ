.class public final enum Lorg/codegist/crest/config/MethodType;
.super Ljava/lang/Enum;
.source "MethodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codegist/crest/config/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/codegist/crest/config/MethodType;

.field public static final enum DELETE:Lorg/codegist/crest/config/MethodType;

.field public static final enum GET:Lorg/codegist/crest/config/MethodType;

.field public static final enum HEAD:Lorg/codegist/crest/config/MethodType;

.field public static final enum OPTIONS:Lorg/codegist/crest/config/MethodType;

.field public static final enum POST:Lorg/codegist/crest/config/MethodType;

.field public static final enum PUT:Lorg/codegist/crest/config/MethodType;


# instance fields
.field private final hasEntity:Z


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
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v3}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    .line 35
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4, v4}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->POST:Lorg/codegist/crest/config/MethodType;

    .line 39
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5, v4}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->PUT:Lorg/codegist/crest/config/MethodType;

    .line 43
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6, v3}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->DELETE:Lorg/codegist/crest/config/MethodType;

    .line 47
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, v7, v3}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->OPTIONS:Lorg/codegist/crest/config/MethodType;

    .line 51
    new-instance v0, Lorg/codegist/crest/config/MethodType;

    const-string v1, "HEAD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/codegist/crest/config/MethodType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/codegist/crest/config/MethodType;->HEAD:Lorg/codegist/crest/config/MethodType;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/codegist/crest/config/MethodType;

    sget-object v1, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/codegist/crest/config/MethodType;->POST:Lorg/codegist/crest/config/MethodType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/codegist/crest/config/MethodType;->PUT:Lorg/codegist/crest/config/MethodType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/codegist/crest/config/MethodType;->DELETE:Lorg/codegist/crest/config/MethodType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/codegist/crest/config/MethodType;->OPTIONS:Lorg/codegist/crest/config/MethodType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/codegist/crest/config/MethodType;->HEAD:Lorg/codegist/crest/config/MethodType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/codegist/crest/config/MethodType;->$VALUES:[Lorg/codegist/crest/config/MethodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "hasEntity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lorg/codegist/crest/config/MethodType;->hasEntity:Z

    .line 61
    return-void
.end method

.method public static getDefault()Lorg/codegist/crest/config/MethodType;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codegist/crest/config/MethodType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/codegist/crest/config/MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codegist/crest/config/MethodType;

    return-object v0
.end method

.method public static values()[Lorg/codegist/crest/config/MethodType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/codegist/crest/config/MethodType;->$VALUES:[Lorg/codegist/crest/config/MethodType;

    invoke-virtual {v0}, [Lorg/codegist/crest/config/MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codegist/crest/config/MethodType;

    return-object v0
.end method


# virtual methods
.method public hasEntity()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/codegist/crest/config/MethodType;->hasEntity:Z

    return v0
.end method
