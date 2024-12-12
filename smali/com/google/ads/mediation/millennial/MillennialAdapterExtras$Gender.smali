.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

.field public static final enum FEMALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

.field public static final enum MALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

.field public static final enum OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    const-string v1, "MALE"

    const-string v2, "male"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->MALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    const-string v1, "FEMALE"

    const-string v2, "female"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->FEMALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    .line 332
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->MALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->FEMALE:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->OTHER:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

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
    .line 339
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 340
    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->description:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Gender;->description:Ljava/lang/String;

    return-object v0
.end method
