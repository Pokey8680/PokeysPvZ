.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->addDynamicButton(Landroid/view/ViewGroup$MarginLayoutParams;)V
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
    .line 101
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 105
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "[PvZApplication] .... ShowDynamicButton  addDynamicButton 3\n"

    invoke-virtual {v7, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ea/rs/xpromo/XPromo;->getButtonItems()Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "buttonItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ea/rs/xpromo/Item;

    .line 113
    .local v3, "item":Lcom/ea/rs/xpromo/Item;
    iget-object v9, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v7

    const-string v10, "custom1"

    invoke-virtual {v3, v10}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/popcap/pvz_row/XPromoContentManager;->getAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-static {v9, v7}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->access$000(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)V

    .line 115
    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v7}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getWidth()I

    move-result v6

    .line 116
    .local v6, "selfWidth":I
    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v7}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getHeight()I

    move-result v5

    .line 118
    .local v5, "selfHeight":I
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v7}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .local v4, "linearView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 120
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 121
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    new-instance v0, Lcom/popcap/pvz_row/XPromoButtonIcon;

    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v7}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7, v3}, Lcom/popcap/pvz_row/XPromoButtonIcon;-><init>(Landroid/content/Context;Lcom/ea/rs/xpromo/Item;)V

    .line 126
    .local v0, "buttonIcon":Lcom/popcap/pvz_row/XPromoButtonIcon;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "[PvZApplication] .... ShowDynamicButton  addDynamicButton 6\n"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 128
    .local v2, "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget-object v7, v7, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->dynamicButtonLayout:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v7}, Lcom/popcap/pvz_row/XPromoButtonIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v7}, Lcom/popcap/pvz_row/XPromoButtonIcon;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v7, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v7, v4}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->addView(Landroid/view/View;)V

    .line 133
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "[PvZApplication] .... ShowDynamicButton  addDynamicButton 5\n"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "buttonIcon":Lcom/popcap/pvz_row/XPromoButtonIcon;
    .end local v2    # "iconLayout":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "linearView":Landroid/widget/LinearLayout;
    .end local v5    # "selfHeight":I
    .end local v6    # "selfWidth":I
    :cond_2
    move v7, v8

    .line 113
    goto :goto_1
.end method
