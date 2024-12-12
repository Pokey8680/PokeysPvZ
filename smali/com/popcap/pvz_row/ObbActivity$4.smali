.class Lcom/popcap/pvz_row/ObbActivity$4;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/ObbActivity;->explainPermissions([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/ObbActivity;

.field final synthetic val$permissionsArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/ObbActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$4;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    iput-object p2, p0, Lcom/popcap/pvz_row/ObbActivity$4;->val$permissionsArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 700
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 701
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$4;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    iget-object v1, p0, Lcom/popcap/pvz_row/ObbActivity$4;->val$permissionsArray:[Ljava/lang/String;

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 702
    return-void
.end method
