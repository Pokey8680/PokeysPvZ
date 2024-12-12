.class Lorg/codegist/crest/security/oauth/v1/OAuthTokenDeserializer;
.super Lorg/codegist/crest/serializer/TypeDeserializer;
.source "OAuthTokenDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codegist/crest/serializer/TypeDeserializer",
        "<",
        "Lorg/codegist/crest/security/oauth/OAuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/codegist/crest/serializer/TypeDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/codegist/crest/security/oauth/v1/OAuthTokenDeserializer;->deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/codegist/crest/security/oauth/OAuthToken;

    move-result-object v0

    return-object v0
.end method

.method protected deserialize(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 37
    invoke-static {p1, p2, v7}, Lorg/codegist/common/io/IOs;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codegist/common/net/Urls;->parseQueryString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 38
    .local v0, "tokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/codegist/crest/security/oauth/OAuthToken;

    const-string v1, "oauth_token"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "oauth_token_secret"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "oauth_token"

    aput-object v6, v4, v5

    const-string v5, "oauth_token_secret"

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lorg/codegist/common/collect/Maps;->filter(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lorg/codegist/crest/security/oauth/OAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v3
.end method
