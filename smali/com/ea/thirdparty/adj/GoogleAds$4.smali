.class Lcom/ea/thirdparty/adj/GoogleAds$4;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->hideBanner(Ljava/lang/String;)V
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
    .line 376
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$000(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    .line 380
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 382
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$500(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    .line 385
    :cond_0
    if-eqz v0, :cond_1

    .line 387
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to hide nonexistent banner: ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$4;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method
