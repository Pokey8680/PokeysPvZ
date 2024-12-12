.class public Lcom/ea/nimble/mtx/googleplay/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;,
        Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_BAD_STATE_ERROR:I = -0x3f0

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f1

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

.field mAsyncRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mDebugLog:Z

    .line 133
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 136
    iput-boolean v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    .line 140
    iput-boolean v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 152
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseUpdateReceiver:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$IabPurchaseUpdateReceiver;

    .line 158
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 217
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "IabHelper initializing with null application context!"

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 222
    :cond_0
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 223
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncRequestQueue:Ljava/util/LinkedList;

    .line 226
    return-void
.end method

.method private checkAndPopAsyncQueue()V
    .locals 2

    .prologue
    .line 1074
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .line 1078
    .local v0, "op":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagStartAsync(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V

    .line 1079
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->run()V

    .line 1081
    .end local v0    # "op":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    :cond_0
    return-void
.end method

.method private enqueueOperation(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .prologue
    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueuing operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to execute after current async op, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1057
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 956
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 959
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    const-string v4, "/"

    .line 967
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_1

    .line 971
    rsub-int v2, p0, -0x3e8

    .line 972
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    .line 978
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 973
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 975
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 976
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 978
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method

.method private declared-synchronized startOrQueueRunnable(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V
    .locals 1
    .param p1, "operation"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .prologue
    .line 1061
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->isAsyncInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->enqueueOperation(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :goto_0
    monitor-exit p0

    return-void

    .line 1067
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagStartAsync(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V

    .line 1068
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1061
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 985
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 987
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    return-void
.end method

.method consume(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/mtx/googleplay/util/IabException;
        }
    .end annotation

    .prologue
    .line 854
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 858
    :try_start_0
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 859
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 864
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 865
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 869
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 872
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 874
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 872
    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 877
    .local v1, "response":I
    if-nez v1, :cond_2

    .line 879
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 891
    return-void

    .line 883
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 884
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/ea/nimble/mtx/googleplay/util/Purchase;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .param p2, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 935
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/util/Purchase;",
            ">;",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 944
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/Purchase;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 945
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 10
    .param p2, "singleListener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/util/Purchase;",
            ">;",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/util/Purchase;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1273
    .local v7, "looper":Landroid/os/Looper;
    if-nez v7, :cond_0

    .line 1275
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 1279
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1282
    .local v4, "handler":Landroid/os/Handler;
    new-instance v6, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    const-string v8, "consume"

    const/4 v9, 0x1

    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$4;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, p0, v8, v9, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1335
    .local v6, "consumeOp":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    invoke-direct {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->startOrQueueRunnable(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V

    .line 1336
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    .line 438
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 440
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 442
    :cond_0
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 443
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 444
    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 446
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mDebugLog:Z

    .line 250
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mDebugLog:Z

    .line 244
    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 245
    return-void
.end method

.method declared-synchronized flagEndAsync()V
    .locals 2

    .prologue
    .line 1043
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 1048
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->checkAndPopAsyncQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    monitor-exit p0

    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method flagStartAsync(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V
    .locals 3
    .param p1, "operation"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1035
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_0
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncOperation:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    .line 1037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncInProgress:Z

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "MTX Google IABHelper"

    return-object v0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 994
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 995
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 996
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 997
    const/4 v1, 0x0

    .line 1000
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 999
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1000
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 1002
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1004
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1012
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1014
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1015
    const/4 v1, 0x0

    .line 1018
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 1017
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1018
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_0

    .line 1021
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1023
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v9, -0x1

    const/16 v11, -0x3ea

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 607
    const-string v8, "handleActivityResult..."

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 611
    iget v8, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 707
    :goto_0
    return v6

    .line 613
    :cond_0
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->flagEndAsync()V

    .line 618
    if-nez p3, :cond_2

    .line 620
    const-string v6, "Null data in IAB activity result."

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 621
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v6, "Null data in IAB result"

    invoke-direct {v5, v11, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 624
    .local v5, "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    :cond_1
    move v6, v7

    .line 626
    goto :goto_0

    .line 629
    .end local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v4

    .line 632
    .local v4, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    .local v3, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "dataSignature":Ljava/lang/String;
    if-ne p2, v9, :cond_8

    if-nez v4, :cond_8

    .line 638
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 639
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 640
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 643
    if-eqz v3, :cond_3

    if-nez v0, :cond_5

    .line 645
    :cond_3
    const-string v6, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 646
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extras: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 647
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/16 v6, -0x3f1

    const-string v8, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v5, v6, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 650
    .restart local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    :cond_4
    move v6, v7

    .line 652
    goto/16 :goto_0

    .line 655
    .end local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 659
    .local v2, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :try_start_0
    new-instance v2, Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    .end local v2    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    invoke-direct {v2, v3, v0}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .restart local v2    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 676
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v10, "Success"

    invoke-direct {v9, v6, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    .end local v2    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :cond_6
    :goto_1
    move v6, v7

    .line 707
    goto/16 :goto_0

    .line 661
    :catch_0
    move-exception v1

    .line 663
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "Failed to parse purchase data."

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 665
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v6, "Failed to parse purchase data."

    invoke-direct {v5, v11, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 668
    .restart local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    :cond_7
    move v6, v7

    .line 670
    goto/16 :goto_0

    .line 679
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_8
    if-ne p2, v9, :cond_9

    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 683
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    .line 687
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v6, "Problem purchashing item."

    invoke-direct {v5, v4, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 688
    .restart local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    goto :goto_1

    .line 691
    .end local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_9
    if-nez p2, :cond_a

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Google Play Activity canceled - Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 695
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const-string v6, "Problem purchashing item."

    invoke-direct {v5, v4, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 696
    .restart local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    goto :goto_1

    .line 701
    .end local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Purchase failed. Result code: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ". Response: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 702
    invoke-static {v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 701
    invoke-virtual {p0, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 703
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    const/16 v6, -0x3ee

    const-string v8, "Unknown purchase response."

    invoke-direct {v5, v6, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 704
    .restart local v5    # "result":Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mPurchaseListener:Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v6, v5, v10}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    goto/16 :goto_1
.end method

.method isAsyncInProgress()Z
    .locals 1

    .prologue
    .line 1029
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mAsyncInProgress:Z

    return v0
.end method

.method public isServiceAvailable()Z
    .locals 1

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 476
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public declared-synchronized launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 10
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    new-instance v7, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    const-string v8, "launchPurchaseFlow"

    const/4 v9, 0x0

    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$2;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;ILandroid/app/Activity;)V

    invoke-direct {v7, p0, v8, v9, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 587
    .local v7, "purchaseOp":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    invoke-direct {p0, v7}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->startOrQueueRunnable(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    monitor-exit p0

    return-void

    .line 500
    .end local v7    # "purchaseOp":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1340
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1341
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1345
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1350
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    return-void
.end method

.method public queryInventory(ZZLjava/util/List;)Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .locals 6
    .param p1, "ownedItems"    # Z
    .param p2, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/nimble/mtx/googleplay/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ea/nimble/mtx/googleplay/util/IabException;
        }
    .end annotation

    .prologue
    .line 723
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 726
    :try_start_0
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/util/Inventory;

    invoke-direct {v1}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;-><init>()V

    .line 727
    .local v1, "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    const/4 v2, -0x1

    .line 729
    .local v2, "r":I
    if-eqz p1, :cond_0

    .line 731
    invoke-virtual {p0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryPurchases(Lcom/ea/nimble/mtx/googleplay/util/Inventory;)I

    move-result v2

    .line 732
    if-eqz v2, :cond_0

    .line 734
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 749
    .end local v1    # "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 738
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p2, :cond_1

    .line 740
    :try_start_1
    invoke-virtual {p0, v1, p3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->querySkuDetails(Lcom/ea/nimble/mtx/googleplay/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 741
    if-eqz v2, :cond_1

    .line 743
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 753
    .end local v1    # "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v0

    .line 755
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 757
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/IabException;

    const/16 v4, -0x3f0

    const-string v5, "IabHelper in a bad state (billing service not connected, application context is null, etc."

    invoke-direct {v3, v4, v5, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 747
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "inv":Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    const/4 v1, 0x1

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0, p1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventoryAsync(ZZLjava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 835
    return-void
.end method

.method public queryInventoryAsync(ZZLcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "ownedItems"    # Z
    .param p2, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventoryAsync(ZZLjava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 840
    return-void
.end method

.method public queryInventoryAsync(ZZLjava/util/List;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 11
    .param p1, "ownedItems"    # Z
    .param p2, "querySkuDetails"    # Z
    .param p4, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 793
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    .line 794
    .local v7, "looper":Landroid/os/Looper;
    if-nez v7, :cond_0

    .line 796
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    .line 798
    :cond_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 800
    .local v5, "handler":Landroid/os/Handler;
    new-instance v8, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;

    const-string v9, "queryInventory"

    const/4 v10, 0x1

    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$3;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;ZZLjava/util/List;Landroid/os/Handler;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v8, p0, v9, v10, v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 829
    .local v8, "queryOp":Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;
    invoke-direct {p0, v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->startOrQueueRunnable(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$AsyncOperation;)V

    .line 830
    return-void
.end method

.method queryPurchases(Lcom/ea/nimble/mtx/googleplay/util/Inventory;)I
    .locals 17
    .param p1, "inv"    # Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1093
    const-string v13, "Querying owned items..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1094
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1096
    const/4 v12, 0x0

    .line 1097
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 1099
    .local v1, "continueToken":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v13, :cond_0

    .line 1101
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Billing service is not connected."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1103
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v13, :cond_1

    .line 1105
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "InAppBilling application context is unset."

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1110
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 1115
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "inapp"

    .line 1113
    move-object/from16 v0, v16

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 1119
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 1120
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1121
    if-eqz v8, :cond_2

    .line 1124
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1189
    .end local v8    # "response":I
    :goto_0
    return v8

    .line 1127
    .restart local v8    # "response":I
    :cond_2
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 1128
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 1129
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1132
    :cond_3
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1133
    const/16 v8, -0x3ea

    goto :goto_0

    .line 1136
    :cond_4
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1138
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1140
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1144
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_9

    .line 1146
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1147
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1148
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1151
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 1153
    const-string v13, "App public key not set. Skipping client-side validation."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1160
    :goto_2
    const-string v13, "purchaseData((%s))"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1161
    const-string v13, "signature((%s))"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/ea/nimble/mtx/googleplay/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1165
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1166
    new-instance v5, Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    invoke-direct {v5, v6, v9}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    .local v5, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    invoke-virtual {v5}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1170
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1171
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1175
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->addPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V

    .line 1144
    .end local v5    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1157
    :cond_7
    const-string v13, "Signature((%s))"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1178
    :cond_8
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 1179
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1180
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1181
    const/4 v12, 0x1

    goto :goto_3

    .line 1185
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_9
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1186
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1189
    if-eqz v12, :cond_a

    const/16 v13, -0x3eb

    :goto_4
    move v8, v13

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    goto :goto_4
.end method

.method querySkuDetails(Lcom/ea/nimble/mtx/googleplay/util/Inventory;Ljava/util/List;)I
    .locals 16
    .param p1, "inv"    # Lcom/ea/nimble/mtx/googleplay/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/mtx/googleplay/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1194
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "Querying SKU details."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v12, :cond_0

    .line 1198
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Billing service is not connected."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1200
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    if-nez v12, :cond_1

    .line 1202
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "InAppBilling application context is unset."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1205
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v10, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1207
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1209
    :cond_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_3

    .line 1211
    const-string v12, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1212
    const/4 v7, 0x0

    .line 1259
    :goto_0
    return v7

    .line 1215
    :cond_3
    const/4 v2, 0x0

    .line 1216
    .local v2, "currentOffset":I
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v2, v12, :cond_8

    .line 1218
    const/16 v1, 0x14

    .line 1219
    .local v1, "MAX_ITEMS_IN_QUERY":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v2

    const/16 v13, 0x14

    if-le v12, v13, :cond_5

    add-int/lit8 v4, v2, 0x14

    .line 1220
    .local v4, "end":I
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v10, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1221
    .local v5, "partialSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v2, v4

    .line 1223
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1224
    .local v6, "querySkus":Landroid/os/Bundle;
    const-string v12, "ITEM_ID_LIST"

    invoke-virtual {v6, v12, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    .line 1229
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "inapp"

    .line 1227
    invoke-interface {v12, v13, v14, v15, v6}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1233
    .local v9, "skuDetails":Landroid/os/Bundle;
    const-string v12, "DETAILS_LIST"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1235
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v7

    .line 1236
    .local v7, "response":I
    if-eqz v7, :cond_6

    .line 1238
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSkuDetails() failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v7}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    .end local v4    # "end":I
    .end local v5    # "partialSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "querySkus":Landroid/os/Bundle;
    .end local v7    # "response":I
    .end local v9    # "skuDetails":Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    .line 1243
    .restart local v4    # "end":I
    .restart local v5    # "partialSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "querySkus":Landroid/os/Bundle;
    .restart local v7    # "response":I
    .restart local v9    # "skuDetails":Landroid/os/Bundle;
    :cond_6
    const-string v12, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 1244
    const/16 v7, -0x3ea

    goto :goto_0

    .line 1248
    .end local v7    # "response":I
    :cond_7
    const-string v12, "DETAILS_LIST"

    invoke-virtual {v9, v12}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1251
    .local v8, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1253
    .local v11, "thisResponse":Ljava/lang/String;
    new-instance v3, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;

    invoke-direct {v3, v11}, Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v3, "d":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got sku details: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1255
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/ea/nimble/mtx/googleplay/util/Inventory;->addSkuDetails(Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;)V

    goto :goto_2

    .line 1259
    .end local v1    # "MAX_ITEMS_IN_QUERY":I
    .end local v3    # "d":Lcom/ea/nimble/mtx/googleplay/util/SkuDetails;
    .end local v4    # "end":I
    .end local v5    # "partialSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "querySkus":Landroid/os/Bundle;
    .end local v8    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "skuDetails":Landroid/os/Bundle;
    .end local v11    # "thisResponse":Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public setApplicationPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public startSetup(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;
    .param p2, "iabBroadcastListener"    # Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;

    .prologue
    const/4 v7, 0x0

    .line 302
    iget-boolean v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mSetupDone:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "IAB helper is already set up."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_0
    const-string v4, "Starting in-app billing setup."

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 306
    new-instance v4, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper$1;-><init>(Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V

    iput-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 378
    const-string v4, "...Starting in-app billing setup."

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 379
    const-string v4, "Binding service..."

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 394
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, "implicitIabServiceIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 398
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_2

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 408
    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 411
    const-string v4, "Success - Bind to InAppBillingService"

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 426
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 416
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const-string v4, "Failed to Bind to InAppBillingService"

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 417
    iput-object v7, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    goto :goto_0

    .line 423
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string v4, "Unable to get ResolveInfo for InAppBillingService intent. Cannot bind to InAppBillinbService"

    invoke-virtual {p0, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 424
    iput-object v7, p0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    goto :goto_0
.end method
