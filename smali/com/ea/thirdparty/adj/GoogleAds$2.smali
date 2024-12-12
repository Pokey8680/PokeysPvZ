.class Lcom/ea/thirdparty/adj/GoogleAds$2;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->destroyBanner(Ljava/lang/String;)V
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
    .line 293
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->val$adUnitId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$000(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    .line 297
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$300(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 300
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$800(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->val$adUnitId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ea/thirdparty/adj/GoogleAds;->access$500(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$600(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$800(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to destroy nonexistent banner: ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/thirdparty/adj/GoogleAds$2;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method
