.class public Lcom/popcap/pvz_row/PvZActivity;
.super Lcom/ea/blast/MainActivity;
.source "PvZActivity.java"


# static fields
.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field static DiscoveryStripHeight:I = 0x0

.field static DiscoveryStripWidth:I = 0x0

.field static Dparams:Landroid/widget/FrameLayout$LayoutParams; = null

.field static Dstrip:Landroid/widget/FrameLayout; = null

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field static discoveryStrip:Landroid/widget/RelativeLayout; = null

.field static discoveryStripContainer:Landroid/widget/RelativeLayout; = null

.field static discoveryStripContainer1:Landroid/widget/RelativeLayout; = null

.field static discoveryStripContainerParams:Landroid/widget/RelativeLayout$LayoutParams; = null

.field static discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams; = null

.field static discoveryStripParams:Landroid/widget/RelativeLayout$LayoutParams; = null

.field static expandBtn:Landroid/widget/Button; = null

.field static expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams; = null

.field static expanded:Z = false

.field public static gAudioManager:Landroid/media/AudioManager; = null

.field private static gDOBMonth:I = 0x0

.field private static gDOBYear:I = 0x0

.field public static gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView; = null

.field public static gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView; = null

.field static gXPromoPanelViewParams:Landroid/widget/RelativeLayout$LayoutParams; = null

.field public static final mADSCONFIG_ENABLED:Z = true

.field public static final mEnableAdmofiAds:Z = false

.field public static mInstance:Lcom/popcap/pvz_row/PvZActivity; = null

.field public static mIsUserMusicPlaying:Z = false

.field public static final mNIMBLE_ENABLED:Z = true

.field public static final mREAD_OBB_ENABLED:Z = true

.field public static final mXPROMO_ENABLED:Z = true

.field static mg:Ljava/lang/String;

.field static mgButtonWidth:I

.field static smallPhone:Z


# instance fields
.field private final HideSystemKeys:Ljava/lang/Runnable;

.field XpromoExpandableButton_ID:I

.field XpromoPanelView_ID:I

.field layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mEnableGoogleAds:Z

.field private mEnableLogs:Z

.field public mIsTablet:Z

