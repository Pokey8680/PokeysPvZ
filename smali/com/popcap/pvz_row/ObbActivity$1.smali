.class Lcom/popcap/pvz_row/ObbActivity$1;
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
    .line 299
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$000(Lcom/popcap/pvz_row/ObbActivity;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$000(Lcom/popcap/pvz_row/ObbActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/popcap/pvz_row/IDownloaderService;->setDownloadFlags(I)V

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$1;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$100(Lcom/popcap/pvz_row/ObbActivity;)Lcom/popcap/pvz_row/IDownloaderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/popcap/pvz_row/IDownloaderService;->requestContinueDownload()V

    .line 311
    :cond_2
    return-void
.end method
