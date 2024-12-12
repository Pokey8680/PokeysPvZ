.class Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->startSetup(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field final synthetic val$iabBroadcastListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

.field final synthetic val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    iput-object p3, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$iabBroadcastListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 327
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const-string v5, "Billing service connected."

    invoke-virtual {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v5

    iput-object v5, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 332
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v4, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const-string v5, "Checking for in-app billing 3 support."

    invoke-virtual {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 338
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v4, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    const-string v6, "inapp"

    invoke-interface {v4, v5, v2, v6}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, "response":I
    if-eqz v3, :cond_1

    .line 342
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v6, "Error checking for billing v3 support."

    invoke-direct {v5, v3, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V

    .line 375
    .end local v3    # "response":I
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v3    # "response":I
    :cond_1
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In-app billing version 3 supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v4, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    if-nez v4, :cond_2

    .line 352
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$iabBroadcastListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    invoke-direct {v5, v6, v7}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V

    iput-object v5, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.android.vending.billing.PURCHASES_UPDATED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v4

    invoke-interface {v4}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v5, v5, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    .end local v0    # "broadcastFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v3    # "response":I
    :goto_1
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/4 v6, 0x0

    const-string v7, "Setup successful."

    invoke-direct {v5, v6, v7}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v4, :cond_3

    .line 364
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->val$listener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/16 v6, -0x3e9

    const-string v7, "RemoteException while setting up in-app billing."

    invoke-direct {v5, v6, v7}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)V

    .line 367
    :cond_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v1, v1, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-object v2, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iput-object v2, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 321
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;->this$0:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    .line 322
    return-void
.end method
