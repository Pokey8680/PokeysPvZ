.class public interface abstract Lcom/ea/nimble/ISynergyNetwork;
.super Ljava/lang/Object;
.source "ISynergyNetwork.java"


# virtual methods
.method public abstract sendGetRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            ")",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ea/nimble/SynergyNetworkConnectionCallback;Ljava/util/Map;)Lcom/ea/nimble/SynergyNetworkConnectionHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ea/nimble/SynergyNetworkConnectionCallback;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ea/nimble/SynergyNetworkConnectionHandle;"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/ea/nimble/SynergyRequest;Lcom/ea/nimble/SynergyNetworkConnectionCallback;)V
.end method
