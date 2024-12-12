.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getGooglePlayPricingForPendingCatalogItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field final synthetic val$newGooglePlayRequest:Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;->val$newGooglePlayRequest:Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1230
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;->val$newGooglePlayRequest:Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->queryGooglePlay()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;->val$newGooglePlayRequest:Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/4 v3, 0x3

    const-string v4, "Billing is unavailable"

    invoke-direct {v2, v3, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;->onQueryInventoryFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Inventory;)V

    goto :goto_0
.end method
