.class Lcom/popcap/pvz_row/PvZActivity$2;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/PvZActivity;
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
    .line 383
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/PvZActivity;->isAtLeastAPI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_0

    .line 401
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$2;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
