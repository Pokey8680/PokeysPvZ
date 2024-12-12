.class public abstract Lcom/ea/nimble/mtx/NimbleCatalogItem;
.super Ljava/lang/Object;
.source "NimbleCatalogItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public abstract getAdditionalInfo()Ljava/util/Map;
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
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
.end method

.method public abstract getMetaDataUrl()Ljava/lang/String;
.end method

.method public abstract getPriceDecimal()F
.end method

.method public abstract getPriceWithCurrencyAndFormat()Ljava/lang/String;
.end method

.method public abstract getSku()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method
