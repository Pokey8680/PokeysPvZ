.class Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;
.super Ljava/lang/Object;
.source "OAuthApiV1.java"

# interfaces
.implements Lorg/codegist/crest/security/oauth/OAuthApi;


# static fields
.field private static final CALLBACK:Lorg/codegist/crest/param/EncodedPair;


# instance fields
.field private final accessTokenPath:Ljava/lang/String;

.field private final consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private final methodType:Lorg/codegist/crest/config/MethodType;

.field private final oauthInterface:Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

.field private final refreshAccessTokenPath:Ljava/lang/String;

.field private final requestTokenPath:Ljava/lang/String;

.field private final variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "oauth_callback"

    const-string v1, "oob"

    invoke-static {v0, v1}, Lorg/codegist/crest/util/Pairs;->toPreEncodedPair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->CALLBACK:Lorg/codegist/crest/param/EncodedPair;

    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/codegist/crest/security/oauth/v1/OAuthInterface;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/v1/VariantProvider;)V
    .locals 1
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "oauthEndPoint"    # Ljava/lang/String;
    .param p3, "requestTokenPath"    # Ljava/lang/String;
    .param p4, "accessTokenPath"    # Ljava/lang/String;
    .param p5, "refreshAccessTokenPath"    # Ljava/lang/String;
    .param p6, "oauthInterface"    # Lorg/codegist/crest/security/oauth/v1/OAuthInterface;
    .param p7, "consumerToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p8, "variantProvider"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->methodType:Lorg/codegist/crest/config/MethodType;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->requestTokenPath:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->accessTokenPath:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->refreshAccessTokenPath:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->oauthInterface:Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

    .line 55
    iput-object p7, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 56
    iput-object p8, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .line 57
    return-void
.end method

.method private asMap(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codegist/crest/param/EncodedPair;

    .line 105
    .local v2, "pair":Lorg/codegist/crest/param/EncodedPair;
    invoke-interface {v2}, Lorg/codegist/crest/param/EncodedPair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/codegist/crest/param/EncodedPair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    .end local v2    # "pair":Lorg/codegist/crest/param/EncodedPair;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAccessToken(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .locals 10
    .param p1, "requestOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "verifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->methodType:Lorg/codegist/crest/config/MethodType;

    iget-object v3, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->accessTokenPath:Ljava/lang/String;

    sget-object v4, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->EMPTY_HTTP_PAIRS:[Lorg/codegist/crest/param/EncodedPair;

    const/4 v1, 0x1

    new-array v5, v1, [Lorg/codegist/crest/param/EncodedPair;

    const/4 v1, 0x0

    const-string v6, "oauth_verifier"

    invoke-static {v6, p2}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->pair(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v6

    aput-object v6, v5, v1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v8

    .line 75
    .local v8, "oauthPairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-direct {p0, v8}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->asMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 76
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->oauthInterface:Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

    const-string v1, "oauth_consumer_key"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "oauth_signature_method"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "oauth_timestamp"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "oauth_nonce"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "oauth_version"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "oauth_verifier"

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "oauth_signature"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lorg/codegist/crest/security/oauth/v1/OAuthInterface;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public getRequestToken()Lorg/codegist/crest/security/oauth/OAuthToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->methodType:Lorg/codegist/crest/config/MethodType;

    iget-object v3, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->requestTokenPath:Ljava/lang/String;

    sget-object v4, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->EMPTY_HTTP_PAIRS:[Lorg/codegist/crest/param/EncodedPair;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/codegist/crest/param/EncodedPair;

    const/4 v6, 0x0

    sget-object v7, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->CALLBACK:Lorg/codegist/crest/param/EncodedPair;

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v8

    .line 61
    .local v8, "oauthPairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-direct {p0, v8}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->asMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v9

    .line 62
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->oauthInterface:Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

    const-string v1, "oauth_consumer_key"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "oauth_signature_method"

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "oauth_timestamp"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "oauth_nonce"

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "oauth_version"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "oauth_callback"

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "oauth_signature"

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lorg/codegist/crest/security/oauth/v1/OAuthInterface;->getRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;

    move-result-object v0

    return-object v0
.end method

.method public refreshAccessToken(Lorg/codegist/crest/security/oauth/OAuthToken;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .locals 11
    .param p1, "token"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    iget-object v3, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->methodType:Lorg/codegist/crest/config/MethodType;

    iget-object v4, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->refreshAccessTokenPath:Ljava/lang/String;

    sget-object v5, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->EMPTY_HTTP_PAIRS:[Lorg/codegist/crest/param/EncodedPair;

    const/4 v2, 0x1

    new-array v6, v2, [Lorg/codegist/crest/param/EncodedPair;

    const/4 v2, 0x0

    const-string v7, "oauth_session_handle"

    invoke-virtual {p1, v7}, Lorg/codegist/crest/security/oauth/OAuthToken;->getAttribute(Ljava/lang/String;)Lorg/codegist/crest/param/EncodedPair;

    move-result-object v7

    aput-object v7, v6, v2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v9

    .line 89
    .local v9, "oauthPairs":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    invoke-direct {p0, v9}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->asMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v10

    .line 90
    .local v10, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;->oauthInterface:Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

    const-string v1, "oauth_token"

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "oauth_consumer_key"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "oauth_signature_method"

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "oauth_timestamp"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "oauth_nonce"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "oauth_version"

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "oauth_session_handle"

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "oauth_signature"

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface/range {v0 .. v8}, Lorg/codegist/crest/security/oauth/v1/OAuthInterface;->refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;

    move-result-object v0

    return-object v0
.end method
