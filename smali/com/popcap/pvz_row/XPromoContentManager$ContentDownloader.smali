.class Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;
.super Ljava/lang/Thread;
.source "XPromoContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/XPromoContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentDownloader"
.end annotation


# instance fields
.field private m_callback:Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;

.field private m_imagePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/popcap/pvz_row/XPromoContentManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/popcap/pvz_row/XPromoContentManager$1;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;-><init>()V

    return-void
.end method

.method private load(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/popcap/pvz_row/XPromoContentManager;->containsAsset(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->loadFromNetwork(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/net/MalformedURLException;
    invoke-direct {p0, p1}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->loadStaticFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadFromNetwork(Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 66
    new-instance v0, Lcom/ea/nimble/HttpRequest;

    invoke-direct {v0, p1}, Lcom/ea/nimble/HttpRequest;-><init>(Ljava/net/URL;)V

    .line 68
    .local v0, "request":Lcom/ea/nimble/HttpRequest;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ea/nimble/HttpRequest;->runInBackground:Z

    .line 69
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    new-instance v2, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader$1;

    invoke-direct {v2, p0}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader$1;-><init>(Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;)V

    invoke-interface {v1, v0, v2}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/NetworkConnectionHandle;->waitOn()V

    .line 84
    return-void
.end method

.method private loadStaticFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 91
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/popcap/pvz_row/XPromoContentManager;->access$000(Lcom/popcap/pvz_row/XPromoContentManager;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public downloadImages(Ljava/util/List;Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->m_imagePaths:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->m_callback:Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;

    .line 48
    invoke-virtual {p0}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->start()V

    .line 49
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->m_imagePaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->m_callback:Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->m_callback:Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;

    invoke-interface {v2}, Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;->onLoaded()V

    .line 62
    :cond_1
    return-void
.end method
