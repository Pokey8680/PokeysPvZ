.class final Lcom/ea/rs/xpromo/XPromoUtility;
.super Ljava/lang/Object;
.source "XPromoUtility.java"


# static fields
.field static final KEY_ITEM_CLICK_COUNT_STRING:Ljava/lang/String; = "clickCount"

.field static final PERSISTENCE_CLICK_TRACKING_ID:Ljava/lang/String; = "itemClickData"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAndLogInstalls()V
    .locals 11

    .prologue
    .line 94
    const-string v6, "com.ea.rs.xpromo"

    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v6, v7}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v5

    .line 95
    .local v5, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v5, :cond_1

    .line 97
    const-string v6, "itemClickData"

    invoke-virtual {v5, v6}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 98
    .local v0, "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "installCount":I
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    if-lez v1, :cond_1

    .line 118
    const-string v6, "XPromo"

    const-string v7, "App installs found: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const-string v6, "itemClickData"

    invoke-virtual {v5, v6, v0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 120
    invoke-virtual {v5}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 124
    .end local v0    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "installCount":I
    :cond_1
    return-void

    .line 101
    .restart local v0    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1    # "installCount":I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, "itemId":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 104
    .local v2, "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 106
    const-string v6, "appLaunch"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/ea/rs/xpromo/XPromoUtility;->getInstalledAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 109
    sget-object v8, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_INSTALLED:Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v6, "clickCount"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v3, v6}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getInstalledAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "launchUrlsStr"    # Ljava/lang/String;

    .prologue
    .line 143
    if-eqz p0, :cond_0

    .line 145
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "packageNames":[Ljava/lang/String;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 158
    .end local v1    # "packageNames":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 146
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :cond_2
    aget-object v0, v1, v2

    .line 150
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 146
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Lcom/ea/rs/xpromo/TrackingEventType;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Lcom/ea/rs/xpromo/TrackingEventType;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {}, Lcom/ea/nimble/tracking/Tracking;->getComponent()Lcom/ea/nimble/tracking/ITracking;

    move-result-object v1

    .line 31
    .local v1, "trackingComponent":Lcom/ea/nimble/tracking/ITracking;
    if-eqz v1, :cond_3

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "eventType"

    iget v3, p0, Lcom/ea/rs/xpromo/TrackingEventType;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    if-eqz p1, :cond_0

    .line 38
    const-string v2, "keyType01"

    sget-object v3, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v3, v3, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v2, "keyValue01"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    if-eqz p2, :cond_1

    .line 44
    const-string v2, "keyType02"

    sget-object v3, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v3, v3, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v2, "keyValue02"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    const-string v2, "keyType03"

    sget-object v3, Lcom/ea/nimble/tracking/SynergyConstants;->EVT_KEYTYPE_ENUMERATION:Lcom/ea/nimble/tracking/SynergyConstants;

    iget v3, v3, Lcom/ea/nimble/tracking/SynergyConstants;->value:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v2, "keyValue03"

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    const-string v2, "SYNERGYTRACKING::CUSTOM"

    invoke-interface {v1, v2, v0}, Lcom/ea/nimble/tracking/ITracking;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    .end local v0    # "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method static saveToPersistence(Lcom/ea/nimble/Persistence$Storage;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 5
    .param p0, "storage"    # Lcom/ea/nimble/Persistence$Storage;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 128
    const-string v1, "com.ea.rs.xpromo"

    invoke-static {v1, p0}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 129
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 131
    const-string v1, "XPromo"

    const-string v2, "Saving data to persistent for key %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v0, p1, p2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 133
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const-string v1, "XPromo"

    const-string v2, "Could not get persistence object to save data for key %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static trackStoreRedirect(Lcom/ea/rs/xpromo/Item;)V
    .locals 6
    .param p0, "item"    # Lcom/ea/rs/xpromo/Item;

    .prologue
    .line 61
    const-string v4, "com.ea.rs.xpromo"

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v3

    .line 62
    .local v3, "persistence":Lcom/ea/nimble/Persistence;
    if-eqz v3, :cond_1

    .line 64
    const-string v4, "itemClickData"

    invoke-virtual {v3, v4}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 65
    .local v1, "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .restart local v1    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/ea/rs/xpromo/Item;->getPromoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 71
    .local v2, "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "clickCount":I
    if-nez v2, :cond_2

    .line 74
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    .restart local v2    # "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 82
    const-string v4, "clickCount"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v4, "appLaunch"

    const-string v5, "appLaunch"

    invoke-virtual {p0, v5}, Lcom/ea/rs/xpromo/Item;->getAppURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/ea/rs/xpromo/Item;->getPromoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v4, "itemClickData"

    invoke-virtual {v3, v4, v1}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    invoke-virtual {v3}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 89
    .end local v0    # "clickCount":I
    .end local v1    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 78
    .restart local v0    # "clickCount":I
    .restart local v1    # "clickData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "itemData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v4, "clickCount"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method