.field private mhasFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    .line 93
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView;

    .line 98
    sput-boolean v2, Lcom/popcap/pvz_row/PvZActivity;->expanded:Z

    .line 99
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    .line 104
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    .line 112
    sput-boolean v2, Lcom/popcap/pvz_row/PvZActivity;->mIsUserMusicPlaying:Z

    .line 533
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->Dstrip:Landroid/widget/FrameLayout;

    .line 534
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->Dparams:Landroid/widget/FrameLayout$LayoutParams;

    .line 535
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStrip:Landroid/widget/RelativeLayout;

    .line 536
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    .line 537
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 538
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    .line 539
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 540
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 541
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 542
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 543
    sput v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    .line 544
    sput v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripHeight:I

    .line 545
    const-string v0, "    More games for free.    "

    sput-object v0, Lcom/popcap/pvz_row/PvZActivity;->mg:Ljava/lang/String;

    .line 546
    sput v2, Lcom/popcap/pvz_row/PvZActivity;->mgButtonWidth:I

    .line 547
    sput-object v1, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    .line 548
    sput-boolean v2, Lcom/popcap/pvz_row/PvZActivity;->smallPhone:Z

    .line 1064
    const-string v0, "gnustl_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1065
    const-string v0, "nimble"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1066
    const-string v0, "pvz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    .line 70
    iput-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    .line 76
    iput-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    .line 89
    iput-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mhasFocus:Z

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/popcap/pvz_row/PvZActivity;->XpromoPanelView_ID:I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/popcap/pvz_row/PvZActivity;->XpromoExpandableButton_ID:I

    .line 382
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/PvZActivity$2;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/PvZActivity;->HideSystemKeys:Ljava/lang/Runnable;

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static CreateBanner(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "bannerAppID"    # Ljava/lang/String;
    .param p1, "bannerAdsAtBottom"    # Z

    .prologue
    .line 979
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$10;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$10;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 988
    return-void
.end method

.method public static CreateInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "interstitialAppID"    # Ljava/lang/String;

    .prologue
    .line 991
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$11;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$11;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1000
    return-void
.end method

.method public static DestroyBanner()V
    .locals 2

    .prologue
    .line 1051
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$16;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$16;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1060
    return-void
.end method

.method public static DestroyInterstitial()V
    .locals 2

    .prologue
    .line 1015
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$13;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$13;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1024
    return-void
.end method

.method public static HideBanner()V
    .locals 2

    .prologue
    .line 1039
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$15;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1048
    return-void
.end method

.method public static ShowBanner()V
    .locals 2

    .prologue
    .line 1027
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$14;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1036
    return-void
.end method

.method public static ShowInterstitial()V
    .locals 2

    .prologue
    .line 1003
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$12;

    invoke-direct {v1}, Lcom/popcap/pvz_row/PvZActivity$12;-><init>()V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1012
    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/PvZActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/PvZActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mhasFocus:Z

    return v0
.end method

.method static synthetic access$100(Lcom/popcap/pvz_row/PvZActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/PvZActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/popcap/pvz_row/PvZActivity;->onSystemUiVisibilityChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/popcap/pvz_row/PvZActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/PvZActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    return v0
.end method

.method public static getDobMonth()I
    .locals 1

    .prologue
    .line 518
    sget v0, Lcom/popcap/pvz_row/PvZActivity;->gDOBMonth:I

    return v0
.end method

.method public static getDobYear()I
    .locals 1

    .prologue
    .line 513
    sget v0, Lcom/popcap/pvz_row/PvZActivity;->gDOBYear:I

    return v0
.end method

.method public static native onAdConfigCreate()V
.end method

.method public static native onPVZCreate()V
.end method

.method public static native onPVZXpromoCreate()V
.end method

.method private onSystemUiVisibilityChanged()V
    .locals 4

    .prologue
    .line 379
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity;->HideSystemKeys:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    return-void
.end method

.method private setupSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 358
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 361
    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/PvZActivity$1;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 375
    :cond_1
    return-void
.end method


# virtual methods
.method public native COPPAAgeCriteria()V
.end method

.method public CreateDiscoveryStrip()V
    .locals 6

    .prologue
    .line 613
    move-object v0, p0

    .line 614
    .local v0, "activityContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 616
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    if-nez v2, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x780

    if-ge v2, v3, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x438

    if-lt v2, v3, :cond_1

    .line 618
    :cond_0
    const-string v2, "  More games...  "

    sput-object v2, Lcom/popcap/pvz_row/PvZActivity;->mg:Ljava/lang/String;

    .line 621
    :cond_1
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_2

    .line 622
    const/4 v2, 0x1

    sput-boolean v2, Lcom/popcap/pvz_row/PvZActivity;->smallPhone:Z

    .line 624
    :cond_2
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_3

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x400

    if-gt v2, v3, :cond_3

    .line 627
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v2, v2, -0x1f4

    invoke-static {v0, v2}, Lcom/popcap/pvz_row/XPromoHelpers;->PxToDp(Landroid/content/Context;I)I

    move-result v2

    sput v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    .line 633
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x14

    div-int/lit8 v2, v2, 0x64

    sput v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripHeight:I

    .line 634
    sget v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v0, v2}, Lcom/popcap/pvz_row/XPromoHelpers;->PxToDp(Landroid/content/Context;I)I

    move-result v2

    sput v2, Lcom/popcap/pvz_row/PvZActivity;->mgButtonWidth:I

    .line 635
    new-instance v2, Lcom/popcap/pvz_row/PvZActivity$3;

    invoke-direct {v2, p0}, Lcom/popcap/pvz_row/PvZActivity$3;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v2}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 724
    return-void

    .line 630
    :cond_3
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v2, v2, -0x172

    invoke-static {v0, v2}, Lcom/popcap/pvz_row/XPromoHelpers;->PxToDp(Landroid/content/Context;I)I

    move-result v2

    sput v2, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    goto :goto_0
.end method

.method public HideDiscoveryStrip()V
    .locals 1

    .prologue
    .line 825
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$5;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/PvZActivity$5;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 847
    return-void
.end method

.method public HideDynamicButton()V
    .locals 1

    .prologue
    .line 904
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$7;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/PvZActivity$7;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 921
    return-void
.end method

