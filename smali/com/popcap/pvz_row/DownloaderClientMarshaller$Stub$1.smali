.class Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;
.super Landroid/os/Handler;
.source "DownloaderClientMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "bun":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-static {v2}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;->access$000(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-static {v2}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;->access$000(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/popcap/pvz_row/DownloadProgressInfo;

    .line 131
    .local v1, "dpi":Lcom/popcap/pvz_row/DownloadProgressInfo;
    iget-object v2, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-static {v2}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;->access$100(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)Lcom/popcap/pvz_row/IDownloaderClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/popcap/pvz_row/IDownloaderClient;->onDownloadProgress(Lcom/popcap/pvz_row/DownloadProgressInfo;)V

    goto :goto_0

    .line 135
    .end local v0    # "bun":Landroid/os/Bundle;
    .end local v1    # "dpi":Lcom/popcap/pvz_row/DownloadProgressInfo;
    :pswitch_1
    iget-object v2, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-static {v2}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;->access$100(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)Lcom/popcap/pvz_row/IDownloaderClient;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "newState"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/popcap/pvz_row/IDownloaderClient;->onDownloadStateChanged(I)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v2, p0, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub$1;->this$0:Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;

    invoke-static {v2}, Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;->access$100(Lcom/popcap/pvz_row/DownloaderClientMarshaller$Stub;)Lcom/popcap/pvz_row/IDownloaderClient;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "EMH"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-interface {v3, v2}, Lcom/popcap/pvz_row/IDownloaderClient;->onServiceConnected(Landroid/os/Messenger;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
