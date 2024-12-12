.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Politics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum CONSERVATIVE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum DEMOCRAT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum INDEPENDENT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum LIBERAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum MODERATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum REPUBLICAN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

.field public static final enum UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 383
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "REPUBLICAN"

    const-string v2, "republican"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->REPUBLICAN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "DEMOCRAT"

    const-string v2, "democrat"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->DEMOCRAT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "CONSERVATIVE"

    const-string v2, "conservative"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->CONSERVATIVE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 384
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "MODERATE"

    const-string v2, "moderate"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->MODERATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "LIBERAL"

    const-string v2, "liberal"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->LIBERAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "INDEPENDENT"

    const/4 v2, 0x5

    const-string v3, "independent"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->INDEPENDENT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 385
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "OTHER"

    const/4 v2, 0x6

    const-string v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    .line 381
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->REPUBLICAN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->DEMOCRAT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->CONSERVATIVE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->MODERATE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->LIBERAL:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->INDEPENDENT:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 391
    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->description:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 381
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->description:Ljava/lang/String;

    return-object v0
.end method
