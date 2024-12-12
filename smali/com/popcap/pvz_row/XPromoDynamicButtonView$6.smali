.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->refreshView()V
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
    .line 274
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->access$102(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)Z

    .line 280
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    new-instance v1, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6$1;-><init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method
