.class public Lcom/inmobi/monetization/internal/NativeAdResponse;
.super Ljava/lang/Object;
.source "NativeAdResponse.java"


# static fields
.field public static final KEY_ADS:Ljava/lang/String; = "ads"

.field public static final KEY_CONTEXTCODE:Ljava/lang/String; = "contextCode"

.field public static final KEY_NAMESPACE:Ljava/lang/String; = "namespace"

.field public static final KEY_PUBCONTENT:Ljava/lang/String; = "pubContent"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/inmobi/monetization/internal/NativeAdResponse;->a:Ljava/util/List;

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/inmobi/monetization/internal/NativeAdResponse;->a:Ljava/util/List;

    return-object v0
.end method
