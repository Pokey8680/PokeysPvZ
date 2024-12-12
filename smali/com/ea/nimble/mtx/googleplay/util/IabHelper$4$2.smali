.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;->this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;->this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$multiListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;->this$1:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 1330
    return-void
.end method
