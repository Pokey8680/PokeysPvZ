.class public Lcom/popcap/pvz_row/DownloaderClientMarshaller;
.super Ljava/lang/Object;
.source "DownloaderClientMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;,
        Lcom/popcap/pvz_row/DownloaderClientMarshaller$Proxy;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_REQUIRED:I = 0x2

.field public static final LVL_CHECK_REQUIRED:I = 0x1

.field public static final MSG_ONDOWNLOADPROGRESS:I = 0xb

.field public static final MSG_ONDOWNLOADSTATE_CHANGED:I = 0xa

.field public static final MSG_ONSERVICECONNECTED:I = 0xc

.field public static final NO_DOWNLOAD_REQUIRED:I = 0x0

.field public static final PARAM_MESSENGER:Ljava/lang/String; = "EMH"

.field public static final PARAM_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final PARAM_PROGRESS:Ljava/lang/String; = "progress"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static CreateProxy(Landroid/os/Messenger;)Lcom/popcap/pvz_row/IDownloaderClient;
    .locals 1
    .param p0, "msg"    # Landroid/os/Messenger;

    .prologue
    .line 209
    new-instance v0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Proxy;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Proxy;-><init>(Landroid/os/Messenger;)V

    return-object v0
.end method

.method public static CreateStub(Lcom/popcap/pvz_row/IDownloaderClient;Ljava/lang/Class;)Lcom/popcap/pvz_row/IStub;
    .locals 1
    .param p0, "itf"    # Lcom/popcap/pvz_row/IDownloaderClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/popcap/pvz_row/IDownloaderClient;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/popcap/pvz_row/IStub;"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "downloaderService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-direct {v0, p0, p1}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;-><init>(Lcom/popcap/pvz_row/IDownloaderClient;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationClient"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/popcap/pvz_row/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public static startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notificationClient"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/popcap/pvz_row/impl/DownloaderService;->startDownloadServiceIfRequired(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)I

    move-result v0

    return v0
.end method
