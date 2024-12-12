.class public interface abstract Lorg/restlet/engine/connector/InboundRequest;
.super Ljava/lang/Object;
.source "InboundRequest.java"


# virtual methods
.method public abstract getConnection()Lorg/restlet/engine/connector/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/engine/connector/Connection",
            "<",
            "Lorg/restlet/Server;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setHeaders(Lorg/restlet/util/Series;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation
.end method
