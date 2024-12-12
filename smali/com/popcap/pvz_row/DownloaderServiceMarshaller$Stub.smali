.class Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"

# interfaces
.implements Lcom/popcap/pvz_row/IStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/DownloaderServiceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Stub"
.end annotation


# instance fields
.field private mItf:Lcom/popcap/pvz_row/IDownloaderService;

.field final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/popcap/pvz_row/IDownloaderService;)V
    .locals 2
    .param p1, "itf"    # Lcom/popcap/pvz_row/IDownloaderService;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;->mItf:Lcom/popcap/pvz_row/IDownloaderService;

    .line 111
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub$1;

    invoke-direct {v1, p0}, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub$1;-><init>(Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    .line 139
    iput-object p1, p0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;->mItf:Lcom/popcap/pvz_row/IDownloaderService;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;)Lcom/popcap/pvz_row/IDownloaderService;
    .locals 1
    .param p0, "x0"    # Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;->mItf:Lcom/popcap/pvz_row/IDownloaderService;

    return-object v0
.end method


# virtual methods
.method public connect(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 150
    return-void
.end method

.method public disconnect(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 155
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
