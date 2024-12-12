.class public Lcom/popcap/pvz_row/XPromoPanelView;
.super Landroid/widget/LinearLayout;
.source "XPromoPanelView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MAX_TITLEBAR_HEIGHT:I = 0x1e

.field private static final MIN_TITLEBAR_HEIGHT:I = 0x14


# instance fields
.field m_actualHeight:I

.field m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

.field m_titleBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v1, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    .line 27
    iput-object v1, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

    .line 28
    iput v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_actualHeight:I

    .line 30
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/XPromoPanelView;->setOrientation(I)V

    .line 31
    return-void
.end method

.method private addScrollerBar(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/popcap/pvz_row/XPromoScrollerView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

    .line 62
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/popcap/pvz_row/XPromoPanelView;->setCurvedEdgesOn(Landroid/view/View;I)V

    .line 63
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_scrollerView:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/XPromoPanelView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addTitleBar(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "layout"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/popcap/pvz_row/XPromoPanelView;->setCurvedEdgesOn(Landroid/view/View;I)V

    .line 54
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelView;->m_titleBar:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/XPromoPanelView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "More games for free!"

    return-object v0
.end method

.method private initlize(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 68
    invoke-static {p0, v7}, Lcom/popcap/pvz_row/XPromoPanelView;->setCurvedEdgesOn(Landroid/view/View;I)V

    .line 70
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Lcom/popcap/pvz_row/XPromoHelpers;->PxToDp(Landroid/content/Context;I)I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/popcap/pvz_row/XPromoHelpers;->DpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 71
    .local v1, "titleHeight":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v2, "titleLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v7}, Lcom/popcap/pvz_row/XPromoPanelView;->setBackgroundColor(I)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v0, "scrollerLayout":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/popcap/pvz_row/XPromoPanelView;->addScrollerBar(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 76
    return-void
.end method

.method private static setCurvedEdgesOn(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "color"    # I

    .prologue
    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 91
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 92
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 93
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    .end local v0    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 81
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoPanelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/popcap/pvz_row/XPromoPanelView;->initlize(II)V

    .line 85
    :cond_0
    return-void
.end method
