.class public Lcom/ea/EAMIO/StorageDirectory;
.super Ljava/lang/Object;
.source "StorageDirectory.java"


# static fields
.field public static sActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetInternalStorageDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ea/EAMIO/StorageDirectory;->sActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPrimaryExternalStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/ea/EAMIO/StorageDirectory;->sActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPrimaryExternalStorageDirectoryRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPrimaryExternalStorageState()I
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x2

    .line 68
    :goto_0
    return v1

    .line 62
    :cond_0
    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const/4 v1, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static Shutdown()V
    .locals 0

    .prologue
    .line 22
    invoke-static {}, Lcom/ea/EAMIO/StorageDirectory;->ShutdownNativeImpl()V

    .line 23
    return-void
.end method

.method private static native ShutdownNativeImpl()V
.end method

.method public static Startup(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    sput-object p0, Lcom/ea/EAMIO/StorageDirectory;->sActivity:Landroid/app/Activity;

    .line 16
    invoke-static {}, Lcom/ea/EAMIO/StorageDirectory;->StartupNativeImpl()V

    .line 17
    return-void
.end method

.method private static native StartupNativeImpl()V
.end method
