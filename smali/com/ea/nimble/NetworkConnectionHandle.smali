.class public interface abstract Lcom/ea/nimble/NetworkConnectionHandle;
.super Ljava/lang/Object;
.source "NetworkConnectionHandle.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getCompletionCallback()Lcom/ea/nimble/NetworkConnectionCallback;
.end method

.method public abstract getHeaderCallback()Lcom/ea/nimble/NetworkConnectionCallback;
.end method

.method public abstract getProgressCallback()Lcom/ea/nimble/NetworkConnectionCallback;
.end method

.method public abstract getRequest()Lcom/ea/nimble/IHttpRequest;
.end method

.method public abstract getResponse()Lcom/ea/nimble/IHttpResponse;
.end method

.method public abstract setCompletionCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
.end method

.method public abstract setHeaderCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
.end method

.method public abstract setProgressCallback(Lcom/ea/nimble/NetworkConnectionCallback;)V
.end method

.method public abstract waitOn()V
.end method
