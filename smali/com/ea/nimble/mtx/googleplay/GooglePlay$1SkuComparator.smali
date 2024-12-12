.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$1SkuComparator;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getAvailableCatalogItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkuComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/ea/nimble/mtx/NimbleCatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1SkuComparator;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ea/nimble/mtx/NimbleCatalogItem;Lcom/ea/nimble/mtx/NimbleCatalogItem;)I
    .locals 2
    .param p1, "a"    # Lcom/ea/nimble/mtx/NimbleCatalogItem;
    .param p2, "b"    # Lcom/ea/nimble/mtx/NimbleCatalogItem;

    .prologue
    .line 1096
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/NimbleCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1091
    check-cast p1, Lcom/ea/nimble/mtx/NimbleCatalogItem;

    check-cast p2, Lcom/ea/nimble/mtx/NimbleCatalogItem;

    invoke-virtual {p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1SkuComparator;->compare(Lcom/ea/nimble/mtx/NimbleCatalogItem;Lcom/ea/nimble/mtx/NimbleCatalogItem;)I

    move-result v0

    return v0
.end method
