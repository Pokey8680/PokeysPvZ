.class public interface abstract Lorg/codegist/crest/security/oauth/OAuthenticator;
.super Ljava/lang/Object;
.source "OAuthenticator.java"


# virtual methods
.method public varargs abstract oauth(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codegist/crest/security/oauth/OAuthToken;",
            "Lorg/codegist/crest/config/MethodType;",
            "Ljava/lang/String;",
            "[",
            "Lorg/codegist/crest/param/EncodedPair;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/codegist/crest/param/EncodedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
