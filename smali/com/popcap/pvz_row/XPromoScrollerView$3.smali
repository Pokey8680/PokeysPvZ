.class Lcom/popcap/pvz_row/XPromoScrollerView$3;
.super Ljava/lang/Object;
.source "XPromoScrollerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoScrollerView;->updateViewWithNewItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoScrollerView;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoScrollerView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 95
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ea/rs/xpromo/XPromo;->getDiscoveryItems()Ljava/util/List;

    move-result-object v8

    .line 96
    .local v8, "promoItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->getWidth()I

    move-result v10

    .line 97
    .local v10, "selfWidth":I
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->getHeight()I

    move-result v9

    .line 103
    .local v9, "selfHeight":I
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->removeAllViews()V

    .line 105
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    .local v4, "linearView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 107
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 108
    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11, v4}, Lcom/popcap/pvz_row/XPromoScrollerView;->addView(Landroid/view/View;)V

    .line 111
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    if-lez v10, :cond_0

    if-gtz v9, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    .local v2, "iconScale":I
    div-int v11, v10, v2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 116
    .local v5, "numIcon":I
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lcom/popcap/pvz_row/XPromoHelpers;->DpToPx(Landroid/content/Context;I)I

    move-result v6

    .line 117
    .local v6, "padding":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/rs/xpromo/Item;

    .line 119
    .local v3, "item":Lcom/ea/rs/xpromo/Item;
    new-instance v7, Lcom/popcap/pvz_row/XPromoPanelIcon;

    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11, v3}, Lcom/popcap/pvz_row/XPromoPanelIcon;-><init>(Landroid/content/Context;Lcom/ea/rs/xpromo/Item;)V

    .line 120
    .local v7, "promoIcon":Lcom/popcap/pvz_row/XPromoPanelIcon;
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int v11, v10, v5

    invoke-direct {v1, v11, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 121
    .local v1, "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7, v1}, Lcom/popcap/pvz_row/XPromoPanelIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v11}, Lcom/popcap/pvz_row/XPromoPanelIcon;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    invoke-virtual {v7, v6, v6, v6, v6}, Lcom/popcap/pvz_row/XPromoPanelIcon;->setPadding(IIII)V

    .line 124
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 127
    .end local v1    # "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "item":Lcom/ea/rs/xpromo/Item;
    .end local v7    # "promoIcon":Lcom/popcap/pvz_row/XPromoPanelIcon;
    :cond_2
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v11, v13, v13}, Lcom/popcap/pvz_row/XPromoScrollerView;->scrollTo(II)V

    .line 128
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoScrollerView$3;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-static {v11}, Lcom/popcap/pvz_row/XPromoScrollerView;->access$100(Lcom/popcap/pvz_row/XPromoScrollerView;)V

    goto :goto_0
.end method