.method public InitXpromo()V
    .locals 2

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................InitXpromo of PvZ 1............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 763
    :cond_0
    new-instance v0, Lcom/popcap/pvz_row/XPromoPanelView;

    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v0, v1}, Lcom/popcap/pvz_row/XPromoPanelView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView;

    .line 764
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView;

    iget v1, p0, Lcom/popcap/pvz_row/PvZActivity;->XpromoPanelView_ID:I

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/XPromoPanelView;->setId(I)V

    .line 765
    new-instance v0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    .line 766
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_1

    .line 767
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................InitXpromo of PvZ 2............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 768
    :cond_1
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->CreateDiscoveryStrip()V

    .line 770
    return-void
.end method

.method public IsUserMusicPlaying()Z
    .locals 1

    .prologue
    .line 278
    sget-boolean v0, Lcom/popcap/pvz_row/PvZActivity;->mIsUserMusicPlaying:Z

    return v0
.end method

.method public MinimiseApplication()V
    .locals 1

    .prologue
    .line 957
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$9;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/PvZActivity$9;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 975
    return-void
.end method

.method public PauseUserMusic()V
    .locals 1

    .prologue
    .line 932
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$8;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/PvZActivity$8;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 953
    return-void
.end method

.method public SetIsUserMusicPlaying(Z)V
    .locals 0
    .param p1, "isusermusicplaying"    # Z

    .prologue
    .line 273
    sput-boolean p1, Lcom/popcap/pvz_row/PvZActivity;->mIsUserMusicPlaying:Z

    .line 274
    return-void
.end method

.method public ShowDiscoveryStrip(FFII)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "wh"    # I
    .param p4, "ht"    # I

    .prologue
    .line 776
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/rs/xpromo/XPromo;->getDiscoveryItems()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "promoItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-boolean v1, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v1, :cond_2

    .line 783
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDiscoveryStrip of PvZ 1.............,x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ht = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 784
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDiscoveryStrip of PvZ 1............., mFrameLayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , xpromoview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 787
    :cond_2
    iget-boolean v1, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v1, :cond_3

    .line 789
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDiscoveryStrip of PvZ 1 after pxtodp width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ht = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 798
    :cond_3
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->Dstrip:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    .line 800
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "................ShowDiscoveryStrip Creating frame layout"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->CreateDiscoveryStrip()V

    .line 803
    :cond_4
    new-instance v1, Lcom/popcap/pvz_row/PvZActivity$4;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/PvZActivity$4;-><init>(Lcom/popcap/pvz_row/PvZActivity;)V

    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public ShowDynamicButton(FFIIZ)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "wh"    # I
    .param p4, "ht"    # I
    .param p5, "bigPhone"    # Z

    .prologue
    .line 852
    new-instance v0, Lcom/popcap/pvz_row/PvZActivity$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/popcap/pvz_row/PvZActivity$6;-><init>(Lcom/popcap/pvz_row/PvZActivity;FFII)V

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public closeDiscoveryStrip()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 743
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget v1, Lcom/popcap/pvz_row/R$drawable;->uparrow:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 744
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 745
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 747
    sget-boolean v0, Lcom/popcap/pvz_row/PvZActivity;->smallPhone:Z

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    const-string v1, "More..."

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 749
    :cond_0
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 750
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 751
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 752
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 754
    sput-boolean v2, Lcom/popcap/pvz_row/PvZActivity;->expanded:Z

    .line 755
    return-void
.end method

.method public findHomeCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 558
    const-string v0, "DEFAULT"

    .line 563
    .local v0, "strCountryCode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getApplicationContext()Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/popcap/pvz_row/PvZActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 565
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 572
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v0

    .line 567
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method getDstripInstance()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->Dstrip:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public isABiggerPhone(Landroid/content/Context;)Z
    .locals 5
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 438
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v0, p1

    .line 439
    check-cast v0, Landroid/app/Activity;

    .line 440
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v2, :cond_0

    .line 446
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "................isLargePhone of PvZ  metrics.densityDpi = ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    :cond_0
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0xd5

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x140

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x1e0

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x280

    if-ne v2, v3, :cond_3

    .line 454
    :cond_1
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v2, :cond_2

    .line 455
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "................isLargePhone of PvZ  Yes, this is a Bigger Phone!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    :cond_2
    const/4 v2, 0x1

    .line 462
    :goto_0
    return v2

    .line 460
    :cond_3
    iget-boolean v2, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v2, :cond_4

    .line 461
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "................isLargePhone of PvZ  No, this is a smaller Phone!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAtLeastAPI(I)Z
    .locals 1
    .param p1, "apiLevel"    # I

    .prologue
    .line 408
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isDeviceTablet(Z)V
.end method

