.class Lcom/ea/thirdparty/adj/GoogleAds$7;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->showInterstitial(Ljava/lang/String;)V
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
    .line 500
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " don\'t loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    goto :goto_0

    .line 526
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publisherInterstitial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " don\'t loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$7;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " don\'t created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
