.class Lcom/inmobi/monetization/IMBanner$a;
.super Landroid/os/Handler;
.source "IMBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/monetization/IMBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/monetization/IMBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/IMBanner;)V
    .locals 1

    .prologue
    .line 643
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 644
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMBanner$a;->a:Ljava/lang/ref/WeakReference;

    .line 645
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/inmobi/monetization/IMBanner$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/monetization/IMBanner;

    .line 650
    if-nez v0, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 655
    :pswitch_0
    invoke-static {v0}, Lcom/inmobi/monetization/IMBanner;->e(Lcom/inmobi/monetization/IMBanner;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 659
    iget-object v1, v0, Lcom/inmobi/monetization/IMBanner;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 660
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Activity is not in the foreground. New ad will not be loaded."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_2
    sget-object v1, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->isInterstitialDisplayed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    const-string v0, "[InMobi]-[Network]-4.4.3"

    const-string v1, "Ad cannot be loaded.Interstitial Ad is displayed."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/monetization/IMBanner;->a(Lcom/inmobi/monetization/IMBanner;Z)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
