.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$singleListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$multiListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/IabResult;>;"
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    .line 1296
    .local v1, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v4, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->consume(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    .line 1299
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/ea/nimble/mtx/googleplay/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1301
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "ex":Lcom/ea/nimble/mtx/googleplay/util/IabException;
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;->getResult()Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    .end local v0    # "ex":Lcom/ea/nimble/mtx/googleplay/util/IabException;
    .end local v1    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :cond_0
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    .line 1311
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$singleListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_1

    .line 1313
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$1;

    invoke-direct {v4, p0, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$1;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1322
    :cond_1
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$multiListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_2

    .line 1324
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;

    invoke-direct {v4, p0, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1333
    :cond_2
    return-void
.end method
