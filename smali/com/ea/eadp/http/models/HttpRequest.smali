.class public interface abstract Lcom/ea/eadp/http/models/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# virtual methods
.method public abstract delete()Lcom/ea/eadp/http/models/HttpResponse;
.end method

.method public abstract deleteAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
.end method

.method public abstract get()Lcom/ea/eadp/http/models/HttpResponse;
.end method

.method public abstract getAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
.end method

.method public abstract getResource()Ljava/net/URL;
.end method

.method public abstract getValueForHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract post()Lcom/ea/eadp/http/models/HttpResponse;
.end method

.method public abstract postAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
.end method

.method public abstract put()Lcom/ea/eadp/http/models/HttpResponse;
.end method

.method public abstract putAsync(Lcom/ea/eadp/http/models/HttpRequestListener;)V
.end method

.method public abstract setBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
.end method

.method public abstract setBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
.end method

.method public abstract setJsonBody(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
.end method

.method public abstract setJsonBody(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
.end method

.method public abstract setResource(Ljava/net/URL;)Lcom/ea/eadp/http/models/HttpRequest;
.end method
