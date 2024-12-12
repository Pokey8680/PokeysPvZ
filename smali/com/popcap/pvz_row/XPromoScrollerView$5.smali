.class Lcom/popcap/pvz_row/XPromoScrollerView$5;
.super Ljava/lang/Object;
.source "XPromoScrollerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoScrollerView;->resetScrollTimer()V
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
    .line 174
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$5;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView$5;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/XPromoScrollerView;->scrollToNextPage()V

    .line 179
    return-void
.end method
