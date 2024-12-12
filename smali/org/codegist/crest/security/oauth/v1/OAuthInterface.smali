.class interface abstract Lorg/codegist/crest/security/oauth/v1/OAuthInterface;
.super Ljava/lang/Object;
.source "OAuthInterface.java"


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
.end method

.method public abstract getRequestToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
.end method

.method public abstract refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/security/oauth/OAuthToken;
.end method
