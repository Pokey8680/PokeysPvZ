.class public interface abstract Lorg/codegist/crest/security/oauth/OAuthApi;
.super Ljava/lang/Object;
.source "OAuthApi.java"


# virtual methods
.method public abstract getAccessToken(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getRequestToken()Lorg/codegist/crest/security/oauth/OAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract refreshAccessToken(Lorg/codegist/crest/security/oauth/OAuthToken;)Lorg/codegist/crest/security/oauth/OAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
