.class public Lcom/chillingo/libterms/config/SharedData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/chillingo/libterms/config/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chillingo/libterms/config/SharedData;-><init>(Landroid/content/Context;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useTestFile"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/chillingo/libterms/config/SharedData;->a:Landroid/content/Context;

    .line 34
    iput-boolean p2, p0, Lcom/chillingo/libterms/config/SharedData;->b:Z

    .line 35
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/config/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 51
    const-class v3, Lcom/chillingo/libterms/config/SharedData;

    monitor-enter v3

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/config/a;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 66
    if-eqz v2, :cond_0

    .line 68
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit v3

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 66
    :goto_1
    if-eqz v0, :cond_2

    .line 68
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 61
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 62
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 66
    if-eqz v2, :cond_2

    .line 68
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 69
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 63
    :catch_4
    move-exception v0

    move-object v2, v1

    .line 64
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 66
    if-eqz v2, :cond_2

    .line 68
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 69
    :catch_5
    move-exception v0

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_1

    .line 68
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 71
    :cond_1
    :goto_5
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 51
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 69
    :catch_6
    move-exception v1

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_5

    .line 66
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 63
    :catch_8
    move-exception v0

    goto :goto_3

    .line 61
    :catch_9
    move-exception v0

    goto :goto_2

    .line 59
    :catch_a
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/chillingo/libterms/config/SharedData;->b:Z

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chillingo-SharedData-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->c:Ljava/lang/String;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->c:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Chillingo-SharedData"

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/chillingo/libterms/config/a;)V
    .locals 4

    .prologue
    .line 79
    const-class v3, Lcom/chillingo/libterms/config/SharedData;

    monitor-enter v3

    const/4 v2, 0x0

    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 90
    if-eqz v1, :cond_0

    .line 92
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 87
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 88
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    if-eqz v1, :cond_0

    .line 92
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    .line 92
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    :cond_1
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    .line 93
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 90
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 87
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getAgeGateRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAgeOfUserOnAccept()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->e()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCanPassUnderAge()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->j()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateLastCheckedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->g()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHasAcceptedOnFirstRun()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLastTermsConfig()Lcom/chillingo/libterms/model/TermsConfig;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->f()Lcom/chillingo/libterms/model/TermsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMillisSinceLastCheckedDate()J
    .locals 4

    .prologue
    .line 182
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->g()Ljava/util/Date;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    const-wide/16 v0, -0x1

    .line 188
    :goto_0
    return-wide v0

    .line 187
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 188
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public getPreviousTermsComplianceLevel()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->k()Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    move-result-object v0

    return-object v0
.end method

.method public getReacceptIsPending()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePackageNameOrDefault()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTermAcceptanceRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->h()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVersionUserAccepted()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0}, Lcom/chillingo/libterms/config/a;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public loadStoredConfig()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/chillingo/libterms/config/SharedData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/libterms/config/SharedData;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/chillingo/libterms/config/a;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/chillingo/libterms/config/a;

    invoke-direct {v0}, Lcom/chillingo/libterms/config/a;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    .line 107
    invoke-virtual {p0}, Lcom/chillingo/libterms/config/SharedData;->setToDefaults()V

    goto :goto_0
.end method

.method public saveStoredConfig()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/chillingo/libterms/config/SharedData;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-static {v0, v1, v2}, Lcom/chillingo/libterms/config/SharedData;->a(Landroid/content/Context;Ljava/lang/String;Lcom/chillingo/libterms/config/a;)V

    goto :goto_0
.end method

.method public setAgeGateRequired(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "ageGateRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->d(Ljava/lang/Boolean;)V

    .line 214
    return-void
.end method

.method public setAgeOfUserOnAccept(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "ageOfUserOnAccept"    # Ljava/lang/Integer;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Integer;)V

    .line 167
    return-void
.end method

.method public setCanPassUnderAge(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "canPassUnderAge"    # Ljava/lang/Boolean;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->e(Ljava/lang/Boolean;)V

    .line 222
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setDateLastCheckedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "dateLastCheckedDate"    # Ljava/util/Date;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/util/Date;)V

    .line 198
    return-void
.end method

.method public setHasAcceptedOnFirstRun(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "hasAcceptedOnFirstRun"    # Ljava/lang/Boolean;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Boolean;)V

    .line 151
    return-void
.end method

.method public setLastTermsConfig(Lcom/chillingo/libterms/model/TermsConfig;)V
    .locals 1
    .param p1, "lastTermsConfig"    # Lcom/chillingo/libterms/model/TermsConfig;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 175
    return-void
.end method

.method public setPreviousTermsComplianceLevel(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V
    .locals 1
    .param p1, "previousTermsComplianceLevel"    # Lcom/chillingo/libterms/Terms$TermsComplianceLevel;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/Terms$TermsComplianceLevel;)V

    .line 230
    return-void
.end method

.method public setReacceptIsPending(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "reacceptIsPending"    # Ljava/lang/Boolean;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Boolean;)V

    .line 159
    return-void
.end method

.method public setResourcePackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourcePackageName"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setTermAcceptanceRequired(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "termAcceptanceRequired"    # Ljava/lang/Boolean;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->c(Ljava/lang/Boolean;)V

    .line 206
    return-void
.end method

.method public setToDefaults()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/chillingo/libterms/config/a;

    invoke-direct {v0}, Lcom/chillingo/libterms/config/a;-><init>()V

    iput-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    .line 121
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, v3}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Integer;)V

    .line 123
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Boolean;)V

    .line 124
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Boolean;)V

    .line 125
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/libterms/config/a;->b(Ljava/lang/Integer;)V

    .line 126
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, v3}, Lcom/chillingo/libterms/config/a;->a(Lcom/chillingo/libterms/model/TermsConfig;)V

    .line 127
    return-void
.end method

.method public setVersionUserAccepted(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentVersion"    # Ljava/lang/Integer;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/chillingo/libterms/config/SharedData;->d:Lcom/chillingo/libterms/config/a;

    invoke-virtual {v0, p1}, Lcom/chillingo/libterms/config/a;->a(Ljava/lang/Integer;)V

    .line 143
    return-void
.end method
