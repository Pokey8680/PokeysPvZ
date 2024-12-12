.class public Lcom/ea/eadp/http/services/AndroidHttpService;
.super Ljava/lang/Object;
.source "AndroidHttpService.java"

# interfaces
.implements Lcom/ea/eadp/http/services/HttpService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Lcom/ea/eadp/http/models/HttpRequest;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Lcom/ea/eadp/http/models/AndroidHttpRequest;

    invoke-direct {v0}, Lcom/ea/eadp/http/models/AndroidHttpRequest;-><init>()V

    .line 18
    .local v0, "request":Lcom/ea/eadp/http/models/AndroidHttpRequest;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/eadp/http/models/AndroidHttpRequest;->setResource(Ljava/net/URL;)Lcom/ea/eadp/http/models/AndroidHttpRequest;

    .line 19
    return-object v0
.end method
