.class Lcom/popcap/pvz_row/PvZActivity$5;
.super Ljava/lang/Object;
.source "PvZActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/PvZActivity;->HideDiscoveryStrip()V
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
    .line 826
    iput-object p1, p0, Lcom/popcap/pvz_row/PvZActivity$5;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 832
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "................HideDiscoveryStrip removing frame layout"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/popcap/pvz_row/PvZActivity$5;->this$0:Lcom/popcap/pvz_row/PvZActivity;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/PvZActivity;->getDstripInstance()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 840
    :catch_0
    move-exception v0

    goto :goto_0
.end method
