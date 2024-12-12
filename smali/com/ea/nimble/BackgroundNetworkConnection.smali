.class public Lcom/ea/nimble/BackgroundNetworkConnection;
.super Lcom/ea/nimble/NetworkConnection;
.source "BackgroundNetworkConnection.java"


# direct methods
.method public constructor <init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V
    .locals 0
    .param p1, "manager"    # Lcom/ea/nimble/NetworkImpl;
    .param p2, "request"    # Lcom/ea/nimble/HttpRequest;
    .param p3, "otDispatch"    # Lcom/ea/nimble/IOperationalTelemetryDispatch;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/NetworkConnection;-><init>(Lcom/ea/nimble/NetworkImpl;Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/IOperationalTelemetryDispatch;)V

    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic cancel()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->cancel()V

    return-void
.end method

.method cancelForAppSuspend()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public bridge synthetic getCompletionCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getCompletionCallback()Lcom/ea/nimble/NetworkConnectionCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getHeaderCallback()Lcom/ea/nimble/NetworkConnectionCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getLogSourceTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getProgressCallback()Lcom/ea/nimble/NetworkConnectionCallback;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getProgressCallback()Lcom/ea/nimble/NetworkConnectionCallback;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequest()Lcom/ea/nimble/HttpRequest;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getRequest()Lcom/ea/nimble/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ea/nimble/HttpResponse;
    .locals 1

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->getResponse()Lcom/ea/nimble/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->run()V

    return-void
.end method

.method public bridge synthetic setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/ea/nimble/NetworkConnection;->setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/ea/nimble/NetworkConnection;->setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/ea/nimble/NetworkConnection;->setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V

    return-void
.end method

.method public bridge synthetic waitOn()V
    .locals 0

    .prologue
    .line 3
    invoke-super {p0}, Lcom/ea/nimble/NetworkConnection;->waitOn()V

    return-void
.end method
