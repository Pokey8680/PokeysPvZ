.class Lorg/restlet/engine/Engine$2$1$1;
.super Ljava/net/URLConnection;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/engine/Engine$2$1;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/restlet/engine/Engine$2$1;


# direct methods
.method constructor <init>(Lorg/restlet/engine/Engine$2$1;Ljava/net/URL;)V
    .locals 0
    .param p2, "x0"    # Ljava/net/URL;

    .prologue
    .line 998
    iput-object p1, p0, Lorg/restlet/engine/Engine$2$1$1;->this$2:Lorg/restlet/engine/Engine$2$1;

    invoke-direct {p0, p2}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v2, 0x0

    .line 1010
    .local v2, "result":Ljava/io/InputStream;
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v0

    .line 1013
    .local v0, "context":Lorg/restlet/Context;
    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v3

    new-instance v4, Lorg/restlet/Request;

    sget-object v5, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    iget-object v6, p0, Lorg/restlet/engine/Engine$2$1$1;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v1

    .line 1020
    .local v1, "response":Lorg/restlet/Response;
    invoke-virtual {v1}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1022
    invoke-virtual {v1}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v3

    invoke-virtual {v3}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 1027
    .end local v1    # "response":Lorg/restlet/Response;
    :cond_0
    return-object v2
.end method
