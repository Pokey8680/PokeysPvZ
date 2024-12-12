.class Lcom/popcap/pvz_row/ObbActivity$6;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 784
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$6;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 788
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 789
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$6;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/ObbActivity;->finish()V

    .line 790
    return-void
.end method
