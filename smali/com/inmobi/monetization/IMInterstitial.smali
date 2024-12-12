.class public Lcom/inmobi/monetization/IMInterstitial;
.super Ljava/lang/Object;
.source "IMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/IMInterstitial$a;,
        Lcom/inmobi/monetization/IMInterstitial$AdMode;,
        Lcom/inmobi/monetization/IMInterstitial$State;
    }
.end annotation


# static fields
.field private static g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;


# instance fields
.field a:Lcom/inmobi/androidsdk/InterstitialView;

.field b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

.field d:Z

.field private e:Lcom/inmobi/monetization/IMInterstitialListener;

.field private f:Lcom/inmobi/monetization/IMIncentivisedListener;

.field private h:J

.field private i:Landroid/app/Activity;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcom/inmobi/monetization/IMInterstitial$State;

.field private l:Landroid/os/Handler;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    .line 82
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 86
    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 105
    iput-wide p2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    .line 106
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    .line 82
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    .line 85
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 86
    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    .line 94
    iput-object p2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    return-object v0
.end method

.method private a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    .line 339
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$e;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$e;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    .line 410
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 413
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    .line 414
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 432
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    .line 444
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 445
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 446
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_3

    .line 447
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->g:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 449
    :cond_3
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$a;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 483
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 484
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$b;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$b;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 498
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    .line 500
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 501
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setKeywords(Ljava/lang/String;)V

    .line 502
    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    .line 504
    :goto_2
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/InterstitialView;->setMode(Lcom/inmobi/androidsdk/Mode;)V

    .line 505
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->disableHardwareAcceleration()V

    goto/16 :goto_0

    .line 452
    :pswitch_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->c()V

    goto :goto_1

    .line 455
    :pswitch_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 456
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$d;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$d;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 469
    :pswitch_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 470
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$c;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 502
    :cond_7
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->APP_GALLERY:Lcom/inmobi/androidsdk/Mode;

    goto :goto_2

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMIncentivisedListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/IMIncentivisedListener;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    .line 513
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAdServerUrl(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    .line 516
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->buildLtvpRequestMap(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    .line 518
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-nez v0, :cond_0

    .line 523
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(J)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    .line 527
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    .line 532
    iput-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->destroy()V

    .line 290
    :cond_0
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 280
    return-void
.end method

.method public getState()Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method

.method public loadInterstitial()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->b()V

    .line 128
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    .line 130
    :cond_1
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 132
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "Interstitial load is already in progress."

    .line 137
    :goto_1
    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v3, Lcom/inmobi/monetization/IMInterstitial$g;

    invoke-direct {v3, p0, v1}, Lcom/inmobi/monetization/IMInterstitial$g;-><init>(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    const-string v1, "[InMobi]-[Monetization]"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "Interstitial can only be loaded in init or ready state."

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 153
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "loading"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->loadNewAd()V

    goto :goto_0

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 160
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 161
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$f;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$f;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "AppId cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 192
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "A new appId cannot be set if a slotId is already set."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIMIncentivisedListener(Lcom/inmobi/monetization/IMIncentivisedListener;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/IMIncentivisedListener;

    .line 243
    return-void
.end method

.method public setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    .line 239
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 293
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMode(Lcom/inmobi/monetization/IMInterstitial$AdMode;)V
    .locals 2

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "AdMode cannot be null."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->o:Ljava/util/Map;

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    .line 319
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 320
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Invalid slotId : -1"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 324
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "A new slotId can be set only if a valid slotId is provided during object construction."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_2
    iput-wide p1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    .line 331
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v2, p0, Lcom/inmobi/monetization/IMInterstitial;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->show()V

    .line 209
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->show(J)V

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->stopLoading()V

    .line 272
    :cond_0
    return-void
.end method
