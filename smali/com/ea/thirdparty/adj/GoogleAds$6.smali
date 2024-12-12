.class Lcom/ea/thirdparty/adj/GoogleAds$6;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->destroyInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/thirdparty/adj/GoogleAds;

.field final synthetic val$adUnitId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 477
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->val$adUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->val$adUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1102(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->val$adUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1202(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    goto :goto_0

    .line 489
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to destroy nonexistent interstitial: ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$6;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method
