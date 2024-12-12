.class Lcom/popcap/pvz_row/XPromoButtonIcon$2;
.super Ljava/lang/Object;
.source "XPromoButtonIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoButtonIcon;->initilize(Lcom/ea/rs/xpromo/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoButtonIcon;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoButtonIcon$2;->this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoButtonIcon$2;->this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;

    iget-object v0, v0, Lcom/popcap/pvz_row/XPromoButtonIcon;->m_item:Lcom/ea/rs/xpromo/Item;

    invoke-virtual {v0}, Lcom/ea/rs/xpromo/Item;->launch()Z

    .line 48
    return-void
.end method
