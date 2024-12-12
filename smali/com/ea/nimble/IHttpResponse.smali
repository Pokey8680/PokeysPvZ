.class public interface abstract Lcom/ea/nimble/IHttpResponse;
.super Ljava/lang/Object;
.source "IHttpResponse.java"


# virtual methods
.method public abstract getDataStream()Ljava/io/InputStream;
.end method

.method public abstract getDownloadedContentLength()J
.end method

.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getExpectedContentLength()J
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastModified()Ljava/util/Date;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getUrl()Ljava/net/URL;
.end method

.method public abstract isCompleted()Z
.end method
