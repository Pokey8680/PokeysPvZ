.class Lcom/popcap/pvz_row/XPromoButtonIcon$1;
.super Ljava/lang/Object;
.source "XPromoButtonIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 31
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoButtonIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoButtonIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;

    iget-object v2, v2, Lcom/popcap/pvz_row/XPromoButtonIcon;->m_item:Lcom/ea/rs/xpromo/Item;

    const-string v3, "custom1"

    invoke-virtual {v2, v3}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/popcap/pvz_row/XPromoContentManager;->getAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 36
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PvZApplication] .... ShowDynamicButton  addDynamicButton icon = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoButtonIcon$1;->this$0:Lcom/popcap/pvz_row/XPromoButtonIcon;

    invoke-virtual {v1, v0}, Lcom/popcap/pvz_row/XPromoButtonIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method
