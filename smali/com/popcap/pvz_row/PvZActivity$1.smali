.class Lcom/popcap/pvz_row/PvZActivity$1;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->setupSystemUiVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/PvZActivity;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/PvZActivity;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$1;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$1;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/PvZActivity;->access$000(Lcom/popcap/pvz_row/PvZActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$1;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/PvZActivity;->access$100(Lcom/popcap/pvz_row/PvZActivity;)V

    .line 372
    :cond_0
    return-void
.end method
