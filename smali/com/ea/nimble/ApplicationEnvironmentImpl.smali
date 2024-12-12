.class public Lcom/ea/nimble/ApplicationEnvironmentImpl;
.super Lcom/ea/nimble/Component;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationEnvironment;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final MILLIS_IN_AN_HOUR:I = 0x36ee80

.field private static final NIMBLE_APPLICATIONENVIRONMENT_PERSISTENCE_GAME_SPECIFIED_ID:Ljava/lang/String; = "nimble_applicationenvironment_game_specified_id"

.field private static final PERSISTENCE_AGE_REQUIREMENTS:Ljava/lang/String; = "ageRequirement"

.field private static final PERSISTENCE_LANGUAGE:Ljava/lang/String; = "language"

.field private static final PERSISTENCE_TIME_RETRIEVED:Ljava/lang/String; = "timeRetrieved"

.field private static final SYNERGY_API_GET_AGE_REQUIREMENTS:Ljava/lang/String; = "/rest/agerequirements/ip"

.field private static isMainApplicationRunning:Z

.field private static s_currentActivity:Landroid/app/Activity;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_gameSpecifiedPlayerId:Ljava/lang/String;

.field private m_googleAdvertiserInfoLoaded:Z

.field private m_googleAdvertisingId:Ljava/lang/String;

.field private m_googleLimitAdTrackingEnabled:Z

.field private m_language:Ljava/lang/String;

