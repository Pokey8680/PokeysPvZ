.class Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;
.super Ljava/lang/Object;
.source "GooglePlay.java"

# interfaces
.implements Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;


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

.field final synthetic val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/googleplay/GooglePlay;Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    .prologue
    .line 1873
    iput-object p1, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iput-object p2, p0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public prepareRequest(Lcom/ea/nimble/SynergyRequest;)V
    .locals 33
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;

    .prologue
    .line 1877
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v12

    .line 1878
    .local v12, "appEnv":Lcom/ea/nimble/IApplicationEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v30

    .line 1879
    .local v30, "synergyEnv":Lcom/ea/nimble/ISynergyEnvironment;
    invoke-static {}, Lcom/ea/nimble/SynergyIdManager;->getComponent()Lcom/ea/nimble/ISynergyIdManager;

    move-result-object v31

    .line 1881
    .local v31, "synergyIdManager":Lcom/ea/nimble/ISynergyIdManager;
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1884
    .local v24, "jsonData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getCatalogItem()Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getCatalogItem()Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayCatalogItem;->isFree()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v23, 0x1

    .line 1885
    .local v23, "isFree":Z
    :goto_0
    const-string v2, "transactionId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_ORDERID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-string v2, "price"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getPriceDecimal()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    const-string v2, "currency"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v3

    const-string v4, "localCurrency"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    const-string v3, "restore"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v2}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTransactionType()Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    move-result-object v2

    sget-object v4, Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;->RESTORE:Lcom/ea/nimble/mtx/NimbleMTXTransaction$TransactionType;

    if-ne v2, v4, :cond_9

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    :try_start_0
    const-string v2, "receipt"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->GOOGLEPLAY_ADDITIONALINFO_KEY_PURCHASEDATA:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    :goto_2
    const-string v2, "itemSellId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getItemSku()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->this$0:Lcom/ea/nimble/mtx/googleplay/GooglePlay;

    iget-object v4, v4, Lcom/ea/nimble/mtx/googleplay/GooglePlay;->m_synergyCatalog:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;

    invoke-virtual {v4}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;->getItemSkuPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const-string v2, "masterSellId"

    invoke-interface/range {v30 .. v30}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    const-string v2, "hwId"

    invoke-interface/range {v30 .. v30}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    const-string v2, "signature"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getReceipt()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const-string v2, "nonce"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getNonce()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    const-string v2, "isFree"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    invoke-interface/range {v31 .. v31}, Lcom/ea/nimble/ISynergyIdManager;->getSynergyId()Ljava/lang/String;

    move-result-object v32

    .line 1911
    .local v32, "synergyUid":Ljava/lang/String;
    if-eqz v32, :cond_0

    const-string v2, ""

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_0

    .line 1913
    const-string v2, "synergyUid"

    invoke-static/range {v32 .. v32}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    :cond_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1916
    .local v18, "didMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1919
    .local v11, "androidId":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 1921
    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getGameSpecifiedPlayerId()Ljava/lang/String;

    move-result-object v21

    .line 1922
    .local v21, "gamePlayerId":Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1923
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1925
    const-string v2, "gamePlayerId"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    .end local v21    # "gamePlayerId":Ljava/lang/String;
    :cond_1
    const-string v9, ""

    .line 1931
    .local v9, "advertiserId":Ljava/lang/String;
    const-string v25, "true"

    .line 1934
    .local v25, "limitAdTracking":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getGoogleAdvertisingId()Ljava/lang/String;

    move-result-object v9

    .line 1935
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->isLimitAdTrackingEnabled()Z

    move-result v26

    .line 1936
    .local v26, "limitAdTrackingFlag":Z
    if-nez v26, :cond_2

    .line 1938
    const-string v25, "false"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1946
    .end local v26    # "limitAdTrackingFlag":Z
    :cond_2
    :goto_3
    const-string v14, ""

    .line 1947
    .local v14, "aut":Ljava/lang/String;
    const-string v2, "eaDeviceId"

    invoke-interface/range {v30 .. v30}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    const-string v2, "androidId"

    invoke-static {v11}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    const-string v2, "advertiserId"

    invoke-static {v9}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    const-string v2, "limitAdTracking"

    invoke-static/range {v25 .. v25}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1951
    const-string v2, "macHash"

    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->SHA256HashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    const-string v2, "aut"

    invoke-static {v14}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    const-string v2, "didMap"

    invoke-static/range {v18 .. v18}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    const-string v2, "com.ea.nimble.identity"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1958
    const-string v2, "com.ea.nimble.identity"

    invoke-static {v2}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v22

    check-cast v22, Lcom/ea/nimble/identity/INimbleIdentity;

    .line 1959
    .local v22, "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    invoke-interface/range {v22 .. v22}, Lcom/ea/nimble/identity/INimbleIdentity;->getPidMap()Ljava/util/Map;

    move-result-object v28

    .line 1960
    .local v28, "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v28, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1962
    const-string v2, "pidMap"

    invoke-static/range {v28 .. v28}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    .end local v22    # "identity":Lcom/ea/nimble/identity/INimbleIdentity;
    .end local v28    # "pidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1968
    .local v13, "appInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "timestamp"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ea/nimble/mtx/googleplay/GooglePlay$8;->val$transaction:Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;

    invoke-virtual {v3}, Lcom/ea/nimble/mtx/googleplay/GooglePlayTransaction;->getTimeStamp()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->getUTCDateStringFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    const-string v2, "bundleId"

    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    const-string v2, "appName"

    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    const-string v2, "appVersion"

    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    const-string v2, "appLanguage"

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getShortApplicationLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    const-string v2, "countryCode"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    const/16 v20, 0x0

    .line 1977
    .local v20, "facebookAppId":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    .line 1978
    .local v16, "context":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1979
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 1978
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1980
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    .line 1982
    iget-object v2, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v20

    .line 1990
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "context":Landroid/content/Context;
    :cond_4
    :goto_4
    invoke-static/range {v20 .. v20}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1992
    const-string v2, "fbAppId"

    move-object/from16 v0, v20

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    :cond_5
    :try_start_3
    const-string v8, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 1999
    .local v8, "FACEBOOK_ATTRIBUTION_ID_URL":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2000
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2002
    .local v15, "c":Landroid/database/Cursor;
    if-eqz v15, :cond_6

    .line 2004
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2005
    const-string v2, "fbAttrId"

    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2016
    .end local v8    # "FACEBOOK_ATTRIBUTION_ID_URL":Ljava/lang/String;
    .end local v15    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_5
    const-string v2, "appInfo"

    invoke-static {v13}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2020
    .local v17, "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "systemName"

    const-string v3, "Android"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    const-string v2, "limitAdTracking"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    .line 2023
    .local v29, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/TelephonyManager;

    .line 2024
    .local v27, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 2025
    invoke-interface {v12}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2024
    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7

    .line 2027
    const-string v2, "imei"

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/nimble/Utility;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    :cond_7
    const-string v2, "deviceInfo"

    invoke-static/range {v17 .. v17}, Lcom/ea/nimble/Utility;->convertObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    const-string v2, "schemaVer"

    const-string v3, "2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    const-string v2, "clientApiVersion"

    const-string v3, "2.0.0"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/ea/nimble/SynergyRequest;->jsonData:Ljava/util/Map;

    .line 2037
    const-string v2, "synergy.drm"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/ea/nimble/SynergyRequest;->baseUrl:Ljava/lang/String;

    .line 2039
    invoke-virtual/range {p1 .. p1}, Lcom/ea/nimble/SynergyRequest;->send()V

    .line 2040
    return-void

    .line 1884
    .end local v9    # "advertiserId":Ljava/lang/String;
    .end local v11    # "androidId":Ljava/lang/String;
    .end local v13    # "appInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "aut":Ljava/lang/String;
    .end local v17    # "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "didMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "facebookAppId":Ljava/lang/String;
    .end local v23    # "isFree":Z
    .end local v25    # "limitAdTracking":Ljava/lang/String;
    .end local v27    # "manager":Landroid/telephony/TelephonyManager;
    .end local v29    # "pm":Landroid/content/pm/PackageManager;
    .end local v32    # "synergyUid":Ljava/lang/String;
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1888
    .restart local v23    # "isFree":Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1894
    :catch_0
    move-exception v19

    .line 1896
    .local v19, "e":Ljava/lang/Exception;
    const-string v2, "Exception creating JSON body for /recordPurchase"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1897
    const-string v2, "receipt"

    const-string v3, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1941
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v9    # "advertiserId":Ljava/lang/String;
    .restart local v11    # "androidId":Ljava/lang/String;
    .restart local v18    # "didMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "limitAdTracking":Ljava/lang/String;
    .restart local v32    # "synergyUid":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 1943
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v2, "Exception when getting advertising ID for Android"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2008
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v13    # "appInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "aut":Ljava/lang/String;
    .restart local v20    # "facebookAppId":Ljava/lang/String;
    :catch_2
    move-exception v19

    .line 2010
    .local v19, "e":Ljava/lang/IllegalStateException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_5

    .line 2012
    .end local v19    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v19

    .line 2014
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1985
    .end local v19    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto/16 :goto_4
.end method
