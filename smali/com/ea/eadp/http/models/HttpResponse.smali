.class public interface abstract Lcom/ea/eadp/http/models/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# virtual methods
.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getCode()I
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract setBody(Ljava/lang/String;)V
.end method

.method public abstract setCode(I)V
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setMessage(Ljava/lang/String;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