.field private m_packageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 9
    .param p1, "core"    # Lcom/ea/nimble/BaseCore;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 55
    const-string v5, ""

    iput-object v5, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertisingId:Ljava/lang/String;

    .line 56
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleLimitAdTrackingEnabled:Z

    .line 57
    iput-boolean v4, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z

    .line 62
    sget-object v5, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 65
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Cannot create a ApplicationEnvironment without a valid current activity"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 69
    sget-object v5, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    .line 70
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDocumentPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "docDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getTempPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, "tempDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 77
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "APP_ENV: Cannot create necessary folder"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 80
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 81
    .local v2, "files":[Ljava/io/File;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v1, v2, v4

    .line 84
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 85
    const-string v6, "Nimble"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APP_ENV: Delete temp file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    return-void
.end method

.method static synthetic access$002(Lcom/ea/nimble/ApplicationEnvironmentImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/ApplicationEnvironmentImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertisingId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/ApplicationEnvironmentImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleLimitAdTrackingEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/ea/nimble/ApplicationEnvironmentImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/ApplicationEnvironmentImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z

    return p1
.end method

.method private static commandExists(Ljava/lang/String;)Z
    .locals 8
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 524
    const-string v5, "PATH"

    invoke-static {v5}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "envPath":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return v4

    .line 529
    :cond_1
    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "paths":[Ljava/lang/String;
    array-length v6, v3

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v2, v3, v5

    .line 532
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .local v1, "fullPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 535
    const/4 v4, 0x1

    goto :goto_0

    .line 530
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 631
    sget-object v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMainApplicationRunning()Z
    .locals 1

    .prologue
    .line 642
    sget-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning:Z

    return v0
.end method

.method private declared-synchronized retrieveGoogleAdvertiserId()V
    .locals 5

    .prologue
    .line 698
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z

    .line 705
    new-instance v0, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;

    invoke-direct {v0, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$3;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    .line 771
    .local v0, "advertisingIdRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    .local v1, "advertisingIdThread":Ljava/lang/Thread;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/VerifyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :goto_0
    monitor-exit p0

    return-void

    .line 779
    :catch_0
    move-exception v2

    .line 781
    .local v2, "t":Ljava/lang/VerifyError;
    :try_start_2
    const-string v3, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 698
    .end local v0    # "advertisingIdRunnable":Ljava/lang/Runnable;
    .end local v1    # "advertisingIdThread":Ljava/lang/Thread;
    .end local v2    # "t":Ljava/lang/VerifyError;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 785
    .restart local v0    # "advertisingIdRunnable":Ljava/lang/Runnable;
    .restart local v1    # "advertisingIdThread":Ljava/lang/Thread;
    :catch_1
    move-exception v2

    .line 787
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private setApplicationLanguageCode(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "languageCode"    # Ljava/lang/String;
    .param p2, "deviceFlag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->validatedLanguageCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "validatedLanguageCode":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    if-eqz p2, :cond_3

    .line 295
    const-string v2, "Setting the same language %s, skipping assignment"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    :cond_2
    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    .line 302
    const-string v2, "Successfully set language to %s."

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    const-string v2, "nimble.notification.LanguageChanged"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 305
    :cond_3
    if-nez p2, :cond_0

    .line 308
    const-string v2, "com.ea.nimble.applicationEnvironment"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 309
    .local v0, "aePersistence":Lcom/ea/nimble/Persistence;
    if-eqz v0, :cond_4

    .line 311
    const-string v2, "Saving language data to persistence."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const-string v2, "language"

    iget-object v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 316
    :cond_4
    const-string v2, "Could not get application environment persistence object to save to."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 636
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning:Z

    .line 637
    sput-object p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    .line 638
    return-void
.end method

.method private validatedLanguageCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "languageCode"    # Ljava/lang/String;
    .param p2, "deviceFlag"    # Z

    .prologue
    const/4 v8, 0x0

    .line 239
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    const-string v6, "AppEnv: Language parameter is null or empty; keeping language at previous value."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v6, 0x0

    .line 272
    :goto_0
    return-object v6

    .line 244
    :cond_0
    const/16 v6, 0x5f

    const/16 v7, 0x2d

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 245
    const-string v6, "^([a-z]{2,3})?(-([A-Z][a-z]{3}))?(-([A-Z]{2}))?(-.*)*$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 246
    .local v3, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 247
    .local v2, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 250
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    invoke-static {}, Ljava/util/Locale;->getISOLanguages()[Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "languages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown language code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in language code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; backend system will likely treat it as en-US."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .end local v1    # "languages":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, "region":Ljava/lang/String;
    invoke-static {v4}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 263
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "regions":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown region code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in language code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; backend system will likely treat it as en-US."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v5    # "regions":[Ljava/lang/String;
    :cond_2
    move-object v6, p1

    .line 269
    goto/16 :goto_0

    .line 271
    .end local v0    # "language":Ljava/lang/String;
    .end local v4    # "region":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed language code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be validated; backend system will likely treat it as en-US."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, p1

    .line 272
    goto/16 :goto_0
.end method


# virtual methods
.method public getAgeCompliance()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 543
    const-string v4, "com.ea.nimble.applicationEnvironment"

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->CACHE:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v4, v5}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 544
    .local v0, "aePersistence":Lcom/ea/nimble/Persistence;
    const-string v4, "timeRetrieved"

    invoke-virtual {v0, v4}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 545
    .local v2, "lastRetrieve":Ljava/io/Serializable;
    if-eqz v2, :cond_1

    .line 547
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "lastRetrieve":Ljava/io/Serializable;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    const v5, 0x36ee80

    div-int v1, v4, v5

    .line 548
    .local v1, "hoursSinceLastRetrieve":I
    const/16 v4, 0x18

    if-le v1, v4, :cond_0

    .line 550
    const-string v4, "getAgeCompliance- Stored value is older than 24 hours. Call refreshAgeCompliance to retrieve minAgeCompliance"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v10, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    .end local v1    # "hoursSinceLastRetrieve":I
    :goto_0
    return v3

    .line 553
    .restart local v1    # "hoursSinceLastRetrieve":I
    :cond_0
    const-string v3, "ageRequirement"

    invoke-virtual {v0, v3}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 557
    .end local v1    # "hoursSinceLastRetrieve":I
    .restart local v2    # "lastRetrieve":Ljava/io/Serializable;
    :cond_1
    const-string v4, "getAgeCompliance- No stored value in persistance. Call refreshAgeCompliance to retrieve minAgeCompliance."

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v10, v5, v8

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getApplicationBundleId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    .line 391
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    return-object v1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 446
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    .line 450
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-object v2

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Package name %s not found"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 349
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "basePath":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Nimble"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v3}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 357
    .end local v0    # "basePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "basePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 372
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 374
    const/4 v1, 0x0

    .line 376
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "com.ea.nimble.applicationEnvironment"

    return-object v0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCodename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceFingerprint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 331
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "basePath":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Nimble"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v3}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ea/nimble/NimbleConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 339
    .end local v0    # "basePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "basePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public getGameSpecifiedPlayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_gameSpecifiedPlayerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAdvertisingId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 654
    .local v2, "start":J
    :goto_0
    iget-boolean v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z

    if-nez v1, :cond_1

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1388

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertiserInfoLoaded:Z

    goto :goto_0

    .line 666
    :cond_0
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Blocking call to getGoogleAdvertisingId was interrupted prematurely."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleAdvertisingId:Ljava/lang/String;

    return-object v1
.end method

.method public getGoogleEmail()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 472
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 474
    .local v2, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.google"

    invoke-virtual {v2, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 475
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v5, v1

    if-lez v5, :cond_0

    .line 478
    aget-object v4, v1, v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 492
    :goto_0
    return-object v4

    .line 482
    :cond_0
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 483
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 484
    array-length v5, v1

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v0, v1, v4

    .line 486
    .local v0, "account":Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 488
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 484
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getIadAttribution()Z
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "AppEnv"

    return-object v0
.end method

.method public getMACAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 457
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 466
    :goto_0
    return-object v2

    .line 461
    :cond_0
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 462
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 464
    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortApplicationLanguageCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 226
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 229
    .local v0, "firstHyphen":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 234
    .end local v0    # "firstHyphen":I
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAppCracked()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 499
    const-string v0, "FraudDetection"

    const-string v1, "Returning false for isAppCracked() since it hasn\'t been implemented yet"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    return v3
.end method

.method public isDeviceRooted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 506
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 507
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 519
    :cond_0
    :goto_0
    return v1

    .line 511
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    const-string v2, "su"

    invoke-static {v2}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->commandExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 519
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLimitAdTrackingEnabled()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_googleLimitAdTrackingEnabled:Z

    return v0
.end method

.method public refreshAgeCompliance()V
    .locals 8

    .prologue
    .line 564
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    .line 565
    .local v1, "network":Lcom/ea/nimble/INetwork;
    invoke-interface {v1}, Lcom/ea/nimble/INetwork;->getStatus()Lcom/ea/nimble/Network$Status;

    move-result-object v6

    sget-object v7, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    if-eq v6, v7, :cond_0

    .line 567
    new-instance v2, Lcom/ea/nimble/Error;

    sget-object v6, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    const-string v7, "No network connection, Min Age cannot update."

    invoke-direct {v2, v6, v7}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;)V

    .line 568
    .local v2, "networkError":Lcom/ea/nimble/Error;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 569
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string v6, "result"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v6, "error"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v6, "nimble.notification.age_compliance_refreshed"

    invoke-static {v6, v5}, Lcom/ea/nimble/Utility;->sendBroadcastSerializable(Ljava/lang/String;Ljava/util/Map;)V

    .line 625
    .end local v2    # "networkError":Lcom/ea/nimble/Error;
    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v3, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$1;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    .line 583
    .local v3, "prepareRequestCallback":Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;
    new-instance v0, Lcom/ea/nimble/ApplicationEnvironmentImpl$2;

    invoke-direct {v0, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl$2;-><init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;)V

    .line 623
    .local v0, "completionCallback":Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    new-instance v4, Lcom/ea/nimble/SynergyRequest;

    const-string v6, "/rest/agerequirements/ip"

    sget-object v7, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    invoke-direct {v4, v6, v7, v3}, Lcom/ea/nimble/SynergyRequest;-><init>(Ljava/lang/String;Lcom/ea/nimble/IHttpRequest$Method;Lcom/ea/nimble/SynergyRequest$SynergyRequestPreparingCallback;)V

    .line 624
    .local v4, "request":Lcom/ea/nimble/SynergyRequest;
    invoke-static {}, Lcom/ea/nimble/SynergyNetwork;->getComponent()Lcom/ea/nimble/ISynergyNetwork;

    move-result-object v6

    invoke-interface {v6, v4, v0}, Lcom/ea/nimble/ISynergyNetwork;->sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V

    goto :goto_0
.end method

.method protected restore()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 152
    const-string v2, "com.ea.nimble.applicationEnvironment"

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v2, v3}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 153
    .local v0, "aePersistence":Lcom/ea/nimble/Persistence;
    if-nez v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    .line 157
    const-string v2, "ApplicationEnvironment"

    const-string v3, "Persistence is null - Couldn\'t read Game Specified Player ID or Language from Persistence"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_gameSpecifiedPlayerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    const-string v2, "ApplicationEnvironment"

    const-string v3, "Current game specified player ID is empty, reload from persistence"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string v2, "nimble_applicationenvironment_game_specified_id"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_gameSpecifiedPlayerId:Ljava/lang/String;

    .line 168
    :cond_1
    const-string v2, "language"

    invoke-virtual {v0, v2}, Lcom/ea/nimble/Persistence;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "persistenceLanguage":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    .line 172
    const-string v2, "Restored language %s from persistence."

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_language:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 177
    :cond_2
    const-string v2, "Unable to restore language from persistence. Setting language to device language."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v6}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveGoogleAdvertiserId()V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "t":Ljava/lang/VerifyError;
    const-string v1, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    .end local v0    # "t":Ljava/lang/VerifyError;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setApplicationBundleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_packageId:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public setApplicationLanguageCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageCode"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setApplicationLanguageCode(Ljava/lang/String;Z)V

    .line 279
    return-void
.end method

.method public setGameSpecifiedPlayerId(Ljava/lang/String;)V
    .locals 4
    .param p1, "specifiedPlayerId"    # Ljava/lang/String;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_gameSpecifiedPlayerId:Ljava/lang/String;

    .line 827
    const-string v1, "com.ea.nimble.applicationEnvironment"

    sget-object v2, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    .line 828
    invoke-static {v1, v2}, Lcom/ea/nimble/PersistenceService;->getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object v0

    .line 830
    .local v0, "persistence":Lcom/ea/nimble/Persistence;
    if-nez v0, :cond_0

    .line 832
    const-string v1, "ApplicationEnvironment"

    const-string v2, "Persistence is null - Couldn\'t save Game Specified Player ID to Persistence"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGWS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    :goto_0
    return-void

    .line 836
    :cond_0
    const-string v1, "nimble_applicationenvironment_game_specified_id"

    iget-object v2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_gameSpecifiedPlayerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/Persistence;->setValue(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0
.end method

.method protected setup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    sget-object v1, Lcom/ea/nimble/ApplicationEnvironmentImpl;->s_currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->retrieveGoogleAdvertiserId()V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "t":Ljava/lang/VerifyError;
    const-string v1, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    .end local v0    # "t":Ljava/lang/VerifyError;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "APP_ENV: Cannot get Google Advertising ID because this device is not supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected teardown()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl;->m_context:Landroid/content/Context;

    .line 187
    return-void
.end method
