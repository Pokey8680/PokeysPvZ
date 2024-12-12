.class Lcom/ea/thirdparty/adj/GoogleAds$3;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->showBanner(Ljava/lang/String;)V
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
    .line 323
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 326
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->val$adUnitId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds;->access$000(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    .line 327
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 329
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 331
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 332
    .local v0, "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 337
    :cond_0
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-ne v4, v6, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;

    :cond_1
    move-object v2, v1

    .line 341
    check-cast v2, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 368
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :goto_1
    return-void

    .restart local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_2
    move v2, v3

    .line 339
    goto :goto_0

    .line 345
    .end local v0    # "builder":Lcom/google/android/gms/ads/AdRequest$Builder;
    :cond_3
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->val$adUnitId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds;->access$500(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_7

    .line 348
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 350
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 351
    .local v0, "builder":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 353
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$900(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 356
    :cond_4
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-eqz v4, :cond_5

    .line 358
    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1000(Lcom/ea/thirdparty/adj/GoogleAds;)I

    move-result v4

    if-ne v4, v6, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    :cond_5
    move-object v2, v1

    .line 361
    check-cast v2, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_1

    :cond_6
    move v2, v3

    .line 358
    goto :goto_2

    .line 365
    .end local v0    # "builder":Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to show nonexistent banner: ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$3;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto :goto_1
.end method
