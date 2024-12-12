.class public Lcom/ea/nimble/mtx/googleplay/GooglePlay;
.super Lcom/ea/nimble/Component;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/mtx/INimbleMTX;
.implements Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;,
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$RestoreTransactionVerifier;,
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;,
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;,
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;,
        Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;
    }
.end annotation


# static fields
.field private static final CACHE_EXPIRE_TIME:D = 3600.0

.field private static final CACHE_TIMESTAMP_KEY:Ljava/lang/String; = "cacheTimestamp"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.mtx.googleplay"

.field private static final DEFERRED_CALLBACK_DELAY:D = 0.1

.field public static GOOGLEPLAY_ACTIVITY_RESULT_REQUEST_CODE:I = 0x0

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_ORDERID:Ljava/lang/String; = null

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASEDATA:Ljava/lang/String; = null

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASESTATE:Ljava/lang/String; = null

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASETIME:Ljava/lang/String; = null

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_RECEIPT:Ljava/lang/String; = null

.field public static GOOGLEPLAY_ADDITIONALINFO_KEY_TOKEN:Ljava/lang/String; = null

.field public static GOOGLEPLAY_PLATFORM_PARAMETER_APPLICATION_PUBLIC_KEY:Ljava/lang/String; = null

.field private static final MAX_REQUEST_RETRY_DELAY:D = 300.0

.field private static final PERSISTENCE_CATALOG_ITEMS:Ljava/lang/String; = "catalogItems"

.field private static final PERSISTENCE_PENDING_TRANSACTIONS:Ljava/lang/String; = "pendingTransactions"

.field private static final PERSISTENCE_PURCHASED_TRANSACTIONS:Ljava/lang/String; = "purchasedTransactions"

.field private static final PERSISTENCE_RECOVERED_TRANSACTIONS:Ljava/lang/String; = "recoveredTransactions"

.field private static final PERSISTENCE_UNRECORDED_TRANSACTIONS:Ljava/lang/String; = "unrecordedTransactions"

.field private static final SYNERGY_API_VERIFY_AND_RECORD_GOOGLEPLAY_PURCHASE:Ljava/lang/String; = "/drm/api/android/verifyAndRecordPurchase"


# instance fields
.field mCatalogItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;",
            ">;"
        }
    .end annotation
.end field

.field mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

.field mPendingTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation
.end field

.field mPurchasedTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation
.end field

.field mRecoveredTransactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation
.end field

.field mUnrecordedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation
.end field

.field m_appPublicKey:Ljava/lang/String;

.field private m_cacheTimestamp:Ljava/lang/Long;

.field private m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

.field private m_restoreInProgress:Z

.field m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

.field private m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

.field private m_verificationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const v0, 0xf1206

    sput v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ACTIVITY_RESULT_REQUEST_CODE:I

    .line 97
    const-string v0, "GOOGLEPLAY_APPLICATION_PUBLIC_KEY"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_PLATFORM_PARAMETER_APPLICATION_PUBLIC_KEY:Ljava/lang/String;

    .line 98
    const-string v0, "orderId"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_ORDERID:Ljava/lang/String;

    .line 99
    const-string v0, "purchaseTime"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASETIME:Ljava/lang/String;

    .line 100
    const-string v0, "purchaseState"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASESTATE:Ljava/lang/String;

    .line 101
    const-string v0, "token"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_TOKEN:Ljava/lang/String;

    .line 102
    const-string v0, "purchaseData"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASEDATA:Ljava/lang/String;

    .line 103
    const-string v0, "receipt"

    sput-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_RECEIPT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 137
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    .line 138
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    .line 218
    return-void
.end method

