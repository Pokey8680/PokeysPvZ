.class public Lcom/popcap/pvz_row/PvZDownloaderService;
.super Lcom/popcap/pvz_row/impl/DownloaderService;
.source "PvZDownloaderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/popcap/pvz_row/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/popcap/pvz_row/PvZAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/popcap/pvz_row/Constants;->getMarketKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/popcap/pvz_row/Constants;->SALT:[B

    return-object v0
.end method
