.class public Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
.super Lcom/ea/nimble/mtx/NimbleCatalogItem;
.source "GooglePlayCatalogItem.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field mAdditionalInfo:Ljava/util/Map;
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

.field mDescription:Ljava/lang/String;

.field mIsFree:Z

.field mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

.field mPriceDecimal:F

.field mPriceWithCurrencyAndFormat:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->UNKNOWN:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;)V
    .locals 2
    .param p1, "other"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ea/nimble/mtx/NimbleCatalogItem;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 45
    iget v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    iput v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    .line 47
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 49
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    .line 52
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
    .line 112
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    return-object v0
.end method

.method public getMetaDataUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceDecimal()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    return v0
.end method

.method public getPriceWithCurrencyAndFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    .line 139
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    .line 140
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    .line 143
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    .line 144
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    .line 145
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    .line 146
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SKU("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Title("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Price("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") Currency("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    const-string v2, "localCurrency"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") PriceStr("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ItemType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mSku:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mTitle:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mDescription:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceDecimal:F

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 129
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mPriceWithCurrencyAndFormat:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mItemType:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 131
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mIsFree:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 132
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->mAdditionalInfo:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
