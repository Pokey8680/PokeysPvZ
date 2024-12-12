.class public Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IabPurchaseUpdateReceiver"
.end annotation


# instance fields
.field private final mListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;
    .param p2, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;->mListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    .line 276
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;->mListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;->mListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    invoke-interface {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;->receivedBroadcast()V

    .line 284
    :cond_0
    return-void
.end method
