.class Lcom/popcap/pvz_row/PvZActivity$6;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->ShowDynamicButton(FFIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/PvZActivity;

.field final synthetic val$ht:I

.field final synthetic val$wh:I

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/PvZActivity;FFII)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iput p2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$x:F

    iput p3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$y:F

    iput p4, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$wh:I

    iput p5, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$ht:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v1}, Lcom/popcap/pvz_row/PvZActivity;->access$200(Lcom/popcap/pvz_row/PvZActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDynamicButton of PvZ 1.............,x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$wh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ht = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$ht:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDynamicButton of PvZ 1............., mFrameLayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , xpromoview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v1}, Lcom/popcap/pvz_row/PvZActivity;->access$200(Lcom/popcap/pvz_row/PvZActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "................ShowDynamicButton of PvZ 1 after pxtodp width =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$wh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ht = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$ht:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    :cond_1
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$wh:I

    iget v4, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$ht:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, v1, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 870
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v1, v1, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "buttonOffset":I
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v1}, Lcom/popcap/pvz_row/PvZActivity;->access$200(Lcom/popcap/pvz_row/PvZActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 878
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v1, v1, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 879
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget v2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$x:F

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setTranslationX(F)V

    .line 880
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget v2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$y:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setTranslationY(F)V

    .line 886
    :goto_0
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget v2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$wh:I

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setMinimumWidth(I)V

    .line 887
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget v2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$ht:I

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setMinimumHeight(I)V

    .line 888
    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->refreshView()V

    .line 890
    sget-object v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget-object v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v3, v3, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    .end local v0    # "buttonOffset":I
    :goto_1
    return-void

    .line 884
    .restart local v0    # "buttonOffset":I
    :cond_3
    iget-object v1, p0, Lcom/popcap/pvz_row/PvZActivity$6;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    iget-object v1, v1, Lcom/popcap/pvz_row/PvZActivity;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$x:F

    float-to-int v2, v2

    iget v3, p0, Lcom/popcap/pvz_row/PvZActivity$6;->val$y:F

    int-to-float v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 892
    .end local v0    # "buttonOffset":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
