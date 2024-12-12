.class Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader$1;
.super Ljava/lang/Object;
.source "XPromoContentManager.java"

# interfaces
.implements Lcom/ea/nimble/NetworkConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;->loadFromNetwork(Ljava/net/URL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;


# direct methods
.method constructor <init>(Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader$1;->this$0:Lcom/popcap/pvz_row/XPromoContentManager$ContentDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 3
    .param p1, "handle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 74
    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IHttpResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/popcap/pvz_row/XPromoContentManager;->getInstance()Lcom/popcap/pvz_row/XPromoContentManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getRequest()Lcom/ea/nimble/IHttpRequest;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IHttpRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IHttpResponse;->getDataStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/popcap/pvz_row/XPromoContentManager;->access$000(Lcom/popcap/pvz_row/XPromoContentManager;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 82
    :cond_0
    return-void
.end method
