.class public Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "GoogleAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/thirdparty/adj/GoogleAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoogleAdsListener"
.end annotation


# instance fields
.field private adUnitId:Ljava/lang/String;

.field final synthetic this$0:Lcom/ea/thirdparty/adj/GoogleAds;


# direct methods
.method public constructor <init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V
    .locals 0
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 543
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 544
    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    .line 545
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdClosed() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1500(Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1600(Ljava/lang/String;I)V

    .line 559
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLeftApplication id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1800(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoaded() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$800(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 567
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1300(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdOpened() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1400(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;->adUnitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/thirdparty/adj/GoogleAds;->access$1700(Ljava/lang/String;)V

    .line 575
    return-void
.end method
