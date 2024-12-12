.class public Lcom/ea/eadp/http/models/AndroidHttpResponse;
.super Ljava/lang/Object;
.source "AndroidHttpResponse.java"

# interfaces
.implements Lcom/ea/eadp/http/models/HttpResponse;


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->code:I

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->body:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->code:I

    .line 36
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 65
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->headers:Ljava/util/Map;

    .line 66
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->message:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ea/eadp/http/models/AndroidHttpResponse;->url:Ljava/lang/String;

    .line 26
    return-void
.end method
