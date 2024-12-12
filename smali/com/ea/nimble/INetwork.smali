.class public interface abstract Lcom/ea/nimble/INetwork;
.super Ljava/lang/Object;
.source "INetwork.java"


# virtual methods
.method public abstract forceRedetectNetworkStatus()V
.end method

.method public abstract getStatus()Lcom/ea/nimble/Network$Status;
.end method

.method public abstract isNetworkWifi()Z
.end method

.method public abstract sendDeleteRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendGetRequest(Ljava/net/URL;Ljava/util/HashMap;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendPostRequest(Ljava/net/URL;Ljava/util/HashMap;[BLcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Lcom/ea/nimble/NetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/NetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;)Lcom/ea/nimble/NetworkConnectionHandle;
.end method

.method public abstract sendRequest(Lcom/ea/nimble/HttpRequest;Lcom/ea/nimble/NetworkConnectionCallback;Lcom/ea/nimble/IOperationalTelemetryDispatch;)Lcom/ea/nimble/NetworkConnectionHandle;
.end method
