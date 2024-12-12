.class public Lcom/popcap/pvz_row/AndroidTools;
.super Ljava/lang/Object;
.source "AndroidTools.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidTools"

.field static context:Landroid/app/Activity;


# instance fields
.field m_loadingInfo:Ljava/util/Properties;

.field m_loadingInfoStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    .line 22
    iput-object v0, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfoStream:Ljava/io/InputStream;

    .line 26
    sput-object p1, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    .line 27
    return-void
.end method


# virtual methods
.method public GetLoadinginfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "sValue"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Expansion.indicate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "newFileName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "baseFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 106
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Nits:: Folder Created"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new file created :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :goto_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfoStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v0    # "baseFolder":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    iput-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    .line 127
    :try_start_1
    iget-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    iget-object v7, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfoStream:Ljava/io/InputStream;

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 134
    :goto_2
    iget-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    if-nez v6, :cond_3

    .line 136
    const/4 v5, 0x0

    .line 144
    .local v5, "sResult":Ljava/lang/String;
    :goto_3
    if-nez v5, :cond_1

    const-string v5, ""

    .end local v5    # "sResult":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 115
    .restart local v0    # "baseFolder":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :cond_2
    :try_start_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..Exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 118
    .end local v0    # "baseFolder":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v2    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    iget-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    invoke-virtual {v6, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "sResult":Ljava/lang/String;
    goto :goto_3
.end method

.method public getExternalObbDir()Ljava/lang/String;
    .locals 5

    .prologue
    .line 187
    sget-object v3, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 199
    :goto_0
    return-object v1

    .line 190
    :cond_0
    const/4 v1, 0x0

    .line 192
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 193
    .local v0, "extStorage":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/obb/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 194
    .end local v0    # "extStorage":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "............... getExternalObbDir :: "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getExternalStorageDir()Ljava/lang/String;
    .locals 6

    .prologue
    .line 167
    sget-object v3, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 182
    :goto_0
    return-object v1

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 173
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 174
    .local v0, "extStorage":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nits............... getExternalStorageDir :: dir is ............... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v0    # "extStorage":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 179
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "............... getExternalStorageDir :: Error ..............."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getInternalDataDir()Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    sget-object v3, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    if-nez v3, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 162
    :goto_0
    return-object v1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 155
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 156
    .local v0, "intStorage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 157
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jags............... getInternalDataDir path :: ............... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package name :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/popcap/pvz_row/AndroidTools;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "intStorage":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "jags............... getInternalDataDir path :: Error ..............."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeloadedIndicate(Z)V
    .locals 8
    .param p1, "writeFirstTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "............... Writing Loading info ..............."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "baseFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Nits:: Folder Created"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/popcap/pvz_row/AndroidTools;->getExternalStorageDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Expansion.indicate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "newFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new file created :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    :goto_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfoStream:Ljava/io/InputStream;

    .line 57
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    iput-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    .line 58
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    iget-object v6, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfoStream:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 59
    if-nez p1, :cond_2

    .line 61
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "............... Copied = true ..............."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    const-string v6, "Copied"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    :goto_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 70
    .local v3, "fous":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 72
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 73
    const/4 v3, 0x0

    .line 74
    if-nez p1, :cond_3

    .line 76
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    const-string v6, "Copied"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v0    # "baseFolder":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fous":Ljava/io/FileOutputStream;
    .end local v4    # "newFileName":Ljava/lang/String;
    :goto_2
    return-void

    .line 54
    .restart local v0    # "baseFolder":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "newFileName":Ljava/lang/String;
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..Exists"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0    # "baseFolder":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "newFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "baseFolder":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "newFileName":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "............... Copied = false ..............."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    const-string v6, "Copied"

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    .restart local v3    # "fous":Ljava/io/FileOutputStream;
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "............... put Values Copied = false ..............."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    iget-object v5, p0, Lcom/popcap/pvz_row/AndroidTools;->m_loadingInfo:Ljava/util/Properties;

    const-string v6, "Copied"

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
