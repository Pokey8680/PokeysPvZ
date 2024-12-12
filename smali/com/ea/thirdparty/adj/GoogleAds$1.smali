.class Lcom/ea/thirdparty/adj/GoogleAds$1;
.super Ljava/lang/Object;
.source "GoogleAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/thirdparty/adj/GoogleAds;->createBanner(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/thirdparty/adj/GoogleAds;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$gravity:I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iput-object p2, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    iput p3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$size:I

    iput p4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$gravity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "viewToAdd":Landroid/view/View;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    const-string v4, "ca-app-pub"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$000(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    .line 245
    .local v1, "view":Lcom/google/android/gms/ads/AdView;
    if-eqz v1, :cond_0

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner already exist: ID= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    .line 285
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :goto_0
    return-void

    .line 251
    .restart local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :cond_0
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$200(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 252
    .restart local v1    # "view":Lcom/google/android/gms/ads/AdView;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$300(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$size:I

    invoke-static {v3, v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$400(Lcom/ea/thirdparty/adj/GoogleAds;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 255
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 256
    new-instance v3, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 258
    move-object v2, v1

    .line 280
    .end local v1    # "view":Lcom/google/android/gms/ads/AdView;
    :goto_1
    const/4 v0, 0x0

    .line 281
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 282
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$gravity:I

    invoke-static {v3, v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$700(Lcom/ea/thirdparty/adj/GoogleAds;I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 284
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$800(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 262
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/ea/thirdparty/adj/GoogleAds;->access$500(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    .line 264
    .local v1, "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    if-eqz v1, :cond_2

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner already exist: ID= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_2
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .end local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$200(Lcom/ea/thirdparty/adj/GoogleAds;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    .line 271
    .restart local v1    # "view":Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    invoke-static {v3}, Lcom/ea/thirdparty/adj/GoogleAds;->access$600(Lcom/ea/thirdparty/adj/GoogleAds;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/ads/AdSize;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget v6, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$size:I

    invoke-static {v5, v6}, Lcom/ea/thirdparty/adj/GoogleAds;->access$400(Lcom/ea/thirdparty/adj/GoogleAds;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 274
    iget-object v3, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 275
    new-instance v3, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;

    iget-object v4, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->this$0:Lcom/ea/thirdparty/adj/GoogleAds;

    iget-object v5, p0, Lcom/ea/thirdparty/adj/GoogleAds$1;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/ea/thirdparty/adj/GoogleAds$GoogleAdsListener;-><init>(Lcom/ea/thirdparty/adj/GoogleAds;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 277
    move-object v2, v1

    goto :goto_1
.end method
