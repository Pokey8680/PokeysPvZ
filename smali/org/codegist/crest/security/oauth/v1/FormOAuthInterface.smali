.class interface abstract Lorg/codegist/crest/security/oauth/v1/FormOAuthInterface;
.super Ljava/lang/Object;
.source "FormOAuthInterface.java"

# interfaces
.implements Lorg/codegist/crest/security/oauth/v1/OAuthInterface;


# annotations
.annotation runtime Lorg/codegist/crest/annotate/Deserializer;
    value = Lorg/codegist/crest/security/oauth/v1/OAuthTokenDeserializer;
.end annotation

.annotation runtime Lorg/codegist/crest/annotate/Encoded;
.end annotation

.annotation runtime Lorg/codegist/crest/annotate/EndPoint;
    value = "{oauth.end-point}"
.end annotation

.annotation runtime Lorg/codegist/crest/annotate/POST;
.end annotation


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_consumer_key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature_method"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_timestamp"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_nonce"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_version"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_verifier"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature"
        .end annotation
    .end param
    .annotation runtime Lorg/codegist/crest/annotate/Path;
        value = "{oauth.access-token.path}"
    .end annotation
.end method

.method public abstract getRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_consumer_key"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature_method"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_timestamp"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_nonce"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_version"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_callback"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature"
        .end annotation
    .end param
    .annotation runtime Lorg/codegist/crest/annotate/Path;
        value = "{oauth.request-token.path}"
    .end annotation
.end method

.method public abstract refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_consumer_key"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature_method"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_timestamp"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_nonce"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_version"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_session_handle"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lorg/codegist/crest/annotate/FormParam;
            value = "oauth_signature"
        .end annotation
    .end param
    .annotation runtime Lorg/codegist/crest/annotate/Path;
        value = "{oauth.refresh-access-token.path}"
    .end annotation
.end method
