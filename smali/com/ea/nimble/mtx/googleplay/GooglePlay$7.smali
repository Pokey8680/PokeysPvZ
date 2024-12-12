.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallGetNonceFromSynergy(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    const/4 v3, 0x0

    .line 1318
    if-nez p2, :cond_0

    .line 1320
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-interface {v1, v2, p1, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    .line 1330
    :goto_0
    return-void

    .line 1324
    :cond_0
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v2, "Synergy getNonce request error."

    invoke-direct {v0, v1, v2, p2}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    .local v0, "nimbleError":Lcom/ea/nimble/mtx/NimbleMTXError;
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-interface {v1, v2, v3, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method
