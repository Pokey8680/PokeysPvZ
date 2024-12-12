.class public abstract Ljavax/ws/rs/core/UriBuilder;
.super Ljava/lang/Object;
.source "UriBuilder.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPath(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Ljavax/ws/rs/core/UriBuilder;->newInstance()Ljavax/ws/rs/core/UriBuilder;

    move-result-object v0

    .line 112
    .local v0, "b":Ljavax/ws/rs/core/UriBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/UriBuilder;->path(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;

    .line 113
    return-object v0
.end method

.method public static fromResource(Ljava/lang/Class;)Ljavax/ws/rs/core/UriBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljavax/ws/rs/core/UriBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "resource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljavax/ws/rs/core/UriBuilder;->newInstance()Ljavax/ws/rs/core/UriBuilder;

    move-result-object v0

    .line 128
    .local v0, "b":Ljavax/ws/rs/core/UriBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/UriBuilder;->path(Ljava/lang/Class;)Ljavax/ws/rs/core/UriBuilder;

    .line 129
    return-object v0
.end method

.method public static fromUri(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, "u":Ljava/net/URI;
    invoke-static {v1}, Ljavax/ws/rs/core/UriBuilder;->fromUri(Ljava/net/URI;)Ljavax/ws/rs/core/UriBuilder;

    move-result-object v2

    return-object v2

    .line 96
    .end local v1    # "u":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromUri(Ljava/net/URI;)Ljavax/ws/rs/core/UriBuilder;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Ljavax/ws/rs/core/UriBuilder;->newInstance()Ljavax/ws/rs/core/UriBuilder;

    move-result-object v0

    .line 81
    .local v0, "b":Ljavax/ws/rs/core/UriBuilder;
    invoke-virtual {v0, p0}, Ljavax/ws/rs/core/UriBuilder;->uri(Ljava/net/URI;)Ljavax/ws/rs/core/UriBuilder;

    .line 82
    return-object v0
.end method

.method protected static newInstance()Ljavax/ws/rs/core/UriBuilder;
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Ljavax/ws/rs/ext/RuntimeDelegate;->getInstance()Ljavax/ws/rs/ext/RuntimeDelegate;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/ws/rs/ext/RuntimeDelegate;->createUriBuilder()Ljavax/ws/rs/core/UriBuilder;

    move-result-object v0

    .line 70
    .local v0, "b":Ljavax/ws/rs/core/UriBuilder;
    return-object v0
.end method


# virtual methods
.method public varargs abstract build([Ljava/lang/Object;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/ws/rs/core/UriBuilderException;
        }
    .end annotation
.end method

.method public varargs abstract buildFromEncoded([Ljava/lang/Object;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/ws/rs/core/UriBuilderException;
        }
    .end annotation
.end method

.method public abstract buildFromEncodedMap(Ljava/util/Map;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/ws/rs/core/UriBuilderException;
        }
    .end annotation
.end method

.method public abstract buildFromMap(Ljava/util/Map;)Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljavax/ws/rs/core/UriBuilderException;
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Ljavax/ws/rs/core/UriBuilder;->clone()Ljavax/ws/rs/core/UriBuilder;

    move-result-object v0

    return-object v0
.end method

.method public abstract clone()Ljavax/ws/rs/core/UriBuilder;
.end method

.method public abstract fragment(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
.end method

.method public abstract host(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract matrixParam(Ljava/lang/String;[Ljava/lang/Object;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract path(Ljava/lang/Class;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract path(Ljava/lang/Class;Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract path(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract path(Ljava/lang/reflect/Method;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract port(I)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract queryParam(Ljava/lang/String;[Ljava/lang/Object;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract replaceMatrix(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract replaceMatrixParam(Ljava/lang/String;[Ljava/lang/Object;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract replacePath(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
.end method

.method public abstract replaceQuery(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract replaceQueryParam(Ljava/lang/String;[Ljava/lang/Object;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract scheme(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract schemeSpecificPart(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract segment([Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract uri(Ljava/net/URI;)Ljavax/ws/rs/core/UriBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract userInfo(Ljava/lang/String;)Ljavax/ws/rs/core/UriBuilder;
.end method
