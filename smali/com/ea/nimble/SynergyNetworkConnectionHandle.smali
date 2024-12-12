.class public interface abstract Lcom/ea/nimble/SynergyNetworkConnectionHandle;
.super Ljava/lang/Object;
.source "SynergyNetworkConnectionHandle.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getCompletionCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
.end method

.method public abstract getHeaderCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
.end method

.method public abstract getProgressCallback()Lcom/ea/nimble/SynergyNetworkConnectionCallback;
.end method

.method public abstract getRequest()Lcom/ea/nimble/ISynergyRequest;
.end method

.method public abstract getResponse()Lcom/ea/nimble/ISynergyResponse;
.end method

.method public abstract setCompletionCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
.end method

.method public abstract setHeaderCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
.end method

.method public abstract setProgressCallback(Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
.end method

.method public abstract waitOn()V
.end method
