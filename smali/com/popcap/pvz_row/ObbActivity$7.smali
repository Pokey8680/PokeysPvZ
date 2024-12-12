.class Lcom/popcap/pvz_row/ObbActivity$7;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/ObbActivity;->startDownload()V
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
    .line 775
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$7;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 779
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 780
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$7;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/ObbActivity;->finish()V

    .line 781
    return-void
.end method
