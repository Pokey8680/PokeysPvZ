.class final Lcom/millennialmedia/android/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdCache$Iterator;,
        Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    }
.end annotation


# static fields
.field private static final CACHED_AD_FILE:Ljava/lang/String; = "ad.dat"

.field private static final CACHE_INCOMPLETE_PREFIX:Ljava/lang/String; = "incompleteDownload_"

.field private static final CACHE_PREFIX:Ljava/lang/String; = "nextCachedAd_"

.field private static final CACHE_PREFIX_APID:Ljava/lang/String; = "nextCachedAd_apids"

.field private static final LOCK_FILE:Ljava/lang/String; = "ad.lock"

.field static final PRIORITY_FETCH:I = 0x3

.field static final PRIORITY_PRECACHE:I = 0x1

.field static final PRIORITY_REFRESH:I = 0x2

.field private static final PRIVATE_CACHE_DIR:Ljava/lang/String; = ".mmsyscache"

.field private static final TAG:Ljava/lang/String; = "AdCache"

.field private static apidListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedVideoList:Ljava/lang/String;

.field private static cachedVideoListLoaded:Z

.field private static cachedVideoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMap:Ljava/util/Map;
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

.field private static incompleteDownloadHashMapLoaded:Z

.field static isExternalEnabled:Z

.field private static nextCachedAdHashMap:Ljava/util/Map;
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

