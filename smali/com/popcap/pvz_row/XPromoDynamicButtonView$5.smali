.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->updateViewWithNewItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 196
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ea/rs/xpromo/XPromo;->getButtonItems()Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, "buttonItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getWidth()I

    move-result v8

    .line 198
    .local v8, "selfWidth":I
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getHeight()I

    move-result v7

    .line 201
    .local v7, "selfHeight":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_0

    if-lez v8, :cond_0

    if-gtz v7, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->removeAllViews()V

    .line 206
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 207
    .local v6, "linearView":Landroid/widget/LinearLayout;
    add-int/lit8 v11, v7, -0x1e

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 208
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 209
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, "buttonLoaded":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ea/rs/xpromo/Item;

    .line 219
    .local v5, "item":Lcom/ea/rs/xpromo/Item;
    if-nez v2, :cond_2

    .line 221
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v11

    const-string v12, "custom1"

    invoke-virtual {v5, v12}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/popcap/pvz_row/XPromoContentManager;->getAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_3

    move v2, v9

    .line 224
    :cond_2
    :goto_2
    new-instance v0, Lcom/popcap/pvz_row/XPromoButtonIcon;

    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v11}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11, v5}, Lcom/popcap/pvz_row/XPromoButtonIcon;-><init>(Landroid/content/Context;Lcom/ea/rs/xpromo/Item;)V

    .line 225
    .local v0, "buttonIcon":Lcom/popcap/pvz_row/XPromoButtonIcon;
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/lit8 v11, v7, -0x1e

    invoke-direct {v4, v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 226
    .local v4, "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v4}, Lcom/popcap/pvz_row/XPromoButtonIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v11}, Lcom/popcap/pvz_row/XPromoButtonIcon;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .end local v0    # "buttonIcon":Lcom/popcap/pvz_row/XPromoButtonIcon;
    .end local v4    # "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    move v2, v10

    .line 221
    goto :goto_2

    .line 231
    .end local v5    # "item":Lcom/ea/rs/xpromo/Item;
    :cond_4
    iget-object v11, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    if-nez v2, :cond_5

    :goto_3
    invoke-static {v11, v9}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->access$000(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)V

    .line 232
    iget-object v9, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v9, v6}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    move v9, v10

    .line 231
    goto :goto_3
.end method
