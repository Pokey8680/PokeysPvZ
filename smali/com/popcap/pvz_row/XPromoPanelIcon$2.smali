.class Lcom/popcap/pvz_row/XPromoPanelIcon$2;
.super Ljava/lang/Object;
.source "XPromoPanelIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoPanelIcon;->initilize(Lcom/ea/rs/xpromo/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoPanelIcon;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoPanelIcon$2;->this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoPanelIcon$2;->this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;

    iget-object v0, v0, Lcom/popcap/pvz_row/XPromoPanelIcon;->m_item:Lcom/ea/rs/xpromo/Item;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Item;->launch()Z

    .line 46
    return-void
.end method
