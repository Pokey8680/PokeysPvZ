.class public Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;
.super Lcom/ea/nimble/mtx/NimbleCatalogItem;
.source "SynergyCatalogItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_additionalInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_description:Ljava/lang/String;

.field m_formattedPrice:Ljava/lang/String;

.field m_isFree:Z

.field m_metaDataUrl:Ljava/lang/String;

.field m_price:F

.field m_sku:Ljava/lang/String;

.field m_title:Ljava/lang/String;

.field m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sku"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAdditionalInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_additionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_type:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    return-object v0
.end method

.method public getMetaDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_metaDataUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_price:F

    return v0
.end method

.method public getPriceWithCurrencyAndFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_formattedPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_sku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_isFree:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_description:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPriceDecimal(F)V
    .locals 0
    .param p1, "priceDecimal"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_price:F

    .line 71
    return-void
.end method

.method public setPriceWithCurrencyAndFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_formattedPrice:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalogItem;->m_title:Ljava/lang/String;

    .line 50
    return-void
.end method
