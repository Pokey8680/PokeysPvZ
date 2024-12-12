.class public Lcom/ea/rs/xpromo/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/rs/xpromo/Item$IconCallback;
    }
.end annotation


# static fields
.field static final KEY_LAUNCH_URL:Ljava/lang/String; = "appLaunch"

.field static final KEY_STORE_URL:Ljava/lang/String; = "store"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_appLinks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_description:Ljava/lang/String;

.field m_iconData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field m_iconUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_promoId:Ljava/lang/String;

.field m_title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "promoId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    .line 50
    const-string v0, "title"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_title:Ljava/lang/String;

    .line 51
    const-string v0, "desc"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_description:Ljava/lang/String;

    .line 52
    const-string v0, "icons"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    .line 53
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "customIcon"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    .line 57
    :cond_0
    const-string v0, "links"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconData:Ljava/util/Map;

    .line 60
    return-void
.end method


# virtual methods
.method public downloadIconToBuffer(Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/ea/rs/xpromo/Item$IconCallback;

    .prologue
    .line 110
    iget-object v5, p0, Lcom/ea/rs/xpromo/Item;->m_iconData:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 111
    .local v0, "cachedData":[B
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {p2, v0}, Lcom/ea/rs/xpromo/Item$IconCallback;->onDownloadToBuffer([B)V

    .line 164
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ea/rs/xpromo/Item;->getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "iconUrlStr":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 120
    new-instance v5, Lcom/ea/nimble/Error;

    sget-object v6, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    const-string v7, "Invalid key"

    invoke-direct {v5, v6, v7}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 127
    :cond_1
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v4, "url":Ljava/net/URL;
    new-instance v3, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v3, v4}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 136
    .local v3, "request":Lcom/ea/nimble/HttpRequest;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    .line 137
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v5

    new-instance v6, Lcom/ea/rs/xpromo/Item$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/ea/rs/xpromo/Item$1;-><init>(Lcom/ea/rs/xpromo/Item;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V

    invoke-interface {v5, v3, v6}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    goto :goto_0

    .line 129
    .end local v3    # "request":Lcom/ea/nimble/HttpRequest;
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-interface {p2, v1}, Lcom/ea/rs/xpromo/Item$IconCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public downloadIconToFile(Ljava/lang/String;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/ea/rs/xpromo/Item$IconCallback;

    .prologue
    .line 168
    new-instance v0, Lcom/ea/rs/xpromo/Item$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/ea/rs/xpromo/Item$2;-><init>(Lcom/ea/rs/xpromo/Item;Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V

    invoke-virtual {p0, p1, v0}, Lcom/ea/rs/xpromo/Item;->downloadIconToBuffer(Ljava/lang/String;Lcom/ea/rs/xpromo/Item$IconCallback;)V

    .line 206
    return-void
.end method

.method getAppURLForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconURLForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPromoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_title:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launch()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 212
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, "activity":Landroid/app/Activity;
    iget-object v6, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    const-string v8, "appLaunch"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 214
    .local v3, "launchUrlsStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/ea/rs/xpromo/XPromoUtility;->getInstalledAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 218
    .local v2, "launchAppIntent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    sget-object v6, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_CLICK:Lcom/ea/rs/xpromo/TrackingEventType;

    iget-object v8, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    const-string v9, "Launch App"

    invoke-static {v6, v8, v9}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 235
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "launchAppIntent":Landroid/content/Intent;
    .end local v3    # "launchUrlsStr":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    return v6

    .line 223
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "launchUrlsStr":Ljava/lang/String;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/ea/rs/xpromo/XPromoUtility;->trackStoreRedirect(Lcom/ea/rs/xpromo/Item;)V

    .line 224
    sget-object v6, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ITEM_CLICK:Lcom/ea/rs/xpromo/TrackingEventType;

    iget-object v8, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    const-string v9, "Redirect to Store"

    invoke-static {v6, v8, v9}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    const-string v9, "store"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 227
    .local v4, "openStoreUrl":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 228
    goto :goto_0

    .line 230
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "launchUrlsStr":Ljava/lang/String;
    .end local v4    # "openStoreUrl":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/ea/rs/xpromo/TrackingEventType;->EVT_ERROR:Lcom/ea/rs/xpromo/TrackingEventType;

    const-string v7, "Launch"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/ea/rs/xpromo/XPromoUtility;->logEvent(Lcom/ea/rs/xpromo/TrackingEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "input"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    .line 76
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_title:Ljava/lang/String;

    .line 77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_description:Ljava/lang/String;

    .line 78
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    .line 79
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconData:Ljava/util/Map;

    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    .line 81
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "output"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_promoId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_description:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconUrl:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_iconData:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/ea/rs/xpromo/Item;->m_appLinks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
