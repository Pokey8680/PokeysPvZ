.class Lcom/inmobi/monetization/IMBanner$h;
.super Ljava/lang/Object;
.source "IMBanner.java"

# interfaces
.implements Lcom/inmobi/androidsdk/BannerViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/IMBanner;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/monetization/IMBanner;


# direct methods
.method constructor <init>(Lcom/inmobi/monetization/IMBanner;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestCompleted(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->d(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    .line 546
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestSucceeded(Lcom/inmobi/monetization/IMBanner;)V

    .line 549
    :cond_0
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    iget-object v0, v0, Lcom/inmobi/monetization/IMBanner;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    sget-object v1, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ACTIONS_TO_MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-ne v0, v1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    sget-object v2, Lcom/inmobi/monetization/IMErrorCode;->DO_MONETIZE:Lcom/inmobi/monetization/IMErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    .line 538
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->d(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    .line 540
    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {p2}, Lcom/inmobi/monetization/internal/MonetizationUtils;->getErrorCode(Lcom/inmobi/androidsdk/AdRequest$ErrorCode;)Lcom/inmobi/monetization/IMErrorCode;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerRequestFailed(Lcom/inmobi/monetization/IMBanner;Lcom/inmobi/monetization/IMErrorCode;)V

    goto :goto_0
.end method

.method public onBannerInteraction(Lcom/inmobi/androidsdk/BannerView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/androidsdk/BannerView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1, p2}, Lcom/inmobi/monetization/IMBannerListener;->onBannerInteraction(Lcom/inmobi/monetization/IMBanner;Ljava/util/Map;)V

    .line 521
    :cond_0
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->c(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 509
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->b(Lcom/inmobi/monetization/IMBanner;)V

    .line 510
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onDismissBannerScreen(Lcom/inmobi/monetization/IMBanner;)V

    .line 513
    :cond_0
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onLeaveApplication(Lcom/inmobi/monetization/IMBanner;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->c(Lcom/inmobi/monetization/IMBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;)Lcom/inmobi/monetization/IMBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMBanner$h;->a:Lcom/inmobi/monetization/IMBanner;

    invoke-interface {v0, v1}, Lcom/inmobi/monetization/IMBannerListener;->onShowBannerScreen(Lcom/inmobi/monetization/IMBanner;)V

    .line 497
    :cond_0
    return-void
.end method
