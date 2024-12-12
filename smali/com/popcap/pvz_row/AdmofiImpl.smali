.class Lcom/popcap/pvz_row/AdmofiImpl;
.super Ljava/lang/Object;
.source "AdmofiImplStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;
    }
.end annotation


# static fields
.field private static instance:Lcom/popcap/pvz_row/AdmofiImpl;


# instance fields
.field private mEnableLogs:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/popcap/pvz_row/AdmofiImpl;->mEnableLogs:Z

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/popcap/pvz_row/AdmofiImpl;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/popcap/pvz_row/AdmofiImpl;->instance:Lcom/popcap/pvz_row/AdmofiImpl;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/popcap/pvz_row/AdmofiImpl;

    invoke-direct {v0}, Lcom/popcap/pvz_row/AdmofiImpl;-><init>()V

    sput-object v0, Lcom/popcap/pvz_row/AdmofiImpl;->instance:Lcom/popcap/pvz_row/AdmofiImpl;

    .line 22
    :cond_0
    sget-object v0, Lcom/popcap/pvz_row/AdmofiImpl;->instance:Lcom/popcap/pvz_row/AdmofiImpl;

    return-object v0
.end method

.method private prepLayout(I)V
    .locals 0
    .param p1, "alignment"    # I

    .prologue
    .line 60
    return-void
.end method


# virtual methods
.method public DestroyInterstitial()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public ShowInterstitial()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public destroyBanner()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public hideBanner(Z)V
    .locals 0
    .param p1, "shouldHide"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public loadBanner(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "bannerAppID"    # Ljava/lang/String;
    .param p2, "bannerAdsAtBottom"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .locals 0
    .param p1, "interstitialAppID"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public onAdmAdClicked(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;

    .prologue
    .line 73
    return-void
.end method

.method public onAdmAdLoaded(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;Z)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;
    .param p2, "succeed"    # Z

    .prologue
    .line 79
    return-void
.end method

.method public onAdmAdReady(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;)V
    .locals 0
    .param p1, "mAdmView"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;

    .prologue
    .line 66
    return-void
.end method

.method public onAdmCompleted(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;

    .prologue
    .line 85
    return-void
.end method

.method public onAdmErrorNoNetwork(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;

    .prologue
    .line 91
    return-void
.end method

.method public onAdmException(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 97
    return-void
.end method

.method public onAdmIllegalHttpStatusCode(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;ILjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;
    .param p2, "statusCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public onAdmNoAd(Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;)V
    .locals 0
    .param p1, "arg0"    # Lcom/popcap/pvz_row/AdmofiImpl$AdmofiView;

    .prologue
    .line 109
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public unload()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
