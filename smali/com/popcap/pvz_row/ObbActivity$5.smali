.class Lcom/popcap/pvz_row/ObbActivity$5;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/ObbActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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
    .line 729
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$5;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 733
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 736
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "package:com.popcap.pvz_row"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 738
    iget-object v2, p0, Lcom/popcap/pvz_row/ObbActivity$5;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v2, v1}, Lcom/popcap/pvz_row/ObbActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    iget-object v2, p0, Lcom/popcap/pvz_row/ObbActivity$5;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v2}, Lcom/popcap/pvz_row/ObbActivity;->finish()V

    .line 746
    return-void

    .line 740
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/popcap/pvz_row/ObbActivity$5;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-virtual {v2, v1}, Lcom/popcap/pvz_row/ObbActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
