.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallRecordPurchase(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 2043
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V
    .locals 8
    .param p1, "handle"    # Lcom/ea/nimble/SynergyNetworkConnectionHandle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2047
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 2048
    .local v1, "exception":Ljava/lang/Exception;
    if-nez v1, :cond_2

    .line 2050
    invoke-interface {p1}, Lcom/ea/nimble/SynergyNetworkConnectionHandle;->getResponse()Lcom/ea/nimble/ISynergyResponse;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/ISynergyResponse;->getJsonData()Ljava/util/Map;

    move-result-object v2

    .line 2051
    .local v2, "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordPurchase response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iput-boolean v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    .line 2068
    .end local v2    # "jsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

    if-eqz v3, :cond_1

    .line 2069
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2070
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2072
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$callback:Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

    invoke-interface {v3, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;->onVerificationComplete(Ljava/lang/Exception;)V

    .line 2074
    :cond_1
    return-void

    .line 2054
    :cond_2
    instance-of v3, v1, Lcom/ea/nimble/Error;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 2056
    check-cast v0, Lcom/ea/nimble/Error;

    .line 2059
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SynergyServerError"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2060
    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getCode()I

    move-result v3

    sget-object v4, Lcom/ea/nimble/SynergyServerError$Code;->AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    invoke-virtual {v4}, Lcom/ea/nimble/SynergyServerError$Code;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2061
    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getCode()I

    move-result v3

    sget-object v4, Lcom/ea/nimble/SynergyServerError$Code;->APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    invoke-virtual {v4}, Lcom/ea/nimble/SynergyServerError$Code;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2063
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-object v5, v5, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed to record with error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2064
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iput-boolean v7, v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    goto :goto_0
.end method
