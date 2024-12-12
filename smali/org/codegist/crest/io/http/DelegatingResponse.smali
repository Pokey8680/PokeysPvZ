.class Lorg/codegist/crest/io/http/DelegatingResponse;
.super Ljava/lang/Object;
.source "DelegatingResponse.java"

# interfaces
.implements Lorg/codegist/crest/io/Response;


# instance fields
.field private final delegate:Lorg/codegist/crest/io/Response;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/io/Response;)V
    .locals 0
    .param p1, "delegate"    # Lorg/codegist/crest/io/Response;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    .line 39
    return-void
.end method


# virtual methods
.method public asStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->asStream()Ljava/io/InputStream;

    move-result-object v0

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
    .line 70
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->deserialize()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->dispose()V

    .line 87
    return-void
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getExpectedGenericType()Ljava/lang/reflect/Type;

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
    .line 66
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getExpectedType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lorg/codegist/crest/io/Request;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getRequest()Lorg/codegist/crest/io/Request;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0}, Lorg/codegist/crest/io/Response;->getStatusCode()I

    move-result v0

    return v0
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
    .line 74
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0, p1}, Lorg/codegist/crest/io/Response;->to(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public to(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
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
    .line 78
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/codegist/crest/io/http/DelegatingResponse;->delegate:Lorg/codegist/crest/io/Response;

    invoke-interface {v0, p1, p2}, Lorg/codegist/crest/io/Response;->to(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
