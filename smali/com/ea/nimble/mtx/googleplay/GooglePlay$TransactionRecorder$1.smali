.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    .prologue
    .line 2618
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerificationComplete(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$2100(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2641
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    iget-boolean v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    if-nez v0, :cond_2

    .line 2630
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->access$2200(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;)Lcom/ea/nimble/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2632
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->access$2200(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;)Lcom/ea/nimble/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-static {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->access$2300(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;)D

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto :goto_0

    .line 2637
    :cond_2
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2638
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$2400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    .line 2639
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder$1;->this$1:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->access$2302(Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;D)D

    goto :goto_0
.end method
