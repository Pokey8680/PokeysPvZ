.class Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "HttpMethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->sendRequest(Lorg/restlet/Request;)Lorg/restlet/data/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

.field final synthetic val$entity:Lorg/restlet/representation/Representation;


# direct methods
.method constructor <init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Lorg/restlet/representation/Representation;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    iput-object p2, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 314
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/data/MediaType;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreaming()Z
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0}, Lorg/restlet/representation/Representation;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$3;->val$entity:Lorg/restlet/representation/Representation;

    invoke-virtual {v0, p1}, Lorg/restlet/representation/Representation;->write(Ljava/io/OutputStream;)V

    .line 330
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 331
    return-void
.end method
