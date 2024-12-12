.class public Lcom/ea/nimble/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Persistence$Storage;
    }
.end annotation


# static fields
.field private static PERSISTENCE_VERSION:I

.field static final s_dataLock:Ljava/lang/Object;


# instance fields
.field private m_backUp:Z

.field private m_changed:Z

.field private m_content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private m_encryption:Z

.field private m_encryptor:Lcom/ea/nimble/Encryptor;

.field private m_identifier:Ljava/lang/String;

.field private m_storage:Lcom/ea/nimble/Persistence$Storage;

.field private m_synchronizeTimer:Lcom/ea/nimble/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x65

    sput v0, Lcom/ea/nimble/Persistence;->PERSISTENCE_VERSION:I

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/ea/nimble/Persistence;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Lcom/ea/nimble/Persistence;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/Persistence$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/Persistence$1;-><init>(Lcom/ea/nimble/Persistence;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    .line 73
    iget-object v0, p1, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    .line 74
    iget-boolean v0, p1, Lcom/ea/nimble/Persistence;->m_encryption:Z

    iput-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    .line 75
    iget-boolean v0, p1, Lcom/ea/nimble/Persistence;->m_backUp:Z

    iput-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    .line 76
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    .line 77
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "storage"    # Lcom/ea/nimble/Persistence$Storage;
    .param p3, "encryptor"    # Lcom/ea/nimble/Encryptor;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/Persistence$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/Persistence$1;-><init>(Lcom/ea/nimble/Persistence;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    .line 62
    iput-object p3, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    .line 63
    iput-boolean v2, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    .line 64
    iput-boolean v2, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    .line 65
    iput-boolean v2, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    .line 66
    return-void
.end method

.method private clearSynchronizeTimer()V
    .locals 2

    .prologue
    .line 363
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    .line 366
    monitor-exit v1

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private flagChange()V
    .locals 5

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    .line 375
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->clearSynchronizeTimer()V

    .line 378
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;)Ljava/io/File;
    .locals 9
    .param p0, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 534
    const/4 v2, 0x0

    .line 535
    .local v2, "path":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    .line 536
    .local v1, "env":Lcom/ea/nimble/IApplicationEnvironment;
    sget-object v4, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$Persistence$Storage:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Persistence$Storage;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 548
    const-string v4, "Persistence"

    const-string v5, "Unknown storage type"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 558
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :pswitch_0
    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getDocumentPath()Ljava/lang/String;

    move-result-object v2

    .line 551
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persistence"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 555
    const-string v4, "Persistence"

    const-string v5, "Cannot create persistence folder in storage(%s) %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 556
    goto :goto_0

    .line 542
    .end local v0    # "dir":Ljava/io/File;
    :pswitch_1
    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v2

    .line 543
    goto :goto_1

    .line 545
    :pswitch_2
    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getTempPath()Ljava/lang/String;

    move-result-object v2

    .line 546
    goto :goto_1

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;
    .locals 12
    .param p0, "storage"    # Lcom/ea/nimble/Persistence$Storage;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 564
    const/4 v1, 0x0

    .line 566
    .local v1, "basePath":Ljava/lang/String;
    sget-object v7, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$Persistence$Storage:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Persistence$Storage;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 576
    const-string v7, "Nimble"

    const-string v8, "Persistence : Unknown storage type"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 606
    :cond_0
    :goto_0
    return-object v4

    .line 569
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 580
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 581
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 584
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 589
    :goto_2
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.ea.nimble.configuration"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, "config":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Nimble"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "persistence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "dir":Ljava/lang/String;
    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->TEMP:Lcom/ea/nimble/Persistence$Storage;

    if-ne p0, v7, :cond_1

    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v4, "dirFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 603
    const-string v7, "Nimble"

    const-string v8, "Persistence : Cannot create persistence folder in storage(%s) %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 604
    goto/16 :goto_0

    .line 573
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "config":Ljava/lang/String;
    .end local v3    # "dir":Ljava/lang/String;
    .end local v4    # "dirFile":Ljava/io/File;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 574
    goto/16 :goto_1

    .line 586
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/ea/nimble/Persistence$Storage;

    .prologue
    .line 611
    invoke-static {p1}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;)Ljava/io/File;

    move-result-object v0

    .line 612
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "storage"    # Lcom/ea/nimble/Persistence$Storage;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 617
    invoke-static {p1, p2}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 618
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private loadPersistenceData(ZLandroid/content/Context;)V
    .locals 16
    .param p1, "headerOnly"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 400
    if-nez p2, :cond_1

    .line 402
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v11, v12}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "path":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_2

    .line 476
    :cond_0
    :goto_1
    return-void

    .line 406
    .end local v9    # "path":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    move-object/from16 v0, p2

    invoke-static {v11, v12, v0}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "path":Ljava/lang/String;
    goto :goto_0

    .line 414
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_4

    .line 417
    :cond_3
    const-string v11, "No persistence file for id[%s] to restore from storage %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    .line 418
    invoke-virtual {v14}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 417
    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    :cond_4
    const-string v11, "Loading persistence file size %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    const/4 v5, 0x0

    .line 429
    .local v5, "fileStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .local v6, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 431
    .local v7, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v10

    .line 432
    .local v10, "version":I
    sget v11, Lcom/ea/nimble/Persistence;->PERSISTENCE_VERSION:I

    if-eq v10, v11, :cond_5

    .line 434
    new-instance v11, Ljava/io/InvalidClassException;

    const-string v12, "com.ea.nimble.Persistence"

    const-string v13, "Persistence version doesn\'t match"

    invoke-direct {v11, v12, v13}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 458
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    .end local v10    # "version":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 460
    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string v11, "Can\'t read persistence (%s) file, %s: %s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    if-eqz v5, :cond_0

    .line 469
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 472
    :catch_1
    move-exception v11

    goto/16 :goto_1

    .line 437
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/ObjectInputStream;
    .restart local v10    # "version":I
    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    .line 438
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    .line 440
    if-nez p1, :cond_6

    .line 442
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 443
    .local v2, "buffer":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 444
    .local v8, "ois":Ljava/io/ObjectInputStream;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eqz v11, :cond_8

    .line 446
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-virtual {v11, v2}, Lcom/ea/nimble/Encryptor;->encryptInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object v8

    .line 452
    :goto_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    .line 453
    const-string v11, "Persistence file for id[%s] restored from storage %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v14}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 456
    .end local v2    # "buffer":Ljava/io/InputStream;
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    :cond_6
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 467
    if-eqz v6, :cond_7

    .line 469
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    move-object v5, v6

    .line 474
    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 450
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "buffer":Ljava/io/InputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :cond_8
    :try_start_6
    new-instance v8, Ljava/io/ObjectInputStream;

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    invoke-direct {v8, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 472
    .end local v2    # "buffer":Ljava/io/InputStream;
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v11

    move-object v5, v6

    .line 475
    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 465
    .end local v7    # "in":Ljava/io/ObjectInputStream;
    .end local v10    # "version":I
    :catchall_0
    move-exception v11

    .line 467
    :goto_4
    if-eqz v5, :cond_9

    .line 469
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 474
    :cond_9
    :goto_5
    throw v11

    .line 472
    :catch_3
    move-exception v12

    goto :goto_5

    .line 465
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 458
    :catch_4
    move-exception v3

    goto/16 :goto_2
.end method

.method private putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 385
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 386
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 387
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 388
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 389
    .local v0, "data":[B
    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 391
    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    .line 394
    :cond_0
    return-void
.end method

.method private savePersistenceData()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 480
    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v9, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v8, v9}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "path":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 530
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 489
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .local v4, "fileStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 491
    .local v6, "out":Ljava/io/ObjectOutputStream;
    sget v8, Lcom/ea/nimble/Persistence;->PERSISTENCE_VERSION:I

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 492
    iget-boolean v8, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 493
    iget-boolean v8, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 494
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 495
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 497
    .local v0, "buffer":Ljava/io/OutputStream;
    iget-boolean v8, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eqz v8, :cond_2

    .line 499
    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-virtual {v8, v0}, Lcom/ea/nimble/Encryptor;->encryptOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;

    move-result-object v5

    .line 505
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :goto_1
    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 506
    const-string v8, "Synchronize persistence for id[%s] in storage %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v11}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 508
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 518
    if-eqz v4, :cond_4

    .line 522
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 529
    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .end local v6    # "out":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    const-string v8, "Saving persistence file size %d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 503
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/ObjectOutputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 524
    :catch_0
    move-exception v8

    move-object v3, v4

    .line 526
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 510
    .end local v0    # "buffer":Ljava/io/OutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .end local v6    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v8, "Fail to save persistence file for id[%s] in storage %s: %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    .line 513
    invoke-virtual {v11}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 512
    invoke-static {p0, v8, v9}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 518
    if-eqz v3, :cond_1

    .line 522
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 524
    :catch_2
    move-exception v8

    goto :goto_2

    .line 518
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_3

    .line 522
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 526
    :cond_3
    :goto_5
    throw v8

    .line 524
    :catch_3
    move-exception v9

    goto :goto_5

    .line 518
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 510
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":Ljava/io/OutputStream;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "out":Ljava/io/ObjectOutputStream;
    :cond_4
    move-object v3, v4

    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public varargs addEntries([Ljava/lang/Object;)V
    .locals 11
    .param p1, "entries"    # [Ljava/lang/Object;

    .prologue
    .line 236
    sget-object v7, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 238
    const/4 v4, 0x0

    .line 239
    .local v4, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "entryIndex":I
    :goto_0
    :try_start_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 241
    rem-int/lit8 v6, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 245
    :try_start_1
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, "aKey":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 248
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "Invalid key"

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v1    # "aKey":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "Invalid key in NimblePersistence.addEntries at index %d, not a string"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 250
    .restart local v1    # "aKey":Ljava/lang/String;
    :cond_0
    move-object v4, v1

    .line 239
    .end local v1    # "aKey":Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_1
    const/4 v5, 0x0

    .line 263
    .local v5, "value":Ljava/io/Serializable;
    :try_start_3
    aget-object v6, p1, v3

    move-object v0, v6

    check-cast v0, Ljava/io/Serializable;

    move-object v5, v0

    .line 264
    invoke-direct {p0, v4, v5}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 266
    :catch_1
    move-exception v2

    .line 268
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "Invalid value in NimblePersistence.addEntries for key %s at index %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    .line 269
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 268
    invoke-static {p0, v6, v8}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    monitor-exit v7

    goto :goto_1

    .line 274
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "value":Ljava/io/Serializable;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :cond_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public addEntriesFromMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    sget-object v3, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 293
    const-string v4, "Invalid key %s in NimblePersistence.addEntriesInDictionary, not a string, skip it"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 296
    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    .local v1, "value":Ljava/io/Serializable;
    if-eqz v1, :cond_1

    .line 301
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    .line 309
    :cond_1
    :try_start_3
    const-string v4, "Invalid value in NimblePersistence.addEntries for key %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 312
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/io/Serializable;
    :cond_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    return-void
.end method

.method public clean()V
    .locals 6

    .prologue
    .line 320
    sget-object v2, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 323
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v3}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const-string v1, "Fail to clean persistence file for id[%s] in storage %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v5}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_0
    monitor-exit v2

    .line 330
    return-void

    .line 329
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackUp()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    return v0
.end method

.method public getEncryption()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "Persistence"

    return-object v0
.end method

.method public getStorage()Lcom/ea/nimble/Persistence$Storage;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 214
    .local v1, "value":Ljava/io/Serializable;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "value":Ljava/io/Serializable;
    :goto_0
    return-object v1

    .line 216
    .restart local v1    # "value":Ljava/io/Serializable;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value type for getStringValueCall, value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 187
    sget-object v6, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v6

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 190
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 192
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 204
    :goto_0
    return-object v4

    .line 197
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 198
    .local v2, "in":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 199
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 206
    .end local v0    # "data":[B
    .end local v2    # "in":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 201
    .restart local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PERSIST: Exception getting value, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v7}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    goto :goto_0
