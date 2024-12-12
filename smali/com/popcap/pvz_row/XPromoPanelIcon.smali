.class public Lcom/popcap/pvz_row/XPromoPanelIcon;
.super Landroid/widget/ImageView;
.source "XPromoPanelIcon.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field m_item:Lcom/ea/rs/xpromo/Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ea/rs/xpromo/Item;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/ea/rs/xpromo/Item;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0, p2}, Lcom/popcap/pvz_row/XPromoPanelIcon;->initilize(Lcom/ea/rs/xpromo/Item;)V

    .line 21
    return-void
.end method

.method private initilize(Lcom/ea/rs/xpromo/Item;)V
    .locals 2
    .param p1, "item"    # Lcom/ea/rs/xpromo/Item;

    .prologue
    .line 25
    monitor-enter p0

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoPanelIcon;->m_item:Lcom/ea/rs/xpromo/Item;

    .line 28
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 29
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/popcap/pvz_row/XPromoPanelIcon$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoPanelIcon$1;-><init>(Lcom/popcap/pvz_row/XPromoPanelIcon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    new-instance v1, Lcom/popcap/pvz_row/XPromoPanelIcon$2;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoPanelIcon$2;-><init>(Lcom/popcap/pvz_row/XPromoPanelIcon;)V

    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/XPromoPanelIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void

    .line 38
    .end local v0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
