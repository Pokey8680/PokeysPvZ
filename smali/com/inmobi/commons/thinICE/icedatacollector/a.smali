.class final Lcom/inmobi/commons/thinICE/icedatacollector/a;
.super Ljava/lang/Object;
.source "IceDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 303
    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 304
    const-string v2, "IceDataCollector"

    const-string v3, "** sample runnable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->c()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_2

    .line 308
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 309
    const-string v0, "IceDataCollector"

    const-string v1, "sampling when looper is null, exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_5

    .line 317
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 318
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 319
    const-string v0, "IceDataCollector"

    const-string v1, "activity no longer has focus, terminating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->b()V

    .line 322
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->flush()V

    .line 324
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 325
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Landroid/app/Activity;)Landroid/app/Activity;

    .line 326
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 327
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->f()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;->onSamplingTerminated(Ljava/util/List;)V

    .line 329
    :cond_4
    invoke-static {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;)Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEListener;

    goto :goto_0

    .line 334
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->i()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->g()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    sget-boolean v2, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 336
    const-string v2, "IceDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next sample in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleInterval()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_6
    new-instance v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    invoke-direct {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;-><init>()V

    .line 342
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getWifiFlags()I

    move-result v3

    .line 343
    invoke-static {v3, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v0

    .line 344
    :cond_7
    invoke-static {v3, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v3

    .line 346
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getCellOpFlags()I

    move-result v4

    .line 347
    invoke-static {v4, v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v0

    .line 348
    invoke-static {v4, v6}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->bitTest(II)Z

    move-result v4

    .line 350
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellOperatorEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 354
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCellNetworkInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;

    move-result-object v5

    .line 355
    if-eqz v0, :cond_8

    .line 356
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMcc:I

    .line 357
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->simMnc:I

    .line 359
    :cond_8
    if-eqz v4, :cond_9

    .line 360
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMcc:I

    .line 361
    const/4 v0, -0x1

    iput v0, v5, Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;->currentMnc:I

    .line 363
    :cond_9
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 364
    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- cell operator: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_a
    iput-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->cellOperator:Lcom/inmobi/commons/thinICE/cellular/CellOperatorInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    :cond_b
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleCellEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 377
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->hasGetCurrentServingCellPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 378
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/cellular/CellUtil;->getCurrentCellTower(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    .line 379
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 380
    const-string v0, "IceDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- current serving cell: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedCellTowerInfo:Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;

    iget-object v5, v5, Lcom/inmobi/commons/thinICE/cellular/CellTowerInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 396
    :cond_c
    :goto_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->getConnectedWifiInfo(Landroid/content/Context;)Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->connectedWifiAp:Lcom/inmobi/commons/thinICE/wifi/WifiInfo;

    .line 398
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 401
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 402
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/thinICE/location/LocationUtil;->getLastKnownLocations(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    .line 403
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 404
    const-string v0, "IceDataCollector"

    const-string v5, "-- locations:"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/thinICE/location/LocationInfo;

    .line 406
    const-string v6, "IceDataCollector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 415
    :catch_0
    move-exception v0

    .line 416
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 417
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting location data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    :cond_d
    :goto_4
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->isSampleVisibleWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 425
    :try_start_3
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/inmobi/commons/thinICE/wifi/WifiUtil;->hasWifiScanPermission(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 426
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->j()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;

    invoke-direct {v4, p0, v1, v3}, Lcom/inmobi/commons/thinICE/icedatacollector/a$a;-><init>(Lcom/inmobi/commons/thinICE/icedatacollector/a;ZZ)V

    invoke-static {v0, v4}, Lcom/inmobi/commons/thinICE/wifi/WifiScanner;->requestScan(Landroid/content/Context;Lcom/inmobi/commons/thinICE/wifi/WifiScanListener;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 471
    :cond_e
    :goto_5
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->k()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 472
    :try_start_4
    invoke-static {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->a(Lcom/inmobi/commons/thinICE/icedatacollector/Sample;)Lcom/inmobi/commons/thinICE/icedatacollector/Sample;

    .line 473
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 474
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 475
    :goto_6
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->h()Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/thinICE/icedatacollector/ThinICEConfigSettings;->getSampleHistorySize()I

    move-result v2

    if-le v0, v2, :cond_13

    .line 476
    invoke-static {}, Lcom/inmobi/commons/thinICE/icedatacollector/IceDataCollector;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_b

    .line 369
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell operator data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 383
    :cond_f
    :try_start_5
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 384
    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access current serving cell"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 387
    :catch_2
    move-exception v0

    .line 388
    sget-boolean v4, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 389
    const-string v4, "IceDataCollector"

    const-string v5, "Error getting cell data"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 409
    :cond_10
    :try_start_6
    iput-object v4, v2, Lcom/inmobi/commons/thinICE/icedatacollector/Sample;->lastKnownLocations:Ljava/util/HashMap;

    goto :goto_4

    .line 411
    :cond_11
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 412
    const-string v0, "IceDataCollector"

    const-string v4, "application does not have permission to access location"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 458
    :cond_12
    :try_start_7
    sget-boolean v0, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 459
    const-string v0, "IceDataCollector"

    const-string v1, "application does not have permission to scan for wifi access points"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    .line 462
    :catch_3
    move-exception v0

    .line 463
    sget-boolean v1, Lcom/inmobi/commons/thinICE/icedatacollector/BuildSettings;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 464
    const-string v1, "IceDataCollector"

    const-string v3, "Error scanning for wifi"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 479
    :cond_13
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method
