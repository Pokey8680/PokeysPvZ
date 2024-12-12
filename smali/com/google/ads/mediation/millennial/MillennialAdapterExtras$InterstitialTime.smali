.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterstitialTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field public static final enum APP_LAUNCH:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field public static final enum TRANSITION:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

.field public static final enum UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    const-string v1, "APP_LAUNCH"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->APP_LAUNCH:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    const-string v1, "TRANSITION"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->TRANSITION:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->UNKNOWN:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->APP_LAUNCH:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->TRANSITION:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    return-object v0
.end method
