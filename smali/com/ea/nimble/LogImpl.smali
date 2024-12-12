.class public Lcom/ea/nimble/LogImpl;
.super Lcom/ea/nimble/Component;
.source "LogImpl.java"

# interfaces
.implements Lcom/ea/nimble/ILog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/LogImpl$LogRecord;,
        Lcom/ea/nimble/LogImpl$GuardTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHECK_INTERVAL:I = 0xe10

.field private static final DEFAULT_CONSOLE_OUTPUT_LIMIT:I = 0xfa0

.field private static final DEFAULT_MESSAGE_LENGTH_LIMIT:I = 0x3e8

.field private static final DEFAULT_SIZE_LIMIT:I = 0x400


# instance fields
.field private m_cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/LogImpl$LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_filePath:Ljava/io/File;

.field private m_format:Ljava/text/DateFormat;

.field private m_guardTimer:Lcom/ea/nimble/Timer;

.field private m_interval:I

.field private m_level:I

.field private m_logFileStream:Ljava/io/FileOutputStream;

.field private m_messageLengthLimit:I

.field private m_sizeLimit:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 56
    iput v1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    .line 57
    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    .line 58
    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    .line 59
    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    .line 60
    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    .line 61
    iput v1, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/LogImpl;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ea/nimble/LogImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/LogImpl;

    .prologue
    .line 18
    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    return v0
.end method

