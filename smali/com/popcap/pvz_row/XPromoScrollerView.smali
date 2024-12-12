.class public Lcom/popcap/pvz_row/XPromoScrollerView;
.super Landroid/widget/HorizontalScrollView;
.source "XPromoScrollerView.java"


# static fields
.field private static final XPROMO_DEFAULT_PADDING_DP:I = 0x5


# instance fields
.field private m_refreshTimer:Lcom/ea/nimble/Timer;

.field private m_updateInProcess:Z

.field private m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->initilize()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/popcap/pvz_row/XPromoScrollerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->initilize()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/XPromoScrollerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoScrollerView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/popcap/pvz_row/XPromoScrollerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoScrollerView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->resetScrollTimer()V

    return-void
.end method

.method static synthetic access$202(Lcom/popcap/pvz_row/XPromoScrollerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoScrollerView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_updateInProcess:Z

    return p1
.end method

.method static synthetic access$300(Lcom/popcap/pvz_row/XPromoScrollerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoScrollerView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->updateViewWithNewItems()V

    return-void
.end method

.method private initilize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iput-boolean v4, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_updateInProcess:Z

    .line 49
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getWidth()I

    move-result v2

    .line 50
    .local v2, "selfWidth":I
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getHeight()I

    move-result v1

    .line 51
    .local v1, "selfHeight":I
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->removeAllViews()V

    .line 52
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "linearView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/XPromoScrollerView;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0, v4, v4}, Lcom/popcap/pvz_row/XPromoScrollerView;->scrollTo(II)V

    .line 59
    iget-object v3, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Lcom/popcap/pvz_row/XPromoScrollerView$1;

    invoke-direct {v3, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$1;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    iput-object v3, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    const-string v3, "com.ea.notification.xpromo.items.refreshed"

    iget-object v4, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v3, v4}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private refreshView()V
    .locals 6

    .prologue
    .line 186
    iget-boolean v4, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_updateInProcess:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/rs/xpromo/XPromo;->isDataAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_updateInProcess:Z

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/rs/xpromo/XPromo;->getDiscoveryItems()Ljava/util/List;

    move-result-object v3

    .line 198
    .local v3, "promoItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/rs/xpromo/Item;

    .line 200
    .local v2, "promoItem":Lcom/ea/rs/xpromo/Item;
    const-string v4, "100x100"

    invoke-virtual {v2, v4}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    .end local v2    # "promoItem":Lcom/ea/rs/xpromo/Item;
    :cond_2
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v4

    new-instance v5, Lcom/popcap/pvz_row/XPromoScrollerView$6;

    invoke-direct {v5, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$6;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    invoke-virtual {v4, v1, v5}, Lcom/popcap/pvz_row/XPromoContentManager;->load(Ljava/util/List;Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;)V

    goto :goto_0
.end method

.method private resetScrollTimer()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_refreshTimer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_refreshTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_refreshTimer:Lcom/ea/nimble/Timer;

    .line 173
    :cond_0
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/popcap/pvz_row/XPromoScrollerView$5;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$5;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_refreshTimer:Lcom/ea/nimble/Timer;

    .line 181
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView;->m_refreshTimer:Lcom/ea/nimble/Timer;

    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ea/rs/xpromo/XPromo;->getDiscoveryRefreshInterval()J

    move-result-wide v2

    long-to-double v2, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 182
    return-void
.end method

.method private updateViewWithNewItems()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    new-instance v1, Lcom/popcap/pvz_row/XPromoScrollerView$2;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$2;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/XPromoScrollerView;->post(Ljava/lang/Runnable;)Z

    .line 130
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/popcap/pvz_row/XPromoScrollerView$3;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$3;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method calculateNextScrollDx(III)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "actualLength"    # I
    .param p3, "frameLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    sub-int v0, p2, p3

    if-eq p1, v0, :cond_1

    .line 136
    add-int v0, p1, p3

    sub-int v2, p2, p3

    if-le v0, v2, :cond_0

    sub-int v0, p2, p3

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 138
    :goto_1
    return v0

    .line 136
    :cond_0
    add-int v0, p1, p3

    goto :goto_0

    :cond_1
    move v0, v1

    .line 138
    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 227
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->refreshView()V

    .line 228
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 162
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->resetScrollTimer()V

    .line 163
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 235
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->refreshView()V

    .line 236
    return-void
.end method

.method public scrollToNextPage()V
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 146
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/popcap/pvz_row/XPromoScrollerView$4;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$4;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    .end local v0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
