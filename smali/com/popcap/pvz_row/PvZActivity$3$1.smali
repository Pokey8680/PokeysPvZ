.class Lcom/popcap/pvz_row/PvZActivity$3$1;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz_row/PvZActivity$3;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/PvZActivity$3;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$3$1;->this$1:Lcom/popcap/pvz_row/PvZActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 687
    sget-boolean v0, Lcom/popcap/pvz_row/PvZActivity;->expanded:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$3$1;->this$1:Lcom/popcap/pvz_row/PvZActivity$3;

    iget-object v0, v0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->closeDiscoveryStrip()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$3$1;->this$1:Lcom/popcap/pvz_row/PvZActivity$3;

    iget-object v0, v0, Lcom/popcap/pvz_row/PvZActivity$3;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->openDiscoveryStrip()V

    goto :goto_0
.end method
