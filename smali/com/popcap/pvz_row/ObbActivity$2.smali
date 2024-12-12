.class Lcom/popcap/pvz_row/ObbActivity$2;
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
    .line 316
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 324
    :cond_0
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v1}, Lcom/popcap/pvz_row/ObbActivity;->access$000(Lcom/popcap/pvz_row/ObbActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/popcap/pvz_row/IDownloaderService;->requestContinueDownload()V

    .line 327
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$200(Lcom/popcap/pvz_row/ObbActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/popcap/pvz_row/R$string;->downloader_Pause:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$2;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/popcap/pvz_row/IDownloaderService;->requestPauseDownload()V

    goto :goto_0
.end method
