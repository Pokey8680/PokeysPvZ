.class Lcom/popcap/pvz_row/XPromoPanelIcon$1;
.super Ljava/lang/Object;
.source "XPromoPanelIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 30
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoPanelIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoPanelIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;

    iget-object v2, v2, Lcom/popcap/pvz_row/XPromoPanelIcon;->m_item:Lcom/ea/rs/xpromo/Item;

    const-string v3, "100x100"

    invoke-virtual {v2, v3}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoContentManager;->getAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 35
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoPanelIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoPanelIcon;

    invoke-virtual {v1, v0}, Lcom/popcap/pvz_row/XPromoPanelIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method
