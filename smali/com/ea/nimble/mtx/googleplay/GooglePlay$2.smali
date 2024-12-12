.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$2;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createIabHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$2;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receivedBroadcast()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "Received PURCHASES_UPDATED broadcast - resolving transactions"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$2;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->restorePurchasedTransactions()V

    .line 251
    return-void
.end method