.method static synthetic access$200(Lcom/ea/nimble/LogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/LogImpl;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->clearLog()V

    return-void
.end method

.method private clearLog()V
    .locals 4

    .prologue
    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 467
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Nimble"

    const-string v2, "LOG: Can\'t clear log file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configure()V
    .locals 25

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    const/4 v14, 0x1

    .line 213
    .local v14, "newConfigure":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    move-object/from16 v20, v0

    const-string v21, "setting::log"

    invoke-virtual/range {v20 .. v21}, Lcom/ea/nimble/BaseCore;->getSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    .line 215
    .local v18, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v18, :cond_2

    .line 217
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/ea/nimble/LogImpl;->parseLevel(Ljava/lang/String;)I

    move-result v15

    .line 218
    .local v15, "newLevel":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v15, v0, :cond_0

    .line 220
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    .line 221
    const-string v20, "Nimble"

    const-string v21, "LOG: Default Log level(%d) without log configuration file"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v24, v0

    .line 222
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    :goto_1
    return-void

    .line 209
    .end local v14    # "newConfigure":Z
    .end local v15    # "newLevel":I
    .end local v18    # "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 227
    .restart local v14    # "newConfigure":Z
    .restart local v18    # "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v20, "Level"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/ea/nimble/LogImpl;->parseLevel(Ljava/lang/String;)I

    move-result v15

    .line 228
    .restart local v15    # "newLevel":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v15, v0, :cond_3

    .line 230
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    .line 231
    const-string v20, "Nimble"

    const-string v21, "LOG: Log level(%d)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_level:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_6

    .line 237
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    .line 263
    :cond_4
    :goto_2
    const-string v20, "File"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 264
    .local v7, "filename":Ljava/lang/String;
    invoke-static {v7}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 267
    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 269
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    .line 270
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    .line 271
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_interval:I

    .line 272
    const-string v20, "Nimble"

    const-string v21, "LOG: Disable log to file since no filename provided"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 241
    .end local v7    # "filename":Ljava/lang/String;
    :cond_6
    const-string v20, "MessageLengthLimit"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 242
    .local v13, "messageLengthLimit":Ljava/lang/String;
    if-nez v13, :cond_7

    .line 244
    const/16 v20, 0x3e8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    goto :goto_2

    .line 250
    :cond_7
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    move/from16 v20, v0

    if-gez v20, :cond_4

    .line 253
    const/16 v20, 0x3e8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 256
    :catch_0
    move-exception v5

    .line 258
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x3e8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    goto :goto_2

    .line 281
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "messageLengthLimit":Ljava/lang/String;
    .restart local v7    # "filename":Ljava/lang/String;
    :cond_8
    const-string v20, "Location"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 284
    .local v11, "logFileLocation":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 287
    .local v17, "path":Ljava/lang/String;
    invoke-static {v11}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    const-string v20, "external"

    .line 288
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 294
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mounted"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 297
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v16

    .line 300
    .local v16, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 301
    .local v12, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 302
    .local v9, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 310
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "manager":Landroid/content/pm/PackageManager;
    :goto_3
    new-instance v10, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v10, "logDirectory":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    .line 316
    .local v4, "directoryExists":Z
    if-nez v4, :cond_9

    .line 318
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v4

    .line 323
    :cond_9
    if-eqz v4, :cond_a

    .line 325
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 333
    .end local v4    # "directoryExists":Z
    .end local v10    # "logDirectory":Ljava/io/File;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v6, "filePath":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-eq v6, v0, :cond_b

    .line 336
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    .line 339
    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-direct/range {v20 .. v22}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 347
    const-string v20, "Nimble"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LOG: File path: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_b
    const-string v20, "DateFormat"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 352
    .local v8, "format":Ljava/lang/String;
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_e

    .line 354
    new-instance v20, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    .line 363
    :goto_4
    :try_start_3
    const-string v20, "FileCheckInterval"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_interval:I

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_interval:I

    move/from16 v20, v0

    if-gtz v20, :cond_c

    .line 366
    const/16 v20, 0xe10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_interval:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 376
    :cond_c
    :goto_5
    :try_start_4
    const-string v20, "MaxFileSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    move/from16 v20, v0

    if-gtz v20, :cond_d

    .line 379
    const/16 v20, 0x400

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 388
    :cond_d
    :goto_6
    new-instance v19, Lcom/ea/nimble/LogImpl$GuardTask;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/LogImpl$GuardTask;-><init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V

    .line 389
    .local v19, "task":Lcom/ea/nimble/LogImpl$GuardTask;
    invoke-virtual/range {v19 .. v19}, Lcom/ea/nimble/LogImpl$GuardTask;->run()V

    .line 390
    new-instance v20, Lcom/ea/nimble/Timer;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ea/nimble/LogImpl;->m_interval:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    goto/16 :goto_1

    .line 341
    .end local v8    # "format":Ljava/lang/String;
    .end local v19    # "task":Lcom/ea/nimble/LogImpl$GuardTask;
    :catch_1
    move-exception v5

    .line 343
    .local v5, "e":Ljava/io/FileNotFoundException;
    const-string v20, "Nimble"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "LOG: Can\'t create log file at "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    goto/16 :goto_1

    .line 358
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "format":Ljava/lang/String;
    :cond_e
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    goto/16 :goto_4

    .line 369
    :catch_2
    move-exception v5

    .line 371
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0xe10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_interval:I

    goto/16 :goto_5

    .line 382
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v5

    .line 384
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    const/16 v20, 0x400

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    goto/16 :goto_6

    .line 304
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "filePath":Ljava/io/File;
    .end local v8    # "format":Ljava/lang/String;
    .restart local v16    # "packageName":Ljava/lang/String;
    :catch_4
    move-exception v20

    goto/16 :goto_3
.end method

.method private flushCache()V
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/LogImpl$LogRecord;

    .line 398
    .local v0, "record":Lcom/ea/nimble/LogImpl$LogRecord;
    iget v2, v0, Lcom/ea/nimble/LogImpl$LogRecord;->level:I

    iget-object v3, v0, Lcom/ea/nimble/LogImpl$LogRecord;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ea/nimble/LogImpl;->writeLine(ILjava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v0    # "record":Lcom/ea/nimble/LogImpl$LogRecord;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    .line 401
    return-void
.end method

.method private formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "levelPrefix"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    .local v3, "outputMessage":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 608
    .local v1, "length":I
    iget v5, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    if-le v1, v5, :cond_0

    iget v5, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    if-eqz v5, :cond_0

    .line 610
    iget v5, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    sub-int/2addr v1, v5

    .line 611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "... and %d chars more"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    :cond_0
    int-to-double v6, v1

    const-wide v8, 0x40af400000000000L    # 4000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 616
    .local v2, "numChunks":I
    new-array v4, v2, [Ljava/lang/String;

    .line 617
    .local v4, "outputMessages":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 619
    add-int/lit16 v5, v0, 0xfa0

    if-ge v5, v1, :cond_1

    .line 621
    div-int/lit16 v5, v0, 0xfa0

    add-int/lit16 v6, v0, 0xfa0

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 617
    :goto_1
    add-int/lit16 v0, v0, 0xfa0

    goto :goto_0

    .line 625
    :cond_1
    div-int/lit16 v5, v0, 0xfa0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_1

    .line 629
    :cond_2
    return-object v4
.end method

.method private outputMessageToFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 636
    .local v2, "lineSep":Ljava/lang/String;
    iget-object v3, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_0

    .line 640
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "line":Ljava/lang/String;
    iget-object v3, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 642
    iget-object v3, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    .end local v1    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Nimble"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to log file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseLevel(Ljava/lang/String;)I
    .locals 6
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x1f4

    const/16 v3, 0x64

    .line 408
    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 411
    .local v1, "intLevel":I
    if-eqz v1, :cond_6

    .line 458
    .end local v1    # "intLevel":I
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "verbose"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 422
    goto :goto_0

    .line 424
    :cond_0
    const-string v4, "debug"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    const/16 v1, 0xc8

    goto :goto_0

    .line 428
    :cond_1
    const-string v4, "info"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    const/16 v1, 0x12c

    goto :goto_0

    .line 432
    :cond_2
    const-string v4, "warn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    const/16 v1, 0x190

    goto :goto_0

    .line 436
    :cond_3
    const-string v4, "error"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    .line 438
    goto :goto_0

    .line 440
    :cond_4
    const-string v4, "fatal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 442
    const/16 v1, 0x258

    goto :goto_0

    .line 444
    :cond_5
    const-string v4, "silent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 446
    const/16 v1, 0x2bc

    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v4, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v4}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 451
    invoke-virtual {v4}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    if-ne v4, v5, :cond_8

    :cond_7
    move v1, v3

    .line 454
    goto :goto_0

    :cond_8
    move v1, v2

    .line 458
    goto :goto_0
.end method

.method private write(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 582
    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "outputMessage":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 594
    new-instance v1, Lcom/ea/nimble/LogImpl$LogRecord;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ea/nimble/LogImpl$LogRecord;-><init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V

    .line 595
    .local v1, "record":Lcom/ea/nimble/LogImpl$LogRecord;
    iput p1, v1, Lcom/ea/nimble/LogImpl$LogRecord;->level:I

    .line 596
    iput-object v0, v1, Lcom/ea/nimble/LogImpl$LogRecord;->message:Ljava/lang/String;

    .line 597
    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v1    # "record":Lcom/ea/nimble/LogImpl$LogRecord;
    :goto_1
    return-void

    .line 588
    .end local v0    # "outputMessage":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "outputMessage":Ljava/lang/String;
    goto :goto_0

    .line 601
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/LogImpl;->writeLine(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private writeLine(ILjava/lang/String;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 480
    sparse-switch p1, :sswitch_data_0

    .line 555
    const-string v5, "NIM(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "messageChunks":[Ljava/lang/String;
    aget-object v0, v3, v4

    .line 559
    .local v0, "chunk":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_3

    .line 561
    const-string v4, "Nimble"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 563
    add-int/lit8 v4, v1, 0x1

    aget-object v0, v3, v4

    .line 559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_0
    const-string v2, "NIM_VERBOSE"

    .line 485
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 488
    .restart local v0    # "chunk":Ljava/lang/String;
    const-string v6, "Nimble"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_1
    const-string v2, "NIM_DEBUG"

    .line 496
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 497
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    array-length v5, v3

    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 499
    .restart local v0    # "chunk":Ljava/lang/String;
    const-string v6, "Nimble"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 506
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_2
    const-string v2, "NIM_INFO"

    .line 507
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 508
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    array-length v5, v3

    :goto_3
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 510
    .restart local v0    # "chunk":Ljava/lang/String;
    const-string v6, "Nimble"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 517
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_3
    const-string v2, "NIM_WARN"

    .line 518
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 519
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    array-length v5, v3

    :goto_4
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 521
    .restart local v0    # "chunk":Ljava/lang/String;
    const-string v6, "Nimble"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 519
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 528
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_4
    const-string v2, "NIM_ERROR"

    .line 529
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 530
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    array-length v5, v3

    :goto_5
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 532
    .restart local v0    # "chunk":Ljava/lang/String;
    const-string v6, "Nimble"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 539
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v2    # "levelPrefix":Ljava/lang/String;
    .end local v3    # "messageChunks":[Ljava/lang/String;
    :sswitch_5
    const-string v2, "NIM_FATAL"

    .line 540
    .restart local v2    # "levelPrefix":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 542
    .restart local v3    # "messageChunks":[Ljava/lang/String;
    aget-object v0, v3, v4

    .line 543
    .restart local v0    # "chunk":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 545
    const-string v4, "Nimble"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 547
    add-int/lit8 v4, v1, 0x1

    aget-object v0, v3, v4

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 549
    :cond_0
    const-string v4, "Nimble"

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    .line 571
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    :goto_7
    const/16 v4, 0x258

    if-lt p1, v4, :cond_4

    iget-object v4, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 572
    invoke-virtual {v4}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 573
    invoke-virtual {v4}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v4

    sget-object v5, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    if-ne v4, v5, :cond_4

    .line 575
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 565
    .restart local v0    # "chunk":Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_3
    const-string v4, "Nimble"

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-direct {p0, v0}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    goto :goto_7

    .line 577
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 480
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method protected connectToCore(Lcom/ea/nimble/BaseCore;)V
    .locals 0
    .param p1, "core"    # Lcom/ea/nimble/BaseCore;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 198
    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->configure()V

    .line 199
    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->flushCache()V

    .line 200
    return-void
.end method

.method protected disconnectFromCore()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 205
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "com.ea.nimble.NimbleLog"

    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThresholdLevel()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->fire()V

    .line 94
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->resume()V

    .line 96
    :cond_0
    return-void
.end method

.method public setThresholdLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    .line 132
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->configure()V

    .line 77
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->pause()V

    .line 86
    :cond_0
    return-void
.end method

.method public teardown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v1}, Lcom/ea/nimble/Timer;->cancel()V

    .line 104
    iput-object v3, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iput-object v3, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    .line 118
    :cond_1
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Nimble"

    const-string v2, "LOG: Can\'t close log file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 143
    iget v1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-lt p1, v1, :cond_0

    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    .end local p2    # "source":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 149
    .restart local p2    # "source":Ljava/lang/Object;
    :cond_1
    array-length v1, p4

    if-lez v1, :cond_2

    .line 151
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "content":Ljava/lang/String;
    :goto_1
    instance-of v1, p2, Lcom/ea/nimble/LogSource;

    if-eqz v1, :cond_3

    .line 160
    check-cast p2, Lcom/ea/nimble/LogSource;

    .end local p2    # "source":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/ea/nimble/LogSource;->getLogSourceTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/nimble/LogImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "content":Ljava/lang/String;
    .restart local p2    # "source":Ljava/lang/Object;
    :cond_2
    move-object v0, p3

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1

    .line 162
    :cond_3
    iget v1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_4

    if-eqz p2, :cond_4

    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/nimble/LogImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/nimble/LogImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    iget v1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-lt p1, v1, :cond_0

    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    array-length v1, p4

    if-lez v1, :cond_2

    .line 183
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "content":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/ea/nimble/LogImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "content":Ljava/lang/String;
    :cond_2
    move-object v0, p3

    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_1
.end method
