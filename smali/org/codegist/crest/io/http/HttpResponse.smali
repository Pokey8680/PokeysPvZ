.class Lorg/codegist/crest/io/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lorg/codegist/crest/io/Response;
.implements Lorg/codegist/common/lang/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codegist/crest/io/http/HttpResponse$1;,
        Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;
    }
.end annotation


# instance fields
.field private final baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

.field private final customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

.field private final inputStream:Ljava/io/InputStream;

.field private final request:Lorg/codegist/crest/io/Request;

.field private final resource:Lorg/codegist/crest/io/http/HttpResource;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/serializer/ResponseDeserializer;Lorg/codegist/crest/io/Request;Lorg/codegist/crest/io/http/HttpResource;)V
    .locals 1
    .param p1, "baseResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;
    .param p2, "customTypeResponseDeserializer"    # Lorg/codegist/crest/serializer/ResponseDeserializer;
    .param p3, "request"    # Lorg/codegist/crest/io/Request;
    .param p4, "resource"    # Lorg/codegist/crest/io/http/HttpResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/codegist/crest/io/http/HttpResponse;->baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    .line 52
    iput-object p2, p0, Lorg/codegist/crest/io/http/HttpResponse;->customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    .line 53
    iput-object p3, p0, Lorg/codegist/crest/io/http/HttpResponse;->request:Lorg/codegist/crest/io/Request;

    .line 54
    iput-object p4, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    .line 55
    new-instance v0, Lorg/codegist/crest/io/http/HttpResourceInputStream;

    invoke-direct {v0, p4}, Lorg/codegist/crest/io/http/HttpResourceInputStream;-><init>(Lorg/codegist/crest/io/http/HttpResource;)V

    iput-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->inputStream:Ljava/io/InputStream;

    .line 56
    return-void
.end method


# virtual methods
.method public asStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public deserialize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->baseResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    invoke-interface {v0, p0}, Lorg/codegist/crest/serializer/ResponseDeserializer;->deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/codegist/common/io/IOs;->close(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v0}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/codegist/crest/config/MethodConfig;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->request:Lorg/codegist/crest/io/Request;

    invoke-interface {v0}, Lorg/codegist/crest/io/Request;->getMethodConfig()Lorg/codegist/crest/config/MethodConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/codegist/crest/config/MethodConfig;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lorg/codegist/crest/io/Request;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->request:Lorg/codegist/crest/io/Request;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->resource:Lorg/codegist/crest/io/http/HttpResource;

    invoke-interface {v0}, Lorg/codegist/crest/io/http/HttpResource;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p1}, Lorg/codegist/crest/io/http/HttpResponse;->to(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/io/http/HttpResponse;->customTypeResponseDeserializer:Lorg/codegist/crest/serializer/ResponseDeserializer;

    new-instance v1, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/codegist/crest/io/http/HttpResponse$ExpectedTypeOverriderResponse;-><init>(Lorg/codegist/crest/io/Response;Ljava/lang/Class;Ljava/lang/reflect/Type;Lorg/codegist/crest/io/http/HttpResponse$1;)V

    invoke-interface {v0, v1}, Lorg/codegist/crest/serializer/ResponseDeserializer;->deserialize(Lorg/codegist/crest/io/Response;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
