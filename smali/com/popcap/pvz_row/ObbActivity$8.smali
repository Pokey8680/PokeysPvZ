.class Lcom/popcap/pvz_row/ObbActivity$8;
.super Ljava/lang/Object;
.source "ObbActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/ObbActivity;->setupSystemUiVisibility()V
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
    .line 913
    iput-object p1, p0, Lcom/popcap/pvz_row/ObbActivity$8;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 917
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$8;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$300(Lcom/popcap/pvz_row/ObbActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/popcap/pvz_row/ObbActivity$8;->this$0:Lcom/popcap/pvz_row/ObbActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/ObbActivity;->access$400(Lcom/popcap/pvz_row/ObbActivity;)V

    .line 921
    :cond_0
    return-void
.end method
