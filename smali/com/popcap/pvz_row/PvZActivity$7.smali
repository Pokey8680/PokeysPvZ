.class Lcom/popcap/pvz_row/PvZActivity$7;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->HideDynamicButton()V
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
    .line 905
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$7;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$7;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-static {v0}, Lcom/popcap/pvz_row/PvZActivity;->access$200(Lcom/popcap/pvz_row/PvZActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................HideDynamicButton of PvZ 1............."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 913
    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/popcap/pvz_row/PvZActivity;->gXPromoDynamicButtonView:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v0

    goto :goto_0
.end method
