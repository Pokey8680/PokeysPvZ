.class Lcom/popcap/pvz_row/ObbActivity$3;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/ObbActivity;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/ObbActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/ObbActivity;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$3;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$3;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$3;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/popcap/pvz_row/IDownloaderService;->requestAbortDownload()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$3;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/ObbActivity;->finish()V

    .line 345
    return-void
.end method
