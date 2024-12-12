.class Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/millennial/MillennialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ads/mediation/millennial/MillennialAdapter;
    .param p2, "x1"    # Lcom/google/ads/mediation/millennial/MillennialAdapter$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;)V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 289
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 295
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 300
    return-void
.end method

.method public onSingleTap(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 306
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 312
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3
    .param p1, "ad"    # Lcom/millennialmedia/android/MMAd;
    .param p2, "arg1"    # Lcom/millennialmedia/android/MMException;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/millennial/MillennialAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 319
    return-void
.end method
