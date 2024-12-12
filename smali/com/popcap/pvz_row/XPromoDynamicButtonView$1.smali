.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$1;
.super Landroid/content/BroadcastReceiver;
.source "XPromoDynamicButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->initilize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$1;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$1;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->refreshView()V

    .line 67
    return-void
.end method
