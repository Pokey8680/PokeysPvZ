.class public Lcom/popcap/pvz_row/XPromoContentManager;
.super Ljava/lang/Object;
.source "XPromoContentManager.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz_row/XPromoContentManager$1;,
        Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;,
        Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/popcap/pvz_row/XPromoContentManager;


# instance fields
.field m_assets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/XPromoContentManager;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/popcap/pvz_row/XPromoContentManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/popcap/pvz_row/XPromoContentManager;->addAsset(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method private addAsset(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 165
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    monitor-enter v2

    .line 169
    :try_start_0
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 170
    .local v0, "data":[B
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 171
    iget-object v1, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-direct {p0}, Lcom/popcap/pvz_row/XPromoContentManager;->saveToPersistence()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "data":[B
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/popcap/pvz_row/XPromoContentManager;
    .locals 6

    .prologue
    .line 118
    const-class v3, Lcom/popcap/pvz_row/XPromoContentManager;

    monitor-enter v3

    .line 120
    :try_start_0
    sget-object v2, Lcom/popcap/pvz_row/XPromoContentManager;->s_instance:Lcom/popcap/pvz_row/XPromoContentManager;

    if-nez v2, :cond_1

    .line 122
    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2}, Lcom/ea/nimble/PersistenceService;->getAppPersistence(Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v1

    .line 123
    .local v1, "xPromoPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v1, :cond_2

    .line 125
    const-string v2, "iconCache"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 126
    .local v0, "persistenceValue":Ljava/io/Serializable;
    if-eqz v0, :cond_0

    .line 128
    check-cast v0, Lcom/popcap/pvz_row/XPromoContentManager;

    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    sput-object v0, Lcom/popcap/pvz_row/XPromoContentManager;->s_instance:Lcom/popcap/pvz_row/XPromoContentManager;

    .line 129
    const-string v2, "XPromoContentManager"

    const-string v4, "Restored data from persistent"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sget-object v2, Lcom/popcap/pvz_row/XPromoContentManager;->s_instance:Lcom/popcap/pvz_row/XPromoContentManager;

    monitor-exit v3

    .line 145
    :goto_0
    return-object v2

    .line 134
    .restart local v0    # "persistenceValue":Ljava/io/Serializable;
    :cond_0
    const-string v2, "XPromoContentManager"

    const-string v4, "No persistence data available to restore."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .end local v0    # "persistenceValue":Ljava/io/Serializable;
    :goto_1
    new-instance v2, Lcom/popcap/pvz_row/XPromoContentManager;

    invoke-direct {v2}, Lcom/popcap/pvz_row/XPromoContentManager;-><init>()V

    sput-object v2, Lcom/popcap/pvz_row/XPromoContentManager;->s_instance:Lcom/popcap/pvz_row/XPromoContentManager;

    .line 145
    :cond_1
    sget-object v2, Lcom/popcap/pvz_row/XPromoContentManager;->s_instance:Lcom/popcap/pvz_row/XPromoContentManager;

    monitor-exit v3

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 139
    :cond_2
    :try_start_1
    const-string v2, "XPromoContentManager"

    const-string v4, "Could not get persistence object to restore from."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private saveToPersistence()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1}, Lcom/ea/nimble/PersistenceService;->getAppPersistence(Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 214
    .local v0, "xPromoPersistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_0

    .line 216
    const-string v1, "Saving data to persistent."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const-string v1, "iconCache"

    invoke-virtual {v0, v1, p0}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    invoke-virtual {v0}, Lcom/ea/nimble/Persistence;->synchronize()V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const-string v1, "Could not save data into persistence."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public containsAsset(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsset(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v3, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    monitor-enter v3

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 188
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 190
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .local v1, "stream":Ljava/io/ByteArrayInputStream;
    const-string v2, "icon"

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 195
    .end local v1    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 197
    .end local v0    # "data":[B
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public load(Ljava/util/List;Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;)V
    .locals 3
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
    .line 156
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    monitor-enter v2

    .line 158
    :try_start_0
    new-instance v0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;-><init>(Lcom/popcap/pvz_row/XPromoContentManager$1;)V

    .line 159
    .local v0, "contentDownloader":Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;
    invoke-virtual {v0, p1, p2}, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->downloadImages(Ljava/util/List;Lcom/popcap/pvz_row/XPromoContentManager$ContentCallback;)V

    .line 160
    monitor-exit v2

    .line 161
    return-void

    .line 160
    .end local v0    # "contentDownloader":Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
    .line 208
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    .line 209
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
    .line 202
    iget-object v0, p0, Lcom/popcap/pvz_row/XPromoContentManager;->m_assets:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 203
    return-void
.end method
