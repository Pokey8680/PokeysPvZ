.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;


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
    .line 228
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .prologue
    const/4 v2, 0x0

    .line 231
    const-string v0, "InAppBilling helper setup finished."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting up InAppBilling helper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-static {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->access$400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->restoreItems()V

    goto :goto_0
.end method
