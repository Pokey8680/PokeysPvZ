.class public final enum Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;
.super Ljava/lang/Enum;
.source "MillennialAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Children"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

.field public static final enum HAS_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

.field public static final enum NO_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    const-string v1, "HAS_KIDS"

    const-string v2, "true"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->HAS_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    new-instance v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    const-string v1, "NO_KIDS"

    const-string v2, "false"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->NO_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    .line 181
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->HAS_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->NO_KIDS:Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

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
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput-object p3, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->description:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->$VALUES:[Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    invoke-virtual {v0}, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Children;->description:Ljava/lang/String;

    return-object v0
.end method
