.class Lorg/restlet/ext/httpclient/internal/HttpMethodCall$2;
.super Ljava/io/FilterInputStream;
.source "HttpMethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getResponseEntityStream(J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;


# direct methods
.method constructor <init>(Lorg/restlet/ext/httpclient/internal/HttpMethodCall;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$2;->this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 219
    iget-object v0, p0, Lorg/restlet/ext/httpclient/internal/HttpMethodCall$2;->this$0:Lorg/restlet/ext/httpclient/internal/HttpMethodCall;

    invoke-virtual {v0}, Lorg/restlet/ext/httpclient/internal/HttpMethodCall;->getHttpResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 220
    return-void
.end method
