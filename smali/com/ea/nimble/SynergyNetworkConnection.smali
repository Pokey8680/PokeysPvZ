.class Lcom/ea/nimble/SynergyNetworkConnection;
.super Ljava/lang/Object;
.source "SynergyNetworkConnection.java"

# interfaces
.implements Lcom/ea/nimble/SynergyNetworkConnectionHandle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;
    }
.end annotation


# instance fields
.field private m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

.field private m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

.field private m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

.field private m_request:Lcom/ea/nimble/SynergyRequest;

.field private m_response:Lcom/ea/nimble/SynergyResponse;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 2
    .param p1, "request"    # Lcom/ea/nimble/SynergyRequest;
    .param p2, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 13
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    .line 14
    new-instance v0, Lcom/ea/nimble/SynergyResponse;

    invoke-direct {v0}, Lcom/ea/nimble/SynergyResponse;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    .line 15
    new-instance v0, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    invoke-direct {v0, p0, v1}, Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/SynergyNetworkConnection$1;)V

    iput-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    .line 16
    iput-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 17
    iput-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 18
    iput-object p2, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 19
    return-void
.end method

.method static synthetic access$100(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ea/nimble/SynergyNetworkConnection;Lcom/ea/nimble/NetworkConnectionHandle;)Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;
    .param p1, "x1"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 8
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ea/nimble/SynergyNetworkConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->parseDataFromNetworkHandle()V

    return-void
.end method

.method static synthetic access$300(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ea/nimble/SynergyNetworkConnection;)Lcom/ea/nimble/SynergyResponse;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/SynergyNetworkConnection;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    return-object v0
.end method

.method private parseDataFromNetworkHandle()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v1}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    .line 205
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    invoke-virtual {v0}, Lcom/ea/nimble/SynergyResponse;->parseData()V

    .line 207
    :cond_0
    return-void
.end method

.method private updateNetworkHeaderHandler()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    new-instance v1, Lcom/ea/nimble/SynergyNetworkConnection$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/SynergyNetworkConnection$2;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    goto :goto_0
.end method

.method private updateNetworkProgressHandler()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    .line 198
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    new-instance v1, Lcom/ea/nimble/SynergyNetworkConnection$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/SynergyNetworkConnection$3;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    invoke-interface {v0, v1}, Lcom/ea/nimble/NetworkConnectionHandle;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->cancel()V

    .line 162
    :cond_0
    return-void
.end method

.method public errorPriorToSend(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 70
    new-instance v0, Lcom/ea/nimble/HttpResponse;

    invoke-direct {v0}, Lcom/ea/nimble/HttpResponse;-><init>()V

    .line 71
    .local v0, "httpResponse":Lcom/ea/nimble/HttpResponse;
    iput-object p1, v0, Lcom/ea/nimble/HttpResponse;->error:Ljava/lang/Exception;

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ea/nimble/HttpResponse;->isCompleted:Z

    .line 73
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    iput-object v0, v1, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    .line 74
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    invoke-interface {v1, p0}, Lcom/ea/nimble/SynergyNetworkConnectionCallback;->callback(Lcom/ea/nimble/SynergyNetworkConnectionHandle;)V

    .line 78
    :cond_0
    return-void
.end method

.method public getCompletionCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getHeaderCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getNetworkConnectionHandle()Lcom/ea/nimble/NetworkConnectionHandle;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    return-object v0
.end method

.method public getProgressCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    return-object v0
.end method

.method public getRequest()Lcom/ea/nimble/ISynergyRequest;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    return-object v0
.end method

.method public getResponse()Lcom/ea/nimble/ISynergyResponse;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    return-object v0
.end method

.method send()V
    .locals 5

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    invoke-virtual {v1}, Lcom/ea/nimble/SynergyRequest;->build()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {}, Lcom/ea/nimble/Network;->getComponent()Lcom/ea/nimble/INetwork;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    iget-object v2, v2, Lcom/ea/nimble/SynergyRequest;->httpRequest:Lcom/ea/nimble/HttpRequest;

    new-instance v3, Lcom/ea/nimble/SynergyNetworkConnection$1;

    invoke-direct {v3, p0}, Lcom/ea/nimble/SynergyNetworkConnection$1;-><init>(Lcom/ea/nimble/SynergyNetworkConnection;)V

    iget-object v4, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_otDispatch:Lcom/ea/nimble/SynergyNetworkConnection$SynergyOperationalTelemetryDispatch;

    invoke-interface {v1, v2, v3, v4}, Lcom/ea/nimble/INetwork;->sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 63
    iget-object v1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_response:Lcom/ea/nimble/SynergyResponse;

    iget-object v2, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v2}, Lcom/ea/nimble/NetworkConnectionHandle;->getResponse()Lcom/ea/nimble/IHttpResponse;

    move-result-object v2

    iput-object v2, v1, Lcom/ea/nimble/SynergyResponse;->httpResponse:Lcom/ea/nimble/IHttpResponse;

    .line 64
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkHeaderHandler()V

    .line 65
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkProgressHandler()V

    .line 66
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "error":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/ea/nimble/SynergyNetworkConnection;->errorPriorToSend(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setCompletionCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_completionCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 134
    return-void
.end method

.method public setHeaderCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_headerCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 102
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkHeaderHandler()V

    .line 106
    :cond_0
    return-void
.end method

.method public setNetworkConnectionHandle(Lcom/ea/nimble/NetworkConnectionHandle;)V
    .locals 0
    .param p1, "networkHandle"    # Lcom/ea/nimble/NetworkConnectionHandle;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    .line 144
    return-void
.end method

.method public setProgressCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_progressCallback:Lcom/ea/nimble/SynergyNetworkConnectionCallback;

    .line 118
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/ea/nimble/SynergyNetworkConnection;->updateNetworkProgressHandler()V

    .line 122
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_request:Lcom/ea/nimble/SynergyRequest;

    invoke-virtual {v0, p0}, Lcom/ea/nimble/SynergyRequest;->prepare(Lcom/ea/nimble/SynergyNetworkConnection;)V

    .line 24
    return-void
.end method

.method public waitOn()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/ea/nimble/SynergyNetworkConnection;->m_networkHandle:Lcom/ea/nimble/NetworkConnectionHandle;

    invoke-interface {v0}, Lcom/ea/nimble/NetworkConnectionHandle;->waitOn()V

    .line 153
    :cond_0
    return-void
.end method
