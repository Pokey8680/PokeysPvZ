.class Lcom/popcap/pvz_row/XPromoScrollerView$4;
.super Ljava/lang/Object;
.source "XPromoScrollerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoScrollerView;->scrollToNextPage()V
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
    .line 147
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v2}, Lcom/popcap/pvz_row/XPromoScrollerView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v3, v5}, Lcom/popcap/pvz_row/XPromoScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v4}, Lcom/popcap/pvz_row/XPromoScrollerView;->getWidth()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/popcap/pvz_row/XPromoScrollerView;->calculateNextScrollDx(III)I

    move-result v0

    .line 152
    .local v0, "newScrollPos":I
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$4;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v1, v0, v5}, Lcom/popcap/pvz_row/XPromoScrollerView;->scrollTo(II)V

    .line 153
    return-void
.end method
