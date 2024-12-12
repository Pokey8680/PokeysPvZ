.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/GooglePlay;->deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

.field final synthetic val$callback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/NimbleMTXTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;->val$callback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;->val$transaction:Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;->val$callback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;->val$transaction:Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    invoke-interface {v0, v1}, Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;->itemGrantedComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    .line 2493
    return-void
.end method
