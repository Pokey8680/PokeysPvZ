.class public final enum Lcom/ea/nimble/IHttpRequest$OverwritePolicy;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverwritePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

.field public static final enum DATE_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

.field public static final enum LENGTH_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

.field public static final OVERWRITE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RESUME_DOWNLOAD:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

.field public static final SMART:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    const-string v1, "RESUME_DOWNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->RESUME_DOWNLOAD:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 41
    new-instance v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    const-string v1, "DATE_CHECK"

    invoke-direct {v0, v1, v3}, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->DATE_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 42
    new-instance v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    const-string v1, "LENGTH_CHECK"

    invoke-direct {v0, v1, v4}, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->LENGTH_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    sget-object v1, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->RESUME_DOWNLOAD:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->DATE_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->LENGTH_CHECK:Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->$VALUES:[Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    .line 44
    const-class v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->OVERWRITE:Ljava/util/EnumSet;

    .line 45
    const-class v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->SMART:Ljava/util/EnumSet;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/IHttpRequest$OverwritePolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/IHttpRequest$OverwritePolicy;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->$VALUES:[Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    invoke-virtual {v0}, [Lcom/ea/nimble/IHttpRequest$OverwritePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/IHttpRequest$OverwritePolicy;

    return-object v0
.end method
