.class Lcom/popcap/pvz_row/XPromoScrollerView$6;
.super Ljava/lang/Object;
.source "XPromoScrollerView.java"

# interfaces
.implements Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoScrollerView;->refreshView()V
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
    .line 204
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoScrollerView$6;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView$6;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/popcap/pvz_row/XPromoScrollerView;->access$202(Lcom/popcap/pvz_row/XPromoScrollerView;Z)Z

    .line 210
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoScrollerView$6;->this$0:Lcom/popcap/pvz_row/XPromoScrollerView;

    new-instance v1, Lcom/popcap/pvz_row/XPromoScrollerView$6$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoScrollerView$6$1;-><init>(Lcom/popcap/pvz_row/XPromoScrollerView$6;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/XPromoScrollerView;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
