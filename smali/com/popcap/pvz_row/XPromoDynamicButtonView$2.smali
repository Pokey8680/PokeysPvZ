.class Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;
.super Ljava/lang/Object;
.source "XPromoDynamicButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoDynamicButtonView;->setDefaultMoreGamesButtonVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoDynamicButtonView;Z)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iput-boolean p2, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;->this$0:Lcom/popcap/pvz_row/XPromoDynamicButtonView;

    iget-boolean v1, p0, Lcom/popcap/pvz_row/XPromoDynamicButtonView$2;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/popcap/pvz_row/XPromoDynamicButtonView;->NativeSetDefaultMoreGamesButtonVisible(Z)V

    .line 86
    return-void
.end method
