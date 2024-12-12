.class public Lcom/popcap/pvz_row/XPromoDynamicButtonView;
.super Landroid/widget/LinearLayout;
.source "XPromoDynamicButtonView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final MAX_TITLEBAR_HEIGHT:I = 0x1e

.field private static final MIN_TITLEBAR_HEIGHT:I = 0x14

.field private static final XPROMO_DEFAULT_PADDING_DP:I

.field public static mIsTablet:Z


# instance fields
.field dynamicButtonLayout:Landroid/view/ViewGroup$MarginLayoutParams;

.field m_actualHeight:I

.field m_dynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

.field private m_refreshTimer:Lcom/ea/nimble/Timer;

.field private m_updateInProcess:Z

.field private m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->dynamicButtonLayout:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    iput v1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_actualHeight:I

    .line 50
    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setOrientation(I)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoDynamicButtonView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setDefaultMoreGamesButtonVisible(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoDynamicButtonView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_updateInProcess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->updateViewWithNewItems()V

    return-void
.end method

.method private addDynamicButton(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_dynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[PvZApplication] .... ShowDynamicButton  addDynamicButton 1\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 100
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$3;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initilize()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_updateInProcess:Z

    .line 60
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$1;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$1;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    const-string v0, "com.ea.notification.xpromo.items.refreshed"

    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_xpromoUpdatedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private initlize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-static {p0, v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setCurvedEdgesOn(Landroid/view/View;I)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setBackgroundColor(I)V

    .line 143
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->dynamicButtonLayout:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 146
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->dynamicButtonLayout:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->addDynamicButton(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 147
    return-void
.end method

.method private static setCurvedEdgesOn(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "color"    # I

    .prologue
    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 163
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 172
    .end local v0    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setDefaultMoreGamesButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 76
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v0, v0, Lcom/popcap/pvz_row/PvZActivity;->mGLView:Lcom/ea/blast/MainView;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v0, v0, Lcom/popcap/pvz_row/PvZActivity;->mGLView:Lcom/ea/blast/MainView;

    new-instance v1, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)V

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainView;->queueEvent(Ljava/lang/Runnable;)V

    .line 90
    :cond_0
    return-void
.end method

.method private updateViewWithNewItems()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    new-instance v1, Lcom/popcap/pvz_row/XPromoDynamicButtonView$4;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$4;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    invoke-virtual {p0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->post(Ljava/lang/Runnable;)Z

    .line 234
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$5;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public native NativeSetDefaultMoreGamesButtonVisible(Z)V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 240
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->refreshView()V

    .line 241
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 151
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 152
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->initlize(II)V

    .line 156
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 248
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->refreshView()V

    .line 249
    return-void
.end method

.method public refreshView()V
    .locals 6

    .prologue
    .line 253
    iget-boolean v4, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_updateInProcess:Z

    if-nez v4, :cond_0

    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/rs/xpromo/XPromo;->isDataAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->isInEditMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->m_updateInProcess:Z

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v3, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/ea/rs/xpromo/XPromo;->getComponent()Lcom/ea/rs/xpromo/XPromo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ea/rs/xpromo/XPromo;->getButtonItems()Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "buttonItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/rs/xpromo/Item;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/rs/xpromo/Item;

    .line 267
    .local v0, "buttonItem":Lcom/ea/rs/xpromo/Item;
    sget-boolean v4, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->mIsTablet:Z

    if-eqz v4, :cond_2

    .line 268
    const-string v4, "custom1"

    invoke-virtual {v0, v4}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_2
    const-string v4, "custom1"

    invoke-virtual {v0, v4}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    .end local v0    # "buttonItem":Lcom/ea/rs/xpromo/Item;
    :cond_3
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v4

    new-instance v5, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;

    invoke-direct {v5, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    invoke-virtual {v4, v3, v5}, Lcom/popcap/pvz_row/XPromoContentManager;->load(Ljava/util/List;Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;)V

    goto :goto_0
.end method
