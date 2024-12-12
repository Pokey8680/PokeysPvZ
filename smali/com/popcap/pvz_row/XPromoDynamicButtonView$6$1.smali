.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$6$1;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;->onLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6$1;->this$1:Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6$1;->this$1:Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;

    iget-object v0, v0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$6;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    invoke-static {v0}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->access$200(Lcom/popcap/pvz_row/XPromoDynamicButtonView;)V

    .line 286
    return-void
.end method