.method public isSmallTablet()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 585
    :try_start_0
    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v3}, Lcom/popcap/pvz_row/PvZActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 587
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    iget-boolean v3, v3, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 590
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v4, 0x258

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x400

    if-gt v3, v4, :cond_0

    .line 593
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xf0

    if-gt v3, v4, :cond_0

    .line 596
    const/4 v2, 0x1

    .line 606
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    return v2

    .line 601
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isTabletDevice(Landroid/content/Context;)Z
    .locals 9
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xa0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    move v2, v3

    .line 474
    .local v2, "xlarge":Z
    :goto_0
    iget-boolean v5, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v5, :cond_0

    .line 475
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "................isTabletDevice of PvZ  xlarge = ... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    :cond_0
    if-eqz v2, :cond_5

    .line 481
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v0, p1

    .line 482
    check-cast v0, Landroid/app/Activity;

    .line 483
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 488
    iget-boolean v5, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v5, :cond_1

    .line 489
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "................isTabletDevice of PvZ  metrics.densityDpi = ... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 491
    :cond_1
    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v8, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xf0

    if-eq v5, v6, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v5, v8, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_5

    .line 498
    :cond_2
    iget-boolean v4, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v4, :cond_3

    .line 499
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................isTabletDevice of PvZ  Yes, this is a tablet!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 507
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    :goto_1
    return v3

    .end local v2    # "xlarge":Z
    :cond_4
    move v2, v4

    .line 470
    goto :goto_0

    .line 505
    .restart local v2    # "xlarge":Z
    :cond_5
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_6

    .line 506
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................isTabletDevice of PvZ  No, this is not a tablet!"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move v3, v4

    .line 507
    goto :goto_1
.end method

