.class final Lcom/millennialmedia/android/MMConversionTracker;
.super Ljava/lang/Object;
.source "MMConversionTracker.java"


# static fields
.field private static final KEY_REFERRER:Ljava/lang/String; = "installReferrer"

.field private static final TAG:Ljava/lang/String; = "MMConversionTracker"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized trackConversion(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/MMRequest;)V
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/millennialmedia/android/MMRequest;

    .prologue
    .line 36
    const-class v23, Lcom/millennialmedia/android/MMConversionTracker;

    monitor-enter v23

    const-wide/16 v16, 0x0

    .line 40
    .local v16, "installTime":J
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit v23

    return-void

    .line 43
    :cond_1
    :try_start_1
    const-string v3, "MillennialMediaSettings"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 45
    .local v21, "settings":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstLaunch_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 46
    .local v5, "isFirstLaunch":Z
    const-string v3, "installReferrer"

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 48
    .local v20, "referrerString":Ljava/lang/String;
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v8, "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 50
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/millennialmedia/android/MMRequest;->getUrlParams(Ljava/util/Map;)V

    .line 51
    invoke-static {v8}, Lcom/millennialmedia/android/MMRequest;->insertLocation(Ljava/util/Map;)V

    .line 53
    :cond_2
    if-eqz v20, :cond_4

    .line 57
    const-string v3, "&"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "components":[Ljava/lang/String;
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    aget-object v19, v2, v14

    .line 59
    .local v19, "param":Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 60
    .local v22, "subComponents":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    .line 61
    const/4 v3, 0x0

    aget-object v3, v22, v3

    const/4 v4, 0x1

    aget-object v4, v22, v4

    invoke-virtual {v8, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v10    # "components":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v18    # "len$":I
    .end local v19    # "param":Ljava/lang/String;
    .end local v22    # "subComponents":[Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_5

    .line 66
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 67
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstLaunch_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 75
    .local v15, "info":Landroid/content/pm/PackageInfo;
    :try_start_3
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "firstInstallTime"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 76
    .local v13, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v13, v15}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v16

    .line 84
    .end local v13    # "field":Ljava/lang/reflect/Field;
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    const-wide/16 v24, 0x0

    cmp-long v3, v16, v24

    if-lez v3, :cond_6

    .line 85
    :try_start_4
    new-instance v9, Ljava/util/GregorianCalendar;

    invoke-direct {v9}, Ljava/util/GregorianCalendar;-><init>()V

    .line 86
    .local v9, "calendar":Ljava/util/GregorianCalendar;
    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 87
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v16

    .line 91
    .end local v9    # "calendar":Ljava/util/GregorianCalendar;
    :cond_6
    move-wide/from16 v6, v16

    .line 92
    .local v6, "installTimeUTC":J
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/MMSDK;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 93
    const-string v3, "ua"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Android:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v24, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v3, "apid"

    sget-object v4, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    invoke-virtual {v8, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/millennialmedia/android/MMSDK;->insertUrlCommonValues(Landroid/content/Context;Ljava/util/Map;)V

    .line 97
    new-instance v3, Lcom/millennialmedia/android/MMConversionTracker$1;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/millennialmedia/android/MMConversionTracker$1;-><init>(Ljava/lang/String;ZJLjava/util/TreeMap;)V

    invoke-static {v3}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 36
    .end local v5    # "isFirstLaunch":Z
    .end local v6    # "installTimeUTC":J
    .end local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "referrerString":Ljava/lang/String;
    .end local v21    # "settings":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit v23

    throw v3

    .line 77
    .restart local v5    # "isFirstLaunch":Z
    .restart local v8    # "extraParams":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "info":Landroid/content/pm/PackageInfo;
    .restart local v20    # "referrerString":Ljava/lang/String;
    .restart local v21    # "settings":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v11

    .line 78
    .local v11, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "MMConversionTracker"

    const-string v4, "Error with firstInstallTime"

    invoke-static {v3, v4, v11}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 80
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "info":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v11

    .line 81
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v3, "MMConversionTracker"

    const-string v4, "Can\'t find packagename: "

    invoke-static {v3, v4, v11}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 112
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "installTimeUTC":J
    :cond_7
    const-string v3, "MMConversionTracker"

    const-string v4, "No network available for conversion tracking."

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
