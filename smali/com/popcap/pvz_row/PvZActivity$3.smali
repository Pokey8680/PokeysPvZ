.class Lcom/popcap/pvz_row/PvZActivity$3;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->CreateDiscoveryStrip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/PvZActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/PvZActivity;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 643
    :try_start_0
    new-instance v4, Landroid/widget/FrameLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->Dstrip:Landroid/widget/FrameLayout;

    .line 644
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    const/4 v6, -0x2

    const/16 v7, 0x55

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->Dparams:Landroid/widget/FrameLayout$LayoutParams;

    .line 646
    new-instance v4, Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    .line 647
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 648
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    const/16 v5, 0x55

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 649
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 651
    new-instance v0, Landroid/widget/TextView;

    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 652
    .local v0, "dummyViewForAlignment":Landroid/widget/TextView;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 653
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 654
    .local v1, "dummyViewForAlignment_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 655
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 656
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    new-instance v2, Landroid/widget/TextView;

    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 658
    .local v2, "tapToOpenView":Landroid/widget/TextView;
    const v4, -0x777778

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 659
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 660
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v3, "tapToOpenView_params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 663
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 664
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................CreateDiscoveryStrip of PvZ 3............."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 665
    const-string v4, "Tap Here to Open"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    const v5, 0x1010042

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 668
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 670
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................CreateDiscoveryStrip of PvZ 4............."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 671
    new-instance v4, Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    .line 672
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    .line 673
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripWidth:I

    sget v6, Lcom/popcap/pvz_row/PvZActivity;->DiscoveryStripHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 674
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelView:Lcom/popcap/pvz_row/XPromoPanelView;

    sget-object v6, Lcom/popcap/pvz_row/PvZActivity;->gXPromoPanelViewParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 676
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 677
    new-instance v4, Landroid/widget/Button;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->mInstance:Lcom/popcap/pvz_row/PvZActivity;

    const/4 v6, 0x0

    const v7, 0x1010049

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    .line 678
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 679
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget v5, Lcom/popcap/pvz_row/R$drawable;->uparrow:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 681
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget v5, v5, Lcom/popcap/pvz_row/PvZActivity;->XpromoExpandableButton_ID:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V

    .line 682
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->mg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 683
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 684
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 685
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    new-instance v5, Lcom/popcap/pvz_row/PvZActivity$3$1;

    invoke-direct {v5, p0}, Lcom/popcap/pvz_row/PvZActivity$3$1;-><init>(Lcom/popcap/pvz_row/PvZActivity$3;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->expandBtn:Landroid/widget/Button;

    sget-object v6, Lcom/popcap/pvz_row/PvZActivity;->expandBtn_params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget v6, v6, Lcom/popcap/pvz_row/PvZActivity;->XpromoExpandableButton_ID:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 708
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 710
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 711
    sget-object v4, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer1:Landroid/widget/RelativeLayout;

    sget-object v6, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams1:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    iget-object v4, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v4}, Lcom/popcap/pvz_row/PvZActivity;->getDstripInstance()Landroid/widget/FrameLayout;

    move-result-object v4

    sget-object v5, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainer:Landroid/widget/RelativeLayout;

    sget-object v6, Lcom/popcap/pvz_row/PvZActivity;->discoveryStripContainerParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    sget-object v4, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v5}, Lcom/popcap/pvz_row/PvZActivity;->getDstripInstance()Landroid/widget/FrameLayout;

    move-result-object v5

    sget-object v6, Lcom/popcap/pvz_row/PvZActivity;->Dparams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "................CreateDiscoveryStrip of PvZ 8............."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 716
    iget-object v4, p0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v4}, Lcom/popcap/pvz_row/PvZActivity;->getDstripInstance()Landroid/widget/FrameLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .end local v0    # "dummyViewForAlignment":Landroid/widget/TextView;
    .end local v1    # "dummyViewForAlignment_params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "tapToOpenView":Landroid/widget/TextView;
    .end local v3    # "tapToOpenView_params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 718
    :catch_0
    move-exception v4

    goto :goto_0
.end method