.end method

.method merge(Lcom/ea/nimble/Persistence;Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;)V
    .locals 4
    .param p1, "source"    # Lcom/ea/nimble/Persistence;
    .param p2, "mergePolicy"    # Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;

    .prologue
    .line 126
    sget-object v1, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$PersistenceService$PersistenceMergePolicy:[I

    invoke-virtual {p2}, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iget-object v2, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v1, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iget-object v3, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method restore(ZLandroid/content/Context;)V
    .locals 2
    .param p1, "headerOnly"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/Persistence;->loadPersistenceData(ZLandroid/content/Context;)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBackUp(Z)V
    .locals 2
    .param p1, "backUp"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: Backup flag not supported for storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    goto :goto_0
.end method

.method public setEncryption(Z)V
    .locals 1
    .param p1, "encryption"    # Z

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eq p1, v0, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    .line 105
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    .line 107
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 156
    sget-object v2, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NimblePersistence cannot accept an invalid string "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    monitor-exit v2

    .line 183
    :goto_0
    return-void

    .line 164
    :cond_0
    if-nez p2, :cond_2

    .line 166
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    .line 171
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NimblePersistence cannot archive value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public synchronize()V
    .locals 5

    .prologue
    .line 341
    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    if-nez v0, :cond_0

    .line 345
    const-string v0, "Not synchronizing to persistence for id[%s] since there is no change"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    monitor-exit v1

    .line 359
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->clearSynchronizeTimer()V

    .line 352
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->savePersistenceData()V

    .line 353
    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 358
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