.field private static nextCachedAdHashMapLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static declared-synchronized cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 82
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 86
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_2
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 103
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 104
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    monitor-exit v1

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static cleanCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 433
    new-instance v0, Lcom/millennialmedia/android/AdCache$3;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/AdCache$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method static cleanUpExpiredAds(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 448
    const/4 v0, 0x1

    new-instance v1, Lcom/millennialmedia/android/AdCache$4;

    invoke-direct {v1}, Lcom/millennialmedia/android/AdCache$4;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 471
    return-void
.end method

.method static cleanupCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->cleanupInternalCache(Landroid/content/Context;)V

    .line 476
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->cleanupExternalCache(Landroid/content/Context;)V

    .line 479
    :cond_0
    return-void
.end method

.method static cleanupDirectory(Ljava/io/File;J)V
    .locals 11
    .param p0, "file"    # Ljava/io/File;
    .param p1, "timeout"    # J

    .prologue
    .line 506
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 508
    .local v2, "entries":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 509
    .local v3, "entry":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-lez v6, :cond_0

    .line 511
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 514
    :try_start_0
    invoke-static {v3, p1, p2}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    .line 515
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_0

    .line 516
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "AdCache"

    const-string v7, "Security Exception cleaning up directory"

    invoke-static {v6, v7, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 522
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "entry":Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static cleanupExternalCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 495
    .local v0, "externalCacheDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 499
    .local v1, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v2, v1, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method private static cleanupInternalCache(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 484
    .local v1, "internalCacheDir":Ljava/io/File;
    if-nez v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 488
    .local v0, "handShake":Lcom/millennialmedia/android/HandShake;
    iget-wide v2, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->cleanupDirectory(Ljava/io/File;J)V

    goto :goto_0
.end method

.method static deleteFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 962
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 963
    .local v0, "deleteFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 966
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z
    .locals 20
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 755
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 756
    const-string v16, "AdCache"

    const-string v17, "No Url ..."

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/16 v16, 0x0

    .line 840
    :cond_0
    :goto_0
    return v16

    .line 760
    :cond_1
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 761
    .local v9, "file":Ljava/io/File;
    const-string v16, "AdCache"

    const-string v17, "Downloading Component: %s from %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    aput-object p0, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 765
    .local v14, "parent":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    .line 766
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v16

    if-nez v16, :cond_2

    .line 767
    const-string v16, "AdCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " does not exist and cannot create directory."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const/16 v16, 0x0

    goto :goto_0

    .line 772
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    .line 773
    const-string v16, "AdCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " already exists, skipping..."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/16 v16, 0x1

    goto :goto_0

    .line 777
    :cond_3
    const/4 v10, 0x0

    .line 778
    .local v10, "inStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 779
    .local v12, "out":Ljava/io/FileOutputStream;
    const-wide/16 v6, -0x1

    .line 781
    .local v6, "contentLength":J
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 782
    .local v4, "connectURL":Ljava/net/URL;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 783
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 785
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 786
    const-string v16, "GET"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 788
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 789
    const-string v16, "Content-Length"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 794
    .local v15, "temp":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 795
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 796
    :cond_4
    if-nez v10, :cond_7

    .line 797
    const-string v16, "AdCache"

    const-string v17, "Connection stream is null downloading %s."

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    const/16 v16, 0x0

    .line 827
    if-eqz v10, :cond_5

    .line 828
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_5
    if-eqz v12, :cond_0

    .line 830
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 831
    :catch_0
    move-exception v8

    .line 832
    .local v8, "ex":Ljava/io/IOException;
    const-string v16, "AdCache"

    const-string v17, "Content caching error downloading component: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v9, :cond_6

    .line 834
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 802
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_7
    :try_start_2
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 803
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .local v13, "out":Ljava/io/FileOutputStream;
    const/16 v16, 0x1000

    :try_start_3
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 805
    .local v2, "buf":[B
    :goto_1
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, "numread":I
    if-lez v11, :cond_b

    .line 806
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v2, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 822
    .end local v2    # "buf":[B
    .end local v11    # "numread":I
    :catch_1
    move-exception v5

    move-object v12, v13

    .line 823
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "temp":Ljava/lang/String;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    const-string v16, "AdCache"

    const-string v17, "Exception downloading component %s: %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 827
    if-eqz v10, :cond_8

    .line 828
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_8
    if-eqz v12, :cond_9

    .line 830
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 838
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_3
    if-eqz v9, :cond_a

    .line 839
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 840
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 808
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v11    # "numread":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "temp":Ljava/lang/String;
    :cond_b
    if-eqz v9, :cond_10

    .line 811
    :try_start_6
    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v16

    cmp-long v16, v16, v6

    if-eqz v16, :cond_c

    const-wide/16 v16, -0x1

    cmp-long v16, v6, v16

    if-nez v16, :cond_f

    .line 813
    :cond_c
    const/16 v16, 0x1

    .line 827
    if-eqz v10, :cond_d

    .line 828
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_d
    if-eqz v13, :cond_0

    .line 830
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 831
    :catch_2
    move-exception v8

    .line 832
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v16, "AdCache"

    const-string v17, "Content caching error downloading component: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v9, :cond_e

    .line 834
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 815
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_f
    :try_start_8
    const-string v16, "AdCache"

    const-string v17, "Content-Length does not match actual length."

    invoke-static/range {v16 .. v17}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 827
    :cond_10
    :goto_4
    if-eqz v10, :cond_11

    .line 828
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_11
    if-eqz v13, :cond_12

    .line 830
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :cond_12
    move-object v12, v13

    .line 836
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 817
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v5

    .line 818
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_a
    const-string v16, "AdCache"

    const-string v17, "Exception downloading component %s: "

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v5}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 826
    .end local v2    # "buf":[B
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v11    # "numread":I
    :catchall_0
    move-exception v16

    move-object v12, v13

    .line 827
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "temp":Ljava/lang/String;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v10, :cond_13

    .line 828
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 829
    :cond_13
    if-eqz v12, :cond_14

    .line 830
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 835
    :cond_14
    throw v16

    .line 831
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v11    # "numread":I
    .restart local v13    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "temp":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 832
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v16, "AdCache"

    const-string v17, "Content caching error downloading component: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v9, :cond_15

    .line 834
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 831
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v11    # "numread":I
    .end local v13    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "temp":Ljava/lang/String;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    .line 832
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v16, "AdCache"

    const-string v17, "Content caching error downloading component: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v9, :cond_16

    .line 834
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 831
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 832
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v16, "AdCache"

    const-string v17, "Content caching error downloading component: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    if-eqz v9, :cond_17

    .line 834
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 835
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 826
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v16

    goto :goto_5

    .line 822
    :catch_7
    move-exception v5

    goto/16 :goto_2
.end method

.method static downloadComponentExternalStorage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    invoke-static {p2}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 723
    .local v0, "externalDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    :cond_0
    const/4 v1, 0x0

    .line 727
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method static downloadComponentExternalStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "subDirectory"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 733
    invoke-static {p3}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 734
    .local v0, "externalDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 735
    :cond_0
    const/4 v2, 0x0

    .line 739
    :goto_0
    return v2

    .line 738
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 739
    .local v1, "externalSubDir":Ljava/io/File;
    invoke-static {p0, p2, v1, p3}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v2

    goto :goto_0
.end method

.method static downloadComponentInternalCache(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 711
    invoke-static {p2}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 712
    .local v0, "internalDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    const/4 v1, 0x0

    .line 716
    :goto_0
    return v1

    :cond_1
    invoke-static {p0, p1, v0, p2}, Lcom/millennialmedia/android/AdCache;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 596
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ad.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->isExternalStorageAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 649
    .local v7, "isExternalStateMounted":Z
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 650
    .local v2, "cacheDir":Ljava/io/File;
    const/4 v0, 0x0

    .line 653
    .local v0, "adFile":Ljava/io/File;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 654
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "adFile":Ljava/io/File;
    .local v1, "adFile":Ljava/io/File;
    move-object v0, v1

    .line 656
    .end local v1    # "adFile":Ljava/io/File;
    .restart local v0    # "adFile":Ljava/io/File;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 659
    :cond_1
    if-nez v7, :cond_2

    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 662
    .local v5, "internalCacheDir":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 663
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    .local v6, "internalFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 676
    .end local v5    # "internalCacheDir":Ljava/io/File;
    .end local v6    # "internalFile":Ljava/io/File;
    :goto_0
    return-object v6

    .line 672
    :catch_0
    move-exception v3

    .line 673
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "AdCache"

    const-string v9, "getCachedAdFile: "

    invoke-static {v8, v9, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 674
    const/4 v6, 0x0

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v6, v0

    .line 676
    goto :goto_0
.end method

.method static declared-synchronized getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-class v5, Lcom/millennialmedia/android/AdCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 121
    sget-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v4, :cond_0

    .line 122
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v1, "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x2

    new-instance v6, Lcom/millennialmedia/android/AdCache$1;

    invoke-direct {v6, p0, v1}, Lcom/millennialmedia/android/AdCache$1;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    invoke-static {p0, v4, v6}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 137
    sput-object v1, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 138
    const/4 v4, 0x1

    sput-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 141
    .end local v1    # "hashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "acid":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 147
    .restart local v0    # "acid":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 152
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method static getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 571
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 572
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 573
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 575
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method static getDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subDirectory"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 581
    .local v0, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 582
    .local v1, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 583
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method static getExternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, "extCacheDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 606
    .local v1, "externalStorageDir":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 607
    new-instance v0, Ljava/io/File;

    .end local v0    # "extCacheDir":Ljava/io/File;
    const-string v2, ".mmsyscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 609
    .restart local v0    # "extCacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 610
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 614
    :cond_0
    return-object v0
.end method

.method static declared-synchronized getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 260
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    if-nez p0, :cond_1

    .line 620
    const/4 v0, 0x0

    .line 627
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".mmsyscache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 623
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasDownloadFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 591
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isExternalMounted()Z
    .locals 2

    .prologue
    .line 984
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isExternalStorageAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 972
    if-nez p0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return v1

    .line 974
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "storageState":Ljava/lang/String;
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "iterator"    # Lcom/millennialmedia/android/AdCache$Iterator;

    .prologue
    .line 356
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v14

    .line 358
    .local v14, "cachedDir":Ljava/io/File;
    const/4 v10, 0x0

    .line 363
    .local v10, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 365
    .local v2, "ad":Lcom/millennialmedia/android/CachedAd;
    if-eqz v14, :cond_3

    .line 366
    new-instance v3, Lcom/millennialmedia/android/AdCache$2;

    invoke-direct {v3}, Lcom/millennialmedia/android/AdCache$2;-><init>()V

    invoke-virtual {v14, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v12

    .line 375
    .local v12, "adFiles":[Ljava/io/File;
    if-eqz v12, :cond_3

    .line 376
    move-object v13, v12

    .local v13, "arr$":[Ljava/io/File;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move-object/from16 v18, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v18, "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    aget-object v11, v13, v16

    .line 378
    .local v11, "adFile":Ljava/io/File;
    if-eqz v11, :cond_0

    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 417
    :cond_0
    if-eqz v18, :cond_9

    .line 418
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    const/4 v10, 0x0

    .line 376
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v18, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 421
    :catch_0
    move-exception v15

    .line 422
    .local v15, "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v10, v18

    .line 423
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 380
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_2
    if-nez p1, :cond_5

    .line 381
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_4

    .line 417
    if-eqz v18, :cond_a

    .line 418
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 419
    const/4 v10, 0x0

    .line 428
    .end local v11    # "adFile":Ljava/io/File;
    .end local v12    # "adFiles":[Ljava/io/File;
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/android/AdCache$Iterator;->done()V

    .line 429
    return-void

    .line 421
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v11    # "adFile":Ljava/io/File;
    .restart local v12    # "adFiles":[Ljava/io/File;
    .restart local v13    # "arr$":[Ljava/io/File;
    .restart local v16    # "i$":I
    .restart local v17    # "len$":I
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v10, v18

    .line 423
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 417
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_4
    if-eqz v18, :cond_9

    .line 418
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 419
    const/4 v10, 0x0

    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 421
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v10, v18

    .line 423
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 386
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_5
    :try_start_5
    new-instance v10, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 391
    .local v5, "type":I
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 392
    .local v6, "expiration":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 393
    .local v7, "acid":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    .line 394
    .local v8, "deferredViewStart":J
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 395
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v10}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 398
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 399
    const/4 v10, 0x0

    .line 417
    if-eqz v10, :cond_3

    .line 418
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 419
    const/4 v10, 0x0

    goto :goto_2

    .line 421
    :catch_3
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 404
    .end local v15    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_8
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v2, v0

    .line 405
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 406
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 407
    const/4 v10, 0x0

    .line 417
    if-eqz v10, :cond_3

    .line 418
    :try_start_9
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 419
    const/4 v10, 0x0

    goto :goto_2

    .line 421
    :catch_4
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 417
    .end local v15    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz v10, :cond_1

    .line 418
    :try_start_a
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 419
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 421
    :catch_5
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 411
    .end local v5    # "type":I
    .end local v6    # "expiration":Ljava/util/Date;
    .end local v7    # "acid":Ljava/lang/String;
    .end local v8    # "deferredViewStart":J
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v15

    move-object/from16 v10, v18

    .line 412
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v15, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v3, "AdCache"

    const-string v4, "There was a problem reading the cached ad %s."

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 417
    if-eqz v10, :cond_1

    .line 418
    :try_start_c
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 419
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 421
    :catch_7
    move-exception v15

    .line 422
    .local v15, "e":Ljava/io/IOException;
    const-string v3, "AdCache"

    const-string v4, "Failed to close"

    invoke-static {v3, v4, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 416
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v3

    move-object/from16 v10, v18

    .line 417
    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_4
    if-eqz v10, :cond_8

    .line 418
    :try_start_d
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 419
    const/4 v10, 0x0

    .line 423
    :cond_8
    :goto_5
    throw v3

    .line 421
    :catch_8
    move-exception v15

    .line 422
    .restart local v15    # "e":Ljava/io/IOException;
    const-string v4, "AdCache"

    const-string v19, "Failed to close"

    move-object/from16 v0, v19

    invoke-static {v4, v0, v15}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 416
    .end local v15    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    goto :goto_4

    .line 411
    :catch_9
    move-exception v15

    goto :goto_3

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_9
    move-object/from16 v10, v18

    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v11    # "adFile":Ljava/io/File;
    .restart local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_a
    move-object/from16 v10, v18

    .end local v18    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 853
    if-eqz p1, :cond_0

    const-string v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move-object v2, v11

    .line 891
    :cond_1
    :goto_0
    return-object v2

    .line 856
    :cond_2
    const/4 v3, 0x0

    .line 857
    .local v3, "cachedAdFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 860
    .local v9, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 862
    .local v2, "ad":Lcom/millennialmedia/android/CachedAd;
    invoke-static/range {p0 .. p1}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 863
    if-nez v3, :cond_3

    move-object v2, v11

    .line 864
    goto :goto_0

    .line 867
    :cond_3
    :try_start_0
    new-instance v10, Ljava/io/ObjectInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v10, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readInt()I

    .line 871
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    .line 872
    .local v7, "expiration":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 873
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    .line 875
    .local v4, "deferredViewStart":J
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v2, v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 884
    if-eqz v10, :cond_4

    .line 885
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v9, v10

    .line 888
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 886
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v6

    .line 887
    .local v6, "e":Ljava/io/IOException;
    const-string v11, "AdCache"

    const-string v12, "Failed to close"

    invoke-static {v11, v12, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v10

    .line 889
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 876
    .end local v4    # "deferredViewStart":J
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "expiration":Ljava/util/Date;
    :catch_1
    move-exception v8

    .line 877
    .local v8, "fe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v11, "AdCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There was a problem loading up the cached ad "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Ad is not on disk."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 884
    if-eqz v9, :cond_1

    .line 885
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 886
    :catch_2
    move-exception v6

    .line 887
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v11, "AdCache"

    const-string v12, "Failed to close"

    invoke-static {v11, v12, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 879
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "fe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 880
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v11, "AdCache"

    const-string v12, "There was a problem loading up the cached ad %s."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 884
    if-eqz v9, :cond_1

    .line 885
    :try_start_6
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 886
    :catch_4
    move-exception v6

    .line 887
    .local v6, "e":Ljava/io/IOException;
    const-string v11, "AdCache"

    const-string v12, "Failed to close"

    invoke-static {v11, v12, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 883
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 884
    :goto_3
    if-eqz v9, :cond_5

    .line 885
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 888
    :cond_5
    :goto_4
    throw v11

    .line 886
    :catch_5
    move-exception v6

    .line 887
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v12, "AdCache"

    const-string v13, "Failed to close"

    invoke-static {v12, v13, v6}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 883
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 879
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v6

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 876
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v8

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static loadApidListSet(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 287
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    .line 288
    const-string v6, "nextCachedAd_apids"

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "apids":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 290
    sget-object v6, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "apidArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 292
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 293
    .local v0, "apid":Ljava/lang/String;
    sget-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "apidArray":[Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method static loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "nextIncompleteAd":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 224
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 226
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    .line 229
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 230
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 232
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 234
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 237
    sget-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    .line 241
    return-void
.end method

.method static loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "nextAd":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadNextCachedAdHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 161
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 163
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    .line 165
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 166
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 168
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdImpl;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 170
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 173
    sget-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    .line 177
    return-void
.end method

.method static resetCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 532
    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/AdCache$5;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/AdCache$5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 545
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/Set;

    .line 546
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 547
    const/4 v2, 0x0

    sput-boolean v2, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 549
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 550
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 551
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 555
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    .restart local v1    # "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "cachedAdFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 903
    .local v2, "lockFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 905
    .local v4, "objectOutputStream":Ljava/io/ObjectOutputStream;
    if-nez p1, :cond_1

    .line 957
    :cond_0
    :goto_0
    return v6

    .line 908
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 909
    if-eqz v0, :cond_0

    .line 912
    const-string v8, "AdCache"

    const-string v9, "Saving CachedAd %s to %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    aput-object v0, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ad.lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    .end local v2    # "lockFile":Ljava/io/File;
    .local v3, "lockFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_3

    .line 921
    const-string v7, "AdCache"

    const-string v8, "Could not save the cached ad %s. Ad was locked."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 943
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v4, :cond_2

    .line 945
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v2, v3

    .line 948
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_0

    .line 946
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 947
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "AdCache"

    const-string v8, "Failed to close"

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 927
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 931
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getType()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 932
    iget-object v8, p1, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 933
    iget-object v8, p1, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 934
    iget-wide v8, p1, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v5, v8, v9}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 936
    invoke-virtual {v5, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 943
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v5, :cond_4

    .line 945
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 952
    :cond_4
    :goto_2
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->saveAssets(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 953
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 954
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto/16 :goto_0

    .line 946
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    .line 947
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "AdCache"

    const-string v9, "Failed to close"

    invoke-static {v8, v9, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 937
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "lockFile":Ljava/io/File;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v1

    .line 938
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v7, "AdCache"

    const-string v8, "There was a problem saving the cached ad %s."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 943
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v4, :cond_0

    .line 945
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 946
    :catch_3
    move-exception v1

    .line 947
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "AdCache"

    const-string v8, "Failed to close"

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 942
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 943
    :goto_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 944
    if-eqz v4, :cond_5

    .line 945
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 948
    :cond_5
    :goto_5
    throw v6

    .line 946
    :catch_4
    move-exception v1

    .line 947
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "AdCache"

    const-string v8, "Failed to close"

    invoke-static {v7, v8, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    move v6, v7

    .line 957
    goto/16 :goto_0

    .line 942
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_4

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_4

    .line 937
    .end local v2    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_3

    .end local v2    # "lockFile":Ljava/io/File;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "lockFile":Ljava/io/File;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v2    # "lockFile":Ljava/io/File;
    goto :goto_3
.end method

.method private static saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 301
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 302
    .local v3, "start":I
    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 303
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "apid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 305
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 308
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/android/MMSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    .end local v1    # "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const-string v5, "nextCachedAd_apids"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v0    # "apid":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 315
    .restart local v0    # "apid":Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 250
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompleteDownload_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextCachedAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static setEnableExternalStorage(Z)V
    .locals 0
    .param p0, "on"    # Z

    .prologue
    .line 992
    sput-boolean p0, Lcom/millennialmedia/android/AdCache;->isExternalEnabled:Z

    .line 993
    return-void
.end method

.method static declared-synchronized setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 275
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 276
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V

    .line 277
    :cond_0
    if-eqz p1, :cond_2

    .line 278
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :cond_2
    monitor-exit v1

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V

    .line 213
    :cond_0
    if-eqz p1, :cond_2

    .line 214
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_2
    monitor-exit v1

    return-void

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p3, "listener"    # Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .prologue
    .line 63
    invoke-static {}, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool()Lcom/millennialmedia/android/AdCacheThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/millennialmedia/android/AdCacheThreadPool;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z

    move-result v0

    return v0
.end method
