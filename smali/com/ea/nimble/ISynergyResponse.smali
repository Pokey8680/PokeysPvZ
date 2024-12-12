.class public interface abstract Lcom/ea/nimble/ISynergyResponse;
.super Ljava/lang/Object;
.source "ISynergyResponse.java"


# virtual methods
.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getHttpResponse()Lcom/ea/nimble/IHttpResponse;
.end method

.method public abstract getJsonData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCompleted()Z
.end method
