.class public Lcom/popcap/pvz_row/DownloaderServiceMarshaller;
.super Ljava/lang/Object;
.source "DownloaderServiceMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;,
        Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Proxy;
    }
.end annotation


# static fields
.field public static final MSG_REQUEST_ABORT_DOWNLOAD:I = 0x1

.field public static final MSG_REQUEST_CLIENT_UPDATE:I = 0x6

.field public static final MSG_REQUEST_CONTINUE_DOWNLOAD:I = 0x4

.field public static final MSG_REQUEST_DOWNLOAD_STATE:I = 0x5

.field public static final MSG_REQUEST_PAUSE_DOWNLOAD:I = 0x2

.field public static final MSG_SET_DOWNLOAD_FLAGS:I = 0x3

.field public static final PARAMS_FLAGS:Ljava/lang/String; = "flags"

.field public static final PARAM_MESSENGER:Ljava/lang/String; = "EMH"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static CreateProxy(Landroid/os/Messenger;)Lcom/popcap/pvz_row/IDownloaderService;
    .locals 1
    .param p0, "msg"    # Landroid/os/Messenger;

    .prologue
    .line 165
    new-instance v0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Proxy;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Proxy;-><init>(Landroid/os/Messenger;)V

    return-object v0
.end method

.method public static CreateStub(Lcom/popcap/pvz_row/IDownloaderService;)Lcom/popcap/pvz_row/IStub;
    .locals 1
    .param p0, "itf"    # Lcom/popcap/pvz_row/IDownloaderService;

    .prologue
    .line 178
    new-instance v0, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;

    invoke-direct {v0, p0}, Lcom/popcap/pvz_row/DownloaderServiceMarshaller$Stub;-><init>(Lcom/popcap/pvz_row/IDownloaderService;)V

    return-object v0
.end method