.method static synthetic access$1000(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_verificationEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->onRestoreComplete(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getGooglePlayPricingForPendingCatalogItems(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createNimbleMTXErrorWithGooglePlayError(Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "x2"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/ea/nimble/Error;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateTransactionRecordWithNonce(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "x2"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallRecordPurchase(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "x2"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallGetNonceFromSynergy(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isCancelledError(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->saveUnrecordedTransactionsToPersistence()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->restorePurchasedTransactionsImpl(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createGooglePlayErrorFromIabResult(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->generateTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createAdditionalInfoBundleFromIabPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "other"    # Landroid/os/Bundle;

    .prologue
    .line 1279
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 1280
    .local v1, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1281
    .local v0, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    if-eqz p4, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1285
    .local v2, "extras":Landroid/os/Bundle;
    :goto_0
    if-nez p2, :cond_2

    .line 1287
    const-string v3, "result"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :goto_1
    if-eqz p3, :cond_0

    .line 1301
    const-string v3, "TRANSACTION_ID"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1306
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 1307
    return-void

    .line 1283
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 1294
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    const-string v3, "error"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v3, "result"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createAdditionalInfoBundleFromIabPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;
    .locals 4
    .param p1, "purchase"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/mtx/googleplay/util/Purchase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2203
    .local v0, "additionalInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-eqz p1, :cond_0

    .line 2205
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_ORDERID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASETIME:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getPurchaseTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2207
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASESTATE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getPurchaseState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2208
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_TOKEN:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASEDATA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2210
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_RECEIPT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    :cond_0
    return-object v0
.end method

.method private createGooglePlayErrorFromIabResult(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .locals 3
    .param p1, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;

    .prologue
    .line 2501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getResponse()I

    move-result v1

    if-nez v1, :cond_1

    .line 2502
    :cond_0
    const/4 v1, 0x0

    .line 2529
    :goto_0
    return-object v1

    .line 2506
    :cond_1
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getResponse()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2526
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->UNKNOWN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 2529
    .local v0, "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :goto_1
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 2508
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_0
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_USER_CANCELED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2509
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_1
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2510
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_2
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2511
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_3
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2512
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_4
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2513
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_5
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2514
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_6
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2515
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_7
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_ERROR_BASE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2516
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_8
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_REMOTE_EXCEPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2517
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_9
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2518
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_a
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_VERIFICATION_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2519
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_b
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_SEND_INTENT_FAILED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2520
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_c
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_USER_CANCELLED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2521
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_d
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_PURCHASE_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2522
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_e
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_MISSING_TOKEN:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2523
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_f
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_BAD_STATE_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2524
    .end local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    :sswitch_10
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_UNKNOWN_ERROR:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .restart local v0    # "errorCode":Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;
    goto :goto_1

    .line 2506
    :sswitch_data_0
    .sparse-switch
        -0x3f1 -> :sswitch_10
        -0x3f0 -> :sswitch_f
        -0x3ef -> :sswitch_e
        -0x3ee -> :sswitch_d
        -0x3ed -> :sswitch_c
        -0x3ec -> :sswitch_b
        -0x3eb -> :sswitch_a
        -0x3ea -> :sswitch_9
        -0x3e9 -> :sswitch_8
        -0x3e8 -> :sswitch_7
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private createIabHelper()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getAppPublicKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .line 226
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->enableDebugLogging(Z)V

    .line 227
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$2;

    invoke-direct {v2, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$2;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->startSetup(Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabSetupFinishedListener;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabBroadcastListener;)V

    .line 254
    return-void
.end method

.method private createNimbleMTXErrorWithGooglePlayError(Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;
    .locals 3
    .param p1, "googlePlayError"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2538
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 2540
    .local v0, "errorCode":Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    if-eqz p1, :cond_1

    .line 2542
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError;->getCode()I

    move-result v1

    .line 2543
    .local v1, "googlePlayCode":I
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_USER_CANCELED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->IABHELPER_USER_CANCELLED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    .line 2544
    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2546
    :cond_0
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 2566
    .end local v1    # "googlePlayCode":I
    :cond_1
    :goto_0
    new-instance v2, Lcom/ea/nimble/mtx/NimbleMTXError;

    invoke-direct {v2, v0, p2, p1}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 2548
    .restart local v1    # "googlePlayCode":I
    :cond_2
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 2550
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    goto :goto_0

    .line 2552
    :cond_3
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2554
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    goto :goto_0

    .line 2556
    :cond_4
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2558
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    goto :goto_0

    .line 2560
    :cond_5
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayError$Code;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 2562
    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    goto :goto_0
.end method

.method private deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    .locals 4
    .param p1, "callback"    # Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;
    .param p2, "transaction"    # Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    .prologue
    .line 2487
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$11;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    .line 2496
    .local v0, "deferTimer":Lcom/ea/nimble/Timer;
    const-wide v2, 0x3fb999999999999aL    # 0.1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 2497
    return-void
.end method

.method private filterForResumablePurchaseTransactions(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2302
    .local p1, "restoredTransactions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2304
    .local v0, "filteredMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    if-nez p1, :cond_1

    .line 2330
    :cond_0
    return-object v0

    .line 2309
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2311
    .local v1, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    sget-object v4, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    if-ne v3, v4, :cond_2

    .line 2314
    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_ACTIVITY_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_CONSUMPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v3, v4, :cond_3

    iget-object v3, v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v3, v4, :cond_2

    .line 2321
    :cond_3
    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findRecoveredTransactionsWithItemSku(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "sku"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2338
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2340
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    if-nez p1, :cond_1

    .line 2353
    :cond_0
    return-object v1

    .line 2345
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2347
    .local v0, "recoveredTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2349
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private generateDeveloperPayloadForTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)Ljava/lang/String;
    .locals 3
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .prologue
    .line 2571
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2572
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2574
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2190
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_appPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method private getCatalogItemBySku(Ljava/lang/String;)Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .locals 1
    .param p1, "itemSku"    # Ljava/lang/String;

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    return-object v0
.end method

.method public static getComponent()Lcom/ea/nimble/mtx/googleplay/GooglePlay;
    .locals 1

    .prologue
    .line 263
    const-string v0, "com.ea.nimble.mtx.googleplay"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    return-object v0
.end method

.method private getGooglePlayPricingForPendingCatalogItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    const/4 v3, 0x0

    .line 1124
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1127
    :cond_0
    const-string v1, "nimble.notification.mtx.refreshcatalogfinished"

    const-string v2, "Empty catalog item list for GooglePlay catalog query."

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1238
    :goto_0
    return-void

    .line 1223
    :cond_1
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/util/IabHelper;Ljava/util/List;)V

    .line 1225
    .local v0, "newGooglePlayRequest":Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;

    invoke-direct {v2, p0, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$6;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1GooglePlayCatalogUpdateListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private googlePlayCallPurchaseItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 6
    .param p1, "transactionRecord"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .prologue
    .line 1395
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->generateDeveloperPayloadForTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    .line 1398
    sget-object v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_ACTIVITY_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1400
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1401
    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ACTIVITY_RESULT_REQUEST_CODE:I

    iget-object v5, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    move-object v4, p0

    .line 1400
    invoke-virtual/range {v0 .. v5}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ea/nimble/mtx/googleplay/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method private googlePlayConsumeItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 6
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .prologue
    const/4 v5, 0x0

    .line 2084
    const/4 v1, 0x0

    .line 2087
    .local v1, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :try_start_0
    new-instance v2, Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    invoke-direct {v2, p1}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2109
    .end local v1    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .local v2, "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    new-instance v4, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;

    invoke-direct {v4, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$10;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    invoke-virtual {v3, v2, v4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->consumeAsync(Lcom/ea/nimble/mtx/googleplay/util/Purchase;Lcom/ea/nimble/mtx/googleplay/util/IabHelper$OnConsumeFinishedListener;)V

    move-object v1, v2

    .line 2180
    .end local v2    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    .restart local v1    # "purchase":Lcom/ea/nimble/mtx/googleplay/util/Purchase;
    :goto_0
    return-void

    .line 2089
    :catch_0
    move-exception v0

    .line 2091
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to construct a Purchase object from GooglePlayTransaction. Unable to consume item with Google Play!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2094
    iget-object v3, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    if-eqz v3, :cond_0

    .line 2096
    new-instance v3, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v4, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v5, "Unable to construct Purchase object from GooglePlayTransaction."

    invoke-direct {v3, v4, v5}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    iput-object v3, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 2097
    iget-object v3, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v3, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 2098
    iget-object v3, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    invoke-direct {p0, v3, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0

    .line 2102
    :cond_0
    const-string v3, "ItemGrantedCallback not set, no way to notify game."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    invoke-direct {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;-><init>()V

    const-string v1, "com.ea.nimble.mtx.googleplay"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private isCacheExpired()Z
    .locals 4

    .prologue
    .line 2699
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_cacheTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_cacheTimestamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 2701
    :cond_0
    const/4 v0, 0x1

    .line 2703
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCancelledError(Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 2688
    instance-of v2, p1, Lcom/ea/nimble/Error;

    if-nez v2, :cond_1

    .line 2694
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2692
    check-cast v0, Lcom/ea/nimble/Error;

    .line 2693
    .local v0, "error":Lcom/ea/nimble/Error;
    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NimbleError"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getCode()I

    move-result v2

    sget-object v3, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    invoke-virtual {v3}, Lcom/ea/nimble/Error$Code;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 2694
    :cond_2
    invoke-virtual {v0}, Lcom/ea/nimble/Error;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isCancelledError(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTransactionPending()Z
    .locals 1

    .prologue
    .line 2358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isTransactionPending(Z)Z

    move-result v0

    return v0
.end method

.method private isTransactionPending(Z)Z
    .locals 1
    .param p1, "checkRecoveredTransactions"    # Z

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2366
    :cond_0
    const/4 v0, 0x1

    .line 2369
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromPersistence()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2374
    const-string v6, "com.ea.nimble.mtx.googleplay"

    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v6, v7}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 2378
    .local v0, "mtxGooglePlayPersistence":Lcom/ea/nimble/Persistence;
    const-string v6, "catalogItems"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2379
    .local v1, "persistenceValue":Ljava/io/Serializable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/HashMap;

    if-ne v6, v7, :cond_0

    .line 2382
    new-instance v4, Ljava/util/HashMap;

    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "persistenceValue":Ljava/io/Serializable;
    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2387
    .local v4, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    iput-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    .line 2389
    const-string v6, "Restored %d catalog items from persistence."

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2392
    .end local v4    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    :cond_0
    const-string v6, "purchasedTransactions"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2393
    .restart local v1    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/HashMap;

    if-ne v6, v7, :cond_2

    .line 2396
    new-instance v5, Ljava/util/HashMap;

    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "persistenceValue":Ljava/io/Serializable;
    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2401
    .local v5, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    iput-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    .line 2403
    const-string v6, "%d purchased transactions restored from persistence."

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2412
    .end local v5    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    :goto_0
    const-string v6, "recoveredTransactions"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2413
    .restart local v1    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/HashMap;

    if-ne v6, v7, :cond_3

    .line 2416
    new-instance v5, Ljava/util/HashMap;

    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "persistenceValue":Ljava/io/Serializable;
    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2421
    .restart local v5    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    iput-object v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    .line 2423
    const-string v6, "%d recovered transactions restored from persistence."

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2431
    .end local v5    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    :goto_1
    const-string v6, "pendingTransactions"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2432
    .restart local v1    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/HashMap;

    if-ne v6, v7, :cond_4

    .line 2435
    new-instance v5, Ljava/util/HashMap;

    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "persistenceValue":Ljava/io/Serializable;
    invoke-direct {v5, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2438
    .restart local v5    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    const-string v6, "%d pending transactions restored from persistence."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2441
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 2443
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    .line 2449
    :cond_1
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-direct {p0, v5}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->filterForResumablePurchaseTransactions(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2453
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 2455
    .local v2, "recoveredTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2407
    .end local v2    # "recoveredTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .end local v5    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    .restart local v1    # "persistenceValue":Ljava/io/Serializable;
    :cond_2
    const-string v6, "No purchased transactions to restore."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2427
    :cond_3
    const-string v6, "No recovered transactions to restore."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2460
    :cond_4
    const-string v6, "No pending transactions to restore."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2463
    .end local v1    # "persistenceValue":Ljava/io/Serializable;
    :cond_5
    const-string v6, "unrecordedTransactions"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 2464
    .restart local v1    # "persistenceValue":Ljava/io/Serializable;
    if-eqz v1, :cond_6

    instance-of v6, v1, Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    move-object v3, v1

    .line 2467
    check-cast v3, Ljava/util/ArrayList;

    .line 2468
    .local v3, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    iput-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    .line 2469
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    .line 2472
    .end local v3    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    :cond_6
    const-string v6, "cacheTimestamp"

    invoke-virtual {v0, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    iput-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_cacheTimestamp:Ljava/lang/Long;

    .line 2475
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 2477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recovered transactions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2480
    const-string v6, "nimble.notification.mtx.transactionsrecovered"

    invoke-direct {p0, v6, v11, v11, v11}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2482
    :cond_7
    return-void
.end method

.method private networkCallGetNonceFromSynergy(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;)V
    .locals 4
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;

    .prologue
    .line 1313
    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    new-instance v3, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;

    invoke-direct {v3, p0, p2, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$7;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    invoke-virtual {v2, v3}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getNonce(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StringCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    :goto_0
    return-void

    .line 1333
    :catch_0
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1337
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Error making Synergy getNonce request"

    invoke-direct {v1, v2, v3, v0}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1341
    .local v1, "nimbleError":Lcom/ea/nimble/mtx/NimbleMTXError;
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$GetNonceCallback;->onGetNonceComplete(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)V

    goto :goto_0
.end method

.method private networkCallRecordPurchase(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V
    .locals 5
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;

    .prologue
    .line 1871
    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, p1, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1873
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    .line 2043
    .local v1, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$9;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlay$VerifyCallback;)V

    .line 2077
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v2, Lcom/ea/nimble/SynergyRequest;

    const-string v3, "/drm/api/android/verifyAndRecordPurchase"

    sget-object v4, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v2, v3, v4, v1}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 2078
    .local v2, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    .line 2079
    return-void
.end method

.method private onRestoreComplete(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 1774
    const/4 v5, 0x0

    .line 1775
    .local v5, "recoveredTransaction":Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1776
    .local v4, "purchasedTransactions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 1779
    .local v6, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    if-eqz v8, :cond_0

    .line 1782
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error making recordPurchase call to Synergy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1783
    iget-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 1786
    :cond_0
    sget-object v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v6, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1794
    const/4 v0, 0x0

    .line 1795
    .local v0, "bRestoredConsumable":Z
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1797
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 1798
    .local v1, "catalogItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v8

    sget-object v9, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-ne v8, v9, :cond_1

    .line 1800
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Consumable transaction restored, sku: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    const/4 v0, 0x1

    .line 1806
    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->findRecoveredTransactionsWithItemSku(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1807
    .local v3, "existingTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 1809
    .local v2, "existingTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    new-instance v9, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v10, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v11, "Transaction has been superseded by restored transaction"

    invoke-direct {v9, v10, v11}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    iput-object v9, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 1810
    iget-object v9, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v9, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 1811
    sget-object v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v9, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    goto :goto_1

    .line 1816
    .end local v1    # "catalogItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    .end local v2    # "existingTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .end local v3    # "existingTransactions":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    :cond_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 1818
    const/4 v5, 0x1

    .line 1821
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    sget-object v8, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 1824
    sget-object v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v6, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1840
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1830
    :cond_3
    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    iget-boolean v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_verificationEnabled:Z

    if-nez v8, :cond_2

    .line 1834
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    goto :goto_2

    .line 1843
    .end local v0    # "bRestoredConsumable":Z
    .end local v6    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_4
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->savePendingTransactionsToPersistence()V

    .line 1845
    iput-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    .line 1846
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->savePurchasedTransactionsToPersistence()V

    .line 1848
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->saveUnrecordedTransactionsToPersistence()V

    .line 1850
    iput-boolean v13, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    .line 1851
    const-string v7, "All RESTORE transactions processed. Raising REFRESH_PURCHASED_ITEMS_FINISHED notification."

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1852
    const-string v7, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    invoke-direct {p0, v7, v12, v12, v12}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1857
    if-eqz v5, :cond_5

    .line 1859
    const-string v7, "nimble.notification.mtx.transactionsrecovered"

    invoke-direct {p0, v7, v12, v12, v12}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1863
    :cond_5
    return-void
.end method

.method private restorePurchasedTransactionsImpl(Z)V
    .locals 9
    .param p1, "checkRecoveredTransactions"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 657
    iget-boolean v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    if-eqz v3, :cond_0

    .line 659
    const-string v3, "restorePurchasedTransactions called while restore already in progress. Aborting."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isTransactionPending(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 664
    const-string v3, "restorePurchasedTransactions called while transactions still pending."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingTransactions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recoveredTransactions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    const-string v3, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const-string v4, "Can\'t restore purchases while transaction is pending"

    invoke-direct {p0, v3, v4, v8, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 676
    :cond_1
    const-string v3, "restorePurchasedTransactions called."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    iput-boolean v5, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    .line 680
    const/4 v2, 0x1

    .line 681
    .local v2, "kQuerySkuDetails":Z
    const/4 v1, 0x1

    .line 685
    .local v1, "kQueryOwnedItems":Z
    :try_start_0
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-instance v6, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;

    invoke-direct {v6, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$4;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->queryInventoryAsync(ZZLcom/ea/nimble/mtx/googleplay/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    .line 789
    const-string v3, "IAB Helper not setup. Check for Google Play account"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    const-string v3, "nimble.notification.mtx.restorepurchasedtransactionsfinished"

    const-string v4, "ERROR_IAB_NULL"

    invoke-direct {p0, v3, v4, v8, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private saveCatalogToPersistence()V
    .locals 6

    .prologue
    .line 2250
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2253
    .local v0, "catalogItemsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    const-string v2, "com.ea.nimble.mtx.googleplay"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 2256
    .local v1, "mtxGooglePlayPersistence":Lcom/ea/nimble/Persistence;
    const-string v2, "Saving %d catalog items to persistence."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2257
    const-string v2, "catalogItems"

    invoke-virtual {v1, v2, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_cacheTimestamp:Ljava/lang/Long;

    .line 2260
    const-string v2, "cacheTimestamp"

    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_cacheTimestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2265
    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 2266
    return-void
.end method

.method private savePendingTransactionsToPersistence()V
    .locals 7

    .prologue
    .line 2230
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2231
    .local v1, "pendingTransactionsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2234
    .local v2, "recoveredTransactionsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    const-string v3, "com.ea.nimble.mtx.googleplay"

    sget-object v4, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v3, v4}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 2237
    .local v0, "mtxGooglePlayPersistence":Lcom/ea/nimble/Persistence;
    const-string v3, "Saving %d pending and %d previously recovered transactions to persistence."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2239
    const-string v3, "pendingTransactions"

    invoke-virtual {v0, v3, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2241
    const-string v3, "recoveredTransactions"

    invoke-virtual {v0, v3, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2245
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 2246
    return-void
.end method

.method private savePurchasedTransactionsToPersistence()V
    .locals 6

    .prologue
    .line 2270
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2273
    .local v1, "purchasedTransactionsCopy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    const-string v2, "com.ea.nimble.mtx.googleplay"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 2276
    .local v0, "mtxGooglePlayPersistence":Lcom/ea/nimble/Persistence;
    const-string v2, "Saving %d purchased transactions to persistence."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2278
    const-string v2, "purchasedTransactions"

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2283
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 2284
    return-void
.end method

.method private saveUnrecordedTransactionsToPersistence()V
    .locals 6

    .prologue
    .line 2288
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2290
    .local v1, "unrecordedTransactionsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;>;"
    const-string v2, "com.ea.nimble.mtx.googleplay"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 2293
    .local v0, "mtxGooglePlayPersistence":Lcom/ea/nimble/Persistence;
    const-string v2, "Saving %d unrecorded transactions to persistence."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2295
    const-string v2, "unrecordedTransactions"

    invoke-virtual {v0, v2, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2296
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 2297
    return-void
.end method

.method private updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V
    .locals 1
    .param p1, "transaction"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "state"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .prologue
    .line 2219
    iput-object p2, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 2222
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTimeStamp:Ljava/util/Date;

    .line 2225
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->savePendingTransactionsToPersistence()V

    .line 2226
    return-void
.end method

.method private updateTransactionRecordWithNonce(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Ljava/lang/String;Lcom/ea/nimble/Error;)Z
    .locals 4
    .param p1, "transactionRecord"    # Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/ea/nimble/Error;

    .prologue
    const/4 v1, 0x0

    .line 1348
    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1350
    :cond_0
    const/4 v0, 0x0

    .line 1351
    .local v0, "getNonceError":Lcom/ea/nimble/Error;
    if-eqz p3, :cond_1

    .line 1354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error making getNonce call to Synergy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1355
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError;

    .end local v0    # "getNonceError":Lcom/ea/nimble/Error;
    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Synergy getNonce error"

    invoke-direct {v0, v2, v3, p3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1367
    .restart local v0    # "getNonceError":Lcom/ea/nimble/Error;
    :goto_0
    if-eqz p1, :cond_2

    .line 1370
    iput-object v0, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 1371
    iget-object v2, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v2, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 1373
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, p1, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1387
    .end local v0    # "getNonceError":Lcom/ea/nimble/Error;
    :goto_1
    return v1

    .line 1361
    .restart local v0    # "getNonceError":Lcom/ea/nimble/Error;
    :cond_1
    const-string v2, "No nonce in Synergy response for getNonce."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError;

    .end local v0    # "getNonceError":Lcom/ea/nimble/Error;
    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "No nonce in Synergy response"

    invoke-direct {v0, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .restart local v0    # "getNonceError":Lcom/ea/nimble/Error;
    goto :goto_0

    .line 1377
    :cond_2
    const-string v2, "No transaction record in getNonce error handling. No callback to call."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1385
    .end local v0    # "getNonceError":Lcom/ea/nimble/Error;
    :cond_3
    iput-object p2, p1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mNonce:Ljava/lang/String;

    .line 1387
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "Component cleanup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->dispose()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    .line 392
    :cond_0
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    .line 393
    return-void
.end method

.method public finalizeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 11
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 573
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 575
    .local v6, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-nez v6, :cond_0

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find transaction by Id to perform finalize, id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "message":Ljava/lang/String;
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v2, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    new-instance v7, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v8, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-direct {v7, v8, v2}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .line 646
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 583
    :cond_0
    iget-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v8, v9, :cond_1

    .line 586
    const-string v8, "Finalize called on unfinished transaction, for sku, %s."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    :cond_1
    iput-object p2, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    .line 593
    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getError()Ljava/lang/Exception;

    move-result-object v8

    if-nez v8, :cond_2

    .line 595
    const-string v8, "com.ea.nimble.tracking"

    invoke-static {v8}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    .line 596
    .local v0, "component":Lcom/ea/nimble/Component;
    if-eqz v0, :cond_2

    move-object v5, v0

    .line 598
    check-cast v5, Lcom/ea/nimble/tracking/ITracking;

    .line 599
    .local v5, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 600
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v8, "NIMBLESTANDARD::KEY_MTX_PRICE"

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getPriceDecimal()F

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v8

    const-string v9, "localCurrency"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 603
    .local v1, "currencyCode":Ljava/lang/Object;
    if-eqz v1, :cond_7

    .line 605
    const-string v8, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v9

    const-string v10, "localCurrency"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :goto_1
    const-string v8, "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

    invoke-interface {v5, v8, v4}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 617
    .end local v0    # "component":Lcom/ea/nimble/Component;
    .end local v1    # "currencyCode":Ljava/lang/Object;
    .end local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_2
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v6, v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 622
    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getError()Ljava/lang/Exception;

    move-result-object v8

    if-nez v8, :cond_3

    .line 625
    iget-object v8, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->savePurchasedTransactionsToPersistence()V

    .line 630
    :cond_3
    iget-boolean v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mIsRecorded:Z

    if-nez v8, :cond_8

    iget-object v8, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    if-nez v8, :cond_8

    .line 631
    .local v3, "needsRecording":Z
    :goto_2
    if-eqz v3, :cond_4

    .line 633
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mUnrecordedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->saveUnrecordedTransactionsToPersistence()V

    .line 638
    :cond_4
    iget-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    if-eqz v7, :cond_5

    .line 640
    iget-object v7, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    invoke-interface {v7, v6}, Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;->finalizeComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    .line 642
    :cond_5
    if-eqz v3, :cond_6

    .line 644
    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v7}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    .line 646
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 609
    .end local v3    # "needsRecording":Z
    .restart local v0    # "component":Lcom/ea/nimble/Component;
    .restart local v1    # "currencyCode":Ljava/lang/Object;
    .restart local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_7
    const-string v8, "Currency information not currently available; using local currency instead."

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    const-string v8, "NIMBLESTANDARD::KEY_MTX_CURRENCY"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "component":Lcom/ea/nimble/Component;
    .end local v1    # "currencyCode":Ljava/lang/Object;
    .end local v4    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_8
    move v3, v7

    .line 630
    goto :goto_2
.end method

.method public getAvailableCatalogItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleCatalogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isCacheExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1083
    :cond_0
    const/4 v0, 0x0

    .line 1102
    :goto_0
    return-object v0

    .line 1088
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1100
    .local v0, "nimbleItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ea/nimble/mtx/NimbleCatalogItem;>;"
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1SkuComparator;

    invoke-direct {v1, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$1SkuComparator;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "com.ea.nimble.mtx.googleplay"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    const-string v0, "MTX Google"

    return-object v0
.end method

.method public getPendingTransactions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 818
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getPurchasedTransactions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 800
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPurchasedTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecoveredTransactions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/NimbleMTXTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    .line 966
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getTransaction(Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXTransaction;
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 806
    const/4 v0, 0x0

    .line 808
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/NimbleMTXTransaction;

    goto :goto_0
.end method

.method public itemGranted(Ljava/lang/String;Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;)Lcom/ea/nimble/Error;
    .locals 7
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "itemType"    # Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;
    .param p3, "callback"    # Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 511
    .local v0, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-nez v0, :cond_0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find transaction by Id to perform item grant, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Could not find transaction to perform item grant."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-object v1

    .line 518
    :cond_0
    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v2, v3, :cond_1

    .line 522
    const-string v2, "Transaction in unexpected state for item grant. Transaction state: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :cond_1
    if-nez p3, :cond_2

    .line 527
    const-string v1, "itemGranted called with empty callback parameter."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string v3, "Missing callback in itemGranted call."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    iput-object p3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    .line 535
    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getItemType()Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    move-result-object v2

    sget-object v3, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-eq p2, v2, :cond_3

    .line 540
    const-string v2, "Game called item grant for SKU, %s, and indicated NOT consumable, though cached catalog data indicates the item is a consumable."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_3
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 546
    const-string v2, "Transaction for item SKU, %s, granted by game, despite an error. Clearing error from transaction."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 551
    :cond_4
    sget-object v2, Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;->CONSUMABLE:Lcom/ea/nimble/mtx/NimbleCatalogItem$ItemType;

    if-ne p2, v2, :cond_5

    .line 553
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_CONSUMPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 556
    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->googlePlayConsumeItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    goto :goto_0

    .line 561
    :cond_5
    sget-object v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 564
    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    invoke-direct {p0, v2, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->deferredConsumeCallback(Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_0
.end method

.method public networkCallGetAvailableItems()V
    .locals 3

    .prologue
    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;

    invoke-direct {v2, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$5;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    invoke-virtual {v1, v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getItemCatalog(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$ItemCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3
    .param p1, "acitivity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 400
    const-string v0, "onActivityResult"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-nez v0, :cond_0

    .line 405
    const-string v0, "GooglePlayIabHelper is not created!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0, p2, p3, p4}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public onGooglePlayCatalogItemsRefreshed(Ljava/util/List;ZLjava/lang/Exception;)V
    .locals 5
    .param p2, "completeUpdate"    # Z
    .param p3, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;",
            ">;Z",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "catalogItems":Ljava/util/List;, "Ljava/util/List<Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;>;"
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1242
    if-nez p3, :cond_2

    .line 1244
    const-string v1, "GooglePlayCatalog Updated."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1245
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 1248
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1251
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 1253
    .local v0, "item":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1257
    .end local v0    # "item":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->saveCatalogToPersistence()V

    .line 1265
    :goto_1
    const-string v3, "nimble.notification.mtx.refreshcatalogfinished"

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v3, v1, v2, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1266
    return-void

    .line 1261
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating GooglePlay Catalog: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1265
    goto :goto_2
.end method

.method public onIabPurchaseFinished(Lcom/ea/nimble/mtx/googleplay/util/IabResult;Lcom/ea/nimble/mtx/googleplay/util/Purchase;)V
    .locals 13
    .param p1, "result"    # Lcom/ea/nimble/mtx/googleplay/util/IabResult;
    .param p2, "purchase"    # Lcom/ea/nimble/mtx/googleplay/util/Purchase;

    .prologue
    .line 1409
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IAB Purchase finished: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", purchase: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1411
    const/4 v2, 0x0

    .line 1412
    .local v2, "developerPayload":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1413
    .local v7, "orderId":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1414
    .local v5, "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    const/4 v9, 0x0

    .line 1416
    .local v9, "transactionRecord":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-eqz p2, :cond_4

    .line 1419
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    .line 1420
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v7

    .line 1422
    iget-object v10, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 1425
    .local v8, "trans":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v11, v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    invoke-static {v11}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1428
    if-nez v9, :cond_1

    .line 1430
    move-object v9, v8

    goto :goto_0

    .line 1434
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple transactions with the same developerPayload found!  Using the first one. TransactionA: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1435
    invoke-virtual {v9}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " TransactionB: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    .line 1434
    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1437
    :cond_2
    invoke-static {v7}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1439
    const-string v11, "Found a matching SKU for pending transaction without orderId or developer payload, this must be a code redemption!"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    if-nez v9, :cond_3

    .line 1444
    move-object v9, v8

    goto :goto_0

    .line 1448
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple transactions that look like code redemptions found!  Using the first one. TransactionA: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1449
    invoke-virtual {v9}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " TransactionB: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    .line 1448
    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1460
    .end local v8    # "trans":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_4
    iget-object v10, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 1462
    .restart local v8    # "trans":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v11, v8, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v12, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_ACTIVITY_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v11, v12, :cond_5

    .line 1464
    if-nez v9, :cond_6

    .line 1466
    move-object v9, v8

    goto :goto_1

    .line 1470
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "More than one transaction record in WAITING_FOR_GOOGLE_PLAY_RESPONSE state found! Using: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1471
    invoke-virtual {v9}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Additional transaction for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1473
    invoke-virtual {v8}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    .line 1470
    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1479
    .end local v8    # "trans":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_7
    if-nez v9, :cond_a

    .line 1481
    const-string v10, "Transaction record could not be found for purchase"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1488
    new-instance v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;-><init>()V

    .line 1489
    .local v6, "newTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->generateTransactionId()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    .line 1490
    sget-object v10, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v10, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 1496
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 1498
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No transaction record for this purchase, creating one now. ItemSku("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1500
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mDeveloperPayload:Ljava/lang/String;

    .line 1501
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    .line 1502
    invoke-direct {p0, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createAdditionalInfoBundleFromIabPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 1506
    iget-object v10, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    .end local v6    # "newTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_8
    :goto_2
    return-void

    .line 1515
    .restart local v6    # "newTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_9
    const-string v10, "No pre-existing transaction record, Google Play activity result has no SKU. No way to recover."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1517
    new-instance v5, Lcom/ea/nimble/mtx/NimbleMTXError;

    .end local v5    # "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    sget-object v10, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v11, "Unrecoverable purchase notification from GooglePlay. No SKU."

    invoke-direct {v5, v10, v11}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .line 1523
    .restart local v5    # "mtxError":Lcom/ea/nimble/mtx/NimbleMTXError;
    goto :goto_2

    .line 1533
    .end local v6    # "newTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/googleplay/util/IabResult;->isFailure()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1535
    :cond_b
    if-eqz p1, :cond_c

    if-nez v5, :cond_c

    .line 1537
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error purchasing: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1539
    invoke-direct {p0, p1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createGooglePlayErrorFromIabResult(Lcom/ea/nimble/mtx/googleplay/util/IabResult;)Lcom/ea/nimble/mtx/googleplay/GooglePlayError;

    move-result-object v4

    .line 1540
    .local v4, "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    const-string v10, "GooglePlay purchase error"

    invoke-direct {p0, v4, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createNimbleMTXErrorWithGooglePlayError(Lcom/ea/nimble/mtx/googleplay/GooglePlayError;Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError;

    move-result-object v5

    .line 1544
    .end local v4    # "googlePlayError":Lcom/ea/nimble/mtx/googleplay/GooglePlayError;
    :cond_c
    iput-object v5, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 1545
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 1548
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MTX_GOOGLE: Purchase error. Purchase object is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    invoke-direct {p0, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createAdditionalInfoBundleFromIabPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 1551
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v9, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1553
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v10, :cond_8

    .line 1558
    :try_start_0
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-interface {v10, v9}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1560
    :catch_0
    move-exception v3

    .line 1562
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MTX_GOOGLE: Unhandled exception in mPurchaseCallback: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1569
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    const-string v10, "GooglePlay Purchase successful."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    .line 1574
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    if-eqz v10, :cond_e

    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_f

    .line 1576
    :cond_e
    const-string v10, "Purchase has an empty signature string. Setting to \"xxxxx\" for test."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    const-string v10, "xxxxxxxxxxxxxxxxxxxxxxxxx"

    iput-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mReceipt:Ljava/lang/String;

    .line 1581
    :cond_f
    invoke-direct {p0, p2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createAdditionalInfoBundleFromIabPurchase(Lcom/ea/nimble/mtx/googleplay/util/Purchase;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    .line 1584
    invoke-virtual {p2}, Lcom/ea/nimble/mtx/googleplay/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->getCatalogItemBySku(Ljava/lang/String;)Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    move-result-object v0

    .line 1585
    .local v0, "catalogItem":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    if-eqz v0, :cond_11

    .line 1587
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getPriceDecimal()F

    move-result v10

    iput v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPriceDecimal:F

    .line 1590
    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v10

    const-string v11, "localCurrency"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1591
    .local v1, "currencyCode":Ljava/lang/Object;
    if-eqz v1, :cond_10

    .line 1593
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    const-string v11, "localCurrency"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    .end local v1    # "currencyCode":Ljava/lang/Object;
    :goto_3
    iget-boolean v10, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_verificationEnabled:Z

    if-eqz v10, :cond_13

    .line 1609
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v9, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1611
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v10, :cond_12

    .line 1614
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-interface {v10, v9}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->unverifiedReceiptReceived(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    .line 1622
    :goto_4
    new-instance v10, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    invoke-virtual {v10, v9}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->verifyTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    goto/16 :goto_2

    .line 1597
    .restart local v1    # "currencyCode":Ljava/lang/Object;
    :cond_10
    const-string v10, "Currency information not currently available; using local currency instead."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1598
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mAdditionalInfo:Ljava/util/Map;

    const-string v11, "localCurrency"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Currency;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1603
    .end local v1    # "currencyCode":Ljava/lang/Object;
    :cond_11
    const-string v10, "Purchased item not found in catalog, could not get price or currency of item."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1618
    :cond_12
    const-string v10, "Transaction missing callback,  cannot notify game of unverified receipt"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1627
    :cond_13
    sget-object v10, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v9, v10}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 1628
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v10, :cond_14

    .line 1631
    iget-object v10, v9, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-interface {v10, v9}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto/16 :goto_2

    .line 1635
    :cond_14
    const-string v10, "Transaction missing callback,  cannot notify game of completed purchase"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 415
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 9
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "purchaseCallback"    # Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    .prologue
    const/4 v8, 0x0

    .line 430
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v6}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->isServiceAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 432
    :cond_0
    new-instance v6, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v8, "IabHelper is not set up"

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .line 504
    :goto_0
    return-object v6

    .line 435
    :cond_1
    if-nez p2, :cond_2

    .line 437
    new-instance v6, Lcom/ea/nimble/Error;

    sget-object v7, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string v8, "Missing purchase callback"

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->isTransactionPending()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 443
    const-string v6, "purchaseItem called while transactions still pending."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pendingTransactions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recoveredTransactions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    new-instance v6, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v8, "Another transaction is still outstanding."

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_3
    iget-boolean v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    if-eqz v6, :cond_4

    .line 452
    const-string v6, "purchaseItem called while restore is in progress."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    new-instance v6, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v8, "Can\'t purchase item while restore is in progress."

    invoke-direct {v6, v7, v8}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_4
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->generateTransactionId()Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, "transactionId":Ljava/lang/String;
    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;-><init>()V

    .line 469
    .local v2, "newTransaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iput-object p1, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemSku:Ljava/lang/String;

    .line 470
    iput-object v5, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionId:Ljava/lang/String;

    .line 471
    sget-object v6, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->PURCHASE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    iput-object v6, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    .line 472
    iput-object p2, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    .line 475
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mCatalogItems:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 476
    .local v0, "catalogInfo":Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;
    if-eqz v0, :cond_5

    .line 481
    new-instance v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    invoke-direct {v6, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;)V

    iput-object v6, v2, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mCatalogItem:Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    .line 485
    :cond_5
    iget-object v6, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v6, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-direct {p0, v2, v6}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->updateGooglePlayTransactionRecordState(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;)V

    .line 491
    const-string v6, "com.ea.nimble.tracking"

    invoke-static {v6}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v1

    .line 492
    .local v1, "component":Lcom/ea/nimble/Component;
    if-eqz v1, :cond_6

    move-object v4, v1

    .line 494
    check-cast v4, Lcom/ea/nimble/tracking/ITracking;

    .line 495
    .local v4, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 496
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "NIMBLESTANDARD::KEY_MTX_SELLID"

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v6, "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

    invoke-interface {v4, v6, v3}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 502
    .end local v3    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    :cond_6
    invoke-direct {p0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->googlePlayCallPurchaseItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    .line 504
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public refreshAvailableCatalogItems()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 975
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    :cond_0
    const-string v0, "refreshAvailable returning because billing is unavailable"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    sget-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    .line 979
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 978
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 993
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v0, v1, :cond_2

    .line 986
    const-string v0, "refreshAvailable returning because there is no network connection"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    const-string v0, "nimble.notification.mtx.refreshcatalogfinished"

    sget-object v1, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    .line 988
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 987
    invoke-direct {p0, v0, v1, v2, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->broadcastLocalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 992
    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->networkCallGetAvailableItems()V

    goto :goto_0
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 313
    const-string v1, "Component restore"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    sget-object v2, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->GOOGLE:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    invoke-direct {v1, v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;-><init>(Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;)V

    iput-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    .line 317
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->loadFromPersistence()V

    .line 319
    new-instance v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$3;

    invoke-direct {v0, p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$3;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;)V

    .line 327
    .local v0, "mAppLangChangedReceiver":Landroid/content/BroadcastReceiver;
    const-string v1, "nimble.notification.LanguageChanged"

    invoke-static {v1, v0}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 332
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    .line 336
    return-void
.end method

.method public restorePurchasedTransactions()V
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->restorePurchasedTransactionsImpl(Z)V

    .line 653
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 356
    const-string v1, "Component resume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->isServiceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->dispose()V

    .line 364
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createIabHelper()V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 369
    .local v0, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v2, v3, :cond_2

    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v2, v3, :cond_1

    .line 373
    :cond_2
    new-instance v2, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    invoke-virtual {v2, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->verifyTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    goto :goto_0

    .line 377
    .end local v0    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->recordTransactions()V

    .line 378
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    invoke-virtual {v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->restoreItems()V

    .line 379
    return-void
.end method

.method public resumeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "purchaseCallback"    # Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;
    .param p3, "consumeCallback"    # Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;
    .param p4, "finalizeCallback"    # Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 823
    const-string v1, "Resuming transaction id, %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    if-nez p1, :cond_0

    .line 827
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Null transaction ID"

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    .line 958
    :goto_0
    return-object v1

    .line 830
    :cond_0
    iget-boolean v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_restoreInProgress:Z

    if-eqz v1, :cond_1

    .line 832
    const-string v1, "resumeTransaction called while restore is in progress."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Can\'t resume transaction while restore is in progress."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 839
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 840
    .local v0, "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-nez v0, :cond_2

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume called while transactions are pending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 844
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Another transaction is pending. It needs to finish and finalize first."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_2
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    if-nez v1, :cond_3

    .line 849
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v3, "Cannot resume a pending transaction with no error"

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :cond_3
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    sget-object v3, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->RESTORE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    if-ne v1, v3, :cond_7

    .line 857
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Cannot resume a restore transaction. Only Purchase transactions can be resumed."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    .end local v0    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    :cond_4
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mRecoveredTransactions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    .line 864
    .restart local v0    # "transaction":Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;
    if-nez v0, :cond_5

    .line 867
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "No transaction for given transaction ID."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_5
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mTransactionType:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    sget-object v3, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->RESTORE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    if-ne v1, v3, :cond_6

    .line 872
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Cannot resume a restore transaction. Only Purchase transactions can be resumed."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_6
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mPendingTransactions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    :cond_7
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    if-eqz v1, :cond_8

    .line 880
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/ea/nimble/Error;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    check-cast v1, Lcom/ea/nimble/Error;

    invoke-virtual {v1}, Lcom/ea/nimble/Error;->getCode()I

    move-result v1

    sget-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_c

    .line 894
    :cond_8
    :goto_1
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->USER_INITIATED:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v1, v3, :cond_9

    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_ACTIVITY_RESPONSE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v1, v3, :cond_a

    .line 900
    :cond_9
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 901
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 902
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v4, "MTX transaction interrupted before account charged."

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    .line 906
    :cond_a
    iput-object p2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    .line 907
    iput-object p4, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    .line 908
    iput-object p3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    .line 911
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->savePendingTransactionsToPersistence()V

    .line 915
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_NONCE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-eq v1, v3, :cond_b

    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_SYNERGY_VERIFICATION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v1, v3, :cond_d

    .line 919
    :cond_b
    new-instance v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;

    invoke-direct {v1, p0, v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;-><init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlay$1;)V

    invoke-virtual {v1, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$PurchaseTransactionVerifier;->verifyTransaction(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    :goto_2
    move-object v1, v2

    .line 958
    goto/16 :goto_0

    .line 887
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resuming transaction that failed in state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    iput-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 889
    iput-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFailedState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    .line 890
    iput-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mError:Ljava/lang/Exception;

    goto :goto_1

    .line 921
    :cond_d
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GAME_TO_CONFIRM_ITEM_GRANT:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v1, v3, :cond_f

    .line 926
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    if-eqz v1, :cond_e

    .line 928
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mPurchaseCallback:Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;

    invoke-interface {v1, v0}, Lcom/ea/nimble/mtx/INimbleMTX$PurchaseTransactionCallback;->purchaseComplete(Lcom/ea/nimble/mtx/NimbleMTXTransaction;)V

    goto :goto_2

    .line 932
    :cond_e
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string v3, "Resumed transaction not given purchase callback."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    :cond_f
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->WAITING_FOR_GOOGLEPLAY_CONSUMPTION:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v1, v3, :cond_11

    .line 938
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mItemGrantedCallback:Lcom/ea/nimble/mtx/INimbleMTX$ItemGrantedCallback;

    if-eqz v1, :cond_10

    .line 940
    invoke-direct {p0, v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->googlePlayConsumeItem(Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V

    goto :goto_2

    .line 944
    :cond_10
    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    const-string v3, "Resumed transaction not given item granted callback."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 947
    :cond_11
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mGooglePlayTransactionState:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    sget-object v3, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;->COMPLETE:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction$GooglePlayTransactionState;

    if-ne v1, v3, :cond_12

    .line 950
    iget-object v1, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->mFinalizeCallback:Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;

    invoke-virtual {p0, p1, v1}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->finalizeTransaction(Ljava/lang/String;Lcom/ea/nimble/mtx/INimbleMTX$FinalizeTransactionCallback;)Lcom/ea/nimble/Error;

    goto :goto_2

    .line 954
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResumeTransaction called on a transaction that can\'t be resumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError;

    sget-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const-string v3, "Transaction not in a resumable state."

    invoke-direct {v1, v2, v3}, Lcom/ea/nimble/mtx/NimbleMTXError;-><init>(Lcom/ea/nimble/mtx/NimbleMTXError$Code;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setPlatformParameters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1107
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    sget-object v1, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_PLATFORM_PARAMETER_APPLICATION_PUBLIC_KEY:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1111
    .local v0, "publicKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1113
    iput-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_appPublicKey:Ljava/lang/String;

    .line 1114
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    iget-object v2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_appPublicKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ea/nimble/mtx/googleplay/util/IabHelper;->setApplicationPublicKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 280
    const-string v3, "Component setup"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->mGooglePlayIabHelper:Lcom/ea/nimble/mtx/googleplay/util/IabHelper;

    if-nez v3, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->createIabHelper()V

    .line 294
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 295
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 296
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.ea.nimble.mtx.enableVerification"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "enableVerificationFlag":Ljava/lang/String;
    const-string v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_verificationEnabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "enableVerificationFlag":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v3

    .line 307
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_verificationEnabled:Z

    goto :goto_0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "Component suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->cancel()V

    .line 350
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->cancel()V

    .line 351
    return-void
.end method

.method protected teardown()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_transactionRecorder:Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$TransactionRecorder;->cancel()V

    .line 342
    iget-object v0, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_itemRestorer:Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;

    invoke-virtual {v0}, Lcom/ea/nimble/mtx/googleplay/GooglePlay$ItemRestorer;->cancel()V

    .line 343
    return-void
.end method
