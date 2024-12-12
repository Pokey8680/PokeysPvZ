.class public final enum Ljavax/ws/rs/core/Response$Status$Family;
.super Ljava/lang/Enum;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/ws/rs/core/Response$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Family"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/ws/rs/core/Response$Status$Family;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum CLIENT_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum INFORMATIONAL:Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum OTHER:Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum REDIRECTION:Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum SERVER_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

.field public static final enum SUCCESSFUL:Ljavax/ws/rs/core/Response$Status$Family;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 687
    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "INFORMATIONAL"

    invoke-direct {v0, v1, v3}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->INFORMATIONAL:Ljavax/ws/rs/core/Response$Status$Family;

    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v4}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->SUCCESSFUL:Ljavax/ws/rs/core/Response$Status$Family;

    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "REDIRECTION"

    invoke-direct {v0, v1, v5}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->REDIRECTION:Ljavax/ws/rs/core/Response$Status$Family;

    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v6}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->CLIENT_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v7}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->SERVER_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    new-instance v0, Ljavax/ws/rs/core/Response$Status$Family;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/ws/rs/core/Response$Status$Family;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->OTHER:Ljavax/ws/rs/core/Response$Status$Family;

    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/ws/rs/core/Response$Status$Family;

    sget-object v1, Ljavax/ws/rs/core/Response$Status$Family;->INFORMATIONAL:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/ws/rs/core/Response$Status$Family;->SUCCESSFUL:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/ws/rs/core/Response$Status$Family;->REDIRECTION:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/ws/rs/core/Response$Status$Family;->CLIENT_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/ws/rs/core/Response$Status$Family;->SERVER_ERROR:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax/ws/rs/core/Response$Status$Family;->OTHER:Ljavax/ws/rs/core/Response$Status$Family;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/ws/rs/core/Response$Status$Family;->$VALUES:[Ljavax/ws/rs/core/Response$Status$Family;

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
    .line 687
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/ws/rs/core/Response$Status$Family;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 687
    const-class v0, Ljavax/ws/rs/core/Response$Status$Family;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/ws/rs/core/Response$Status$Family;

    return-object v0
.end method

.method public static final values()[Ljavax/ws/rs/core/Response$Status$Family;
    .locals 1

    .prologue
    .line 687
    sget-object v0, Ljavax/ws/rs/core/Response$Status$Family;->$VALUES:[Ljavax/ws/rs/core/Response$Status$Family;

    invoke-virtual {v0}, [Ljavax/ws/rs/core/Response$Status$Family;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/ws/rs/core/Response$Status$Family;

    return-object v0
.end method
