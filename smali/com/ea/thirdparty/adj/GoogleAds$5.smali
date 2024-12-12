.class Lcom/ea/thirdparty/adj/GoogleAds$5;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->createInterstitial(Ljava/lang/String;)V
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
    .line 401
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, "showWarning":Z
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    const-string v5, "ca-app-pub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 408
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v4

    if-nez v4, :cond_4

    .line 410
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    new-instance v5, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v6, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v6}, Lcom/ea/thirdparty/adj/GoogleAds;->access$200(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1102(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/InterstitialAd;)Lcom/google/android/gms/ads/InterstitialAd;

    .line 411
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v4

    new-instance v5, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;

    iget-object v6, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v7, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 414
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 415
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 420
    :cond_0
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-ne v4, v8, :cond_3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 426
    :cond_1
    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1100(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 460
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :goto_1
    if-eqz v1, :cond_2

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial already exist: ID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " so we will just report about it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1300(Ljava/lang/String;)V

    .line 465
    :cond_2
    return-void

    .restart local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_3
    move v2, v3

    .line 422
    goto :goto_0

    .line 430
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 435
    :cond_5
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v4

    if-nez v4, :cond_9

    .line 437
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    new-instance v5, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    iget-object v6, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v6}, Lcom/ea/thirdparty/adj/GoogleAds;->access$200(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1202(Lcom/ea/thirdparty/adj/GoogleAds;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 438
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v4

    new-instance v5, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;

    iget-object v6, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v7, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 441
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 442
    .local v0, "builder":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 444
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 447
    :cond_6
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 449
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-ne v4, v8, :cond_8

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 452
    :cond_7
    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$5;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1200(Lcom/ea/thirdparty/adj/GoogleAds;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto/16 :goto_1

    :cond_8
    move v2, v3

    .line 449
    goto :goto_2

    .line 456
    .end local v0    # "builder":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_1
.end method
