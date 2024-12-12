.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$4;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->updateViewWithNewItems()V
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
    .line 179
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$4;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$4;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-virtual {v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->requestLayout()V

    .line 185
    return-void
.end method
