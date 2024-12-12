.class public interface abstract Lorg/codegist/crest/security/Authorization;
.super Ljava/lang/Object;
.source "Authorization.java"


# virtual methods
.method public varargs abstract authorize(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Lorg/codegist/crest/security/AuthorizationToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract refresh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