.method public native obbFilePath(Ljava/lang/String;)V
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 331
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onActivityResult of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-static {p1, p2, p3, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V

    .line 338
    invoke-super {p0, p1, p2, p3}, Lcom/ea/blast/MainActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public native onAdmAdError(ZI)V
.end method

.method public native onAdmAdLoaded(II)V
.end method

.method public native onAdmAdOpened()V
.end method

.method public native onAdmAdReady(ZI)V
.end method

.method public native onAdmCompleted(I)V
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onConfigurationChanged of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    :cond_0
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v6, 0x0

    .line 117
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/popcap/pvz_row/PvZActivity;->requestWindowFeature(I)Z

    .line 118
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 120
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 122
    sput-object p0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    .line 123
    invoke-static {p0}, Lcom/ea/rwfilesystem/rwfilesystem;->Startup(Landroid/app/Activity;)V

    .line 124
    const/4 v3, 0x0

    sput-object v3, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    .line 125
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/popcap/pvz_row/PvZActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    sput-object v3, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    .line 126
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_0

    .line 127
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "................onCreate of PvZ ............. mAudioManger "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-static {}, Lcom/popcap/pvz_row/PvZActivity;->onPVZCreate()V

    .line 129
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    if-eqz v3, :cond_1

    .line 131
    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, v3}, Lcom/ea/thirdparty/adj/GoogleAds;->startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 132
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_1

    .line 133
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "................onCreate of PvZ after startup............."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_1
    invoke-virtual {p0, p0}, Lcom/popcap/pvz_row/PvZActivity;->isTabletDevice(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    .line 136
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    sput-boolean v3, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->mIsTablet:Z

    .line 139
    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 142
    invoke-static {}, Lcom/popcap/pvz_row/PvZActivity;->onPVZXpromoCreate()V

    .line 143
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_2

    .line 144
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "................onCreate of PvZ calling InitXpromo............."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->InitXpromo()V

    .line 150
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_3

    .line 151
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "................onCreate of PvZ calling onAdConfigCreate............."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    :cond_3
    invoke-static {}, Lcom/popcap/pvz_row/PvZActivity;->onAdConfigCreate()V

    .line 157
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "dobyear"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/popcap/pvz_row/PvZActivity;->gDOBYear:I

    .line 159
    const-string v3, "dobmonth"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/popcap/pvz_row/PvZActivity;->gDOBMonth:I

    .line 161
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_4

    .line 163
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".......  PvZ gDOBYear = ......"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/PvZActivity;->gDOBYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".......  PvZ gDOBMonth = ......"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/popcap/pvz_row/PvZActivity;->gDOBMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_4
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    if-eqz v3, :cond_5

    .line 169
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    invoke-virtual {p0, v3}, Lcom/popcap/pvz_row/PvZActivity;->isDeviceTablet(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->COPPAAgeCriteria()V

    .line 176
    :cond_5
    :try_start_0
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_6

    .line 177
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Setting obb path mREAD_OBB_ENABLED true"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 178
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/obb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/main."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/popcap/pvz_row/PvZActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".obb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/PvZActivity;->obbFilePath(Ljava/lang/String;)V

    .line 180
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_7

    .line 181
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Obb path value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "path":Ljava/lang/String;
    :cond_7
    :goto_0
    iget-boolean v3, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v3, :cond_8

    .line 191
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "................onCreate of PvZ after mIsTablet = ......"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/popcap/pvz_row/PvZActivity;->mIsTablet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :cond_8
    invoke-direct {p0}, Lcom/popcap/pvz_row/PvZActivity;->setupSystemUiVisibility()V

    .line 194
    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/popcap/pvz_row/PvZActivity;->SetIsUserMusicPlaying(Z)V

    .line 196
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "exception in constructing obb path"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PVZ PvZActivity onDestroy 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    if-eqz v0, :cond_2

    .line 309
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_1

    .line 310
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onDestroy of PvZ, calling ondestroy of googleads ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :cond_1
    invoke-static {}, Lcom/ea/thirdparty/adj/GoogleAds;->onDestroy()V

    .line 316
    :cond_2
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_3

    .line 317
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onDestroy of PvZ, c ApplicationLifecycle.onActivityDestroy(this);............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    :cond_3
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityDestroy(Landroid/app/Activity;)V

    .line 321
    invoke-static {}, Lcom/ea/rwfilesystem/rwfilesystem;->Shutdown()V

    .line 322
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_4

    .line 323
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onDestroy of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 324
    :cond_4
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onDestroy()V

    .line 325
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onPause of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-static {}, Lcom/ea/thirdparty/adj/GoogleAds;->onPause()V

    .line 241
    :cond_1
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityPause(Landroid/app/Activity;)V

    .line 245
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onPause()V

    .line 246
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 283
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onRestart()V

    .line 287
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityRestart(Landroid/app/Activity;)V

    .line 289
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 216
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................OnResume of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    :cond_0
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onResume()V

    .line 254
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableGoogleAds:Z

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/ea/thirdparty/adj/GoogleAds;->onResume()V

    .line 261
    :cond_1
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityResume(Landroid/app/Activity;)V

    .line 263
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 265
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->gAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/PvZActivity;->SetIsUserMusicPlaying(Z)V

    .line 269
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    invoke-static {p1, p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 227
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onStart()V

    .line 205
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityStart(Landroid/app/Activity;)V

    .line 207
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/ea/blast/MainActivity;->onStop()V

    .line 298
    invoke-static {p0}, Lcom/ea/nimble/ApplicationLifecycle;->onActivityStop(Landroid/app/Activity;)V

    .line 300
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mEnableLogs:Z

    if-eqz v0, :cond_0

    .line 415
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................onWindowFocusChanged of PvZ ............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-super {p0, p1}, Lcom/ea/blast/MainActivity;->onWindowFocusChanged(Z)V

    .line 419
    iput-boolean p1, p0, Lcom/popcap/pvz_row/PvZActivity;->mhasFocus:Z

    .line 421
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mGLView:Lcom/ea/blast/MainView;

    if-eqz v0, :cond_1

    .line 423
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity;->mGLView:Lcom/ea/blast/MainView;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/ea/blast/MainView;->setRenderMode(I)V

    .line 424
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mhasFocus:Z

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->requestRender()V

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/popcap/pvz_row/PvZActivity;->mhasFocus:Z

    if-eqz v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/popcap/pvz_row/PvZActivity;->onSystemUiVisibilityChanged()V

    .line 434
    :cond_2
    return-void

    .line 423
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openDiscoveryStrip()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 728
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget v1, Lcom/popcap/pvz_row/R$drawable;->downarrow:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 729
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 730
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 731
    sget-boolean v0, Lcom/popcap/pvz_row/PvZActivity;->smallPhone:Z

    if-eqz v0, :cond_0

    .line 732
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->mg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 733
    :cond_0
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 734
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 735
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 736
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 738
    const/4 v0, 0x1

    sput-boolean v0, Lcom/popcap/pvz_row/PvZActivity;->expanded:Z

    .line 739
    return-void
.end method
