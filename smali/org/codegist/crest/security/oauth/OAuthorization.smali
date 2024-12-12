.class public Lorg/codegist/crest/security/oauth/OAuthorization;
.super Ljava/lang/Object;
.source "OAuthorization.java"

# interfaces
.implements Lorg/codegist/crest/security/Authorization;


# instance fields
.field private volatile accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private final oauth:Lorg/codegist/crest/security/oauth/OAuthenticator;

.field private final oauthApi:Lorg/codegist/crest/security/oauth/OAuthApi;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthenticator;)V
    .locals 1
    .param p1, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "oauth"    # Lorg/codegist/crest/security/oauth/OAuthenticator;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/codegist/crest/security/oauth/OAuthorization;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthenticator;Lorg/codegist/crest/security/oauth/OAuthApi;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthenticator;Lorg/codegist/crest/security/oauth/OAuthApi;)V
    .locals 0
    .param p1, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "oauth"    # Lorg/codegist/crest/security/oauth/OAuthenticator;
    .param p3, "oauthApi"    # Lorg/codegist/crest/security/oauth/OAuthApi;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->oauth:Lorg/codegist/crest/security/oauth/OAuthenticator;

    .line 59
    iput-object p3, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->oauthApi:Lorg/codegist/crest/security/oauth/OAuthApi;

    .line 60
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 61
    return-void
.end method


# virtual methods
.method public varargs authorize(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Lorg/codegist/crest/security/AuthorizationToken;
    .locals 7
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/codegist/crest/param/EncodedPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->oauth:Lorg/codegist/crest/security/oauth/OAuthenticator;

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/codegist/crest/security/oauth/OAuthenticator;->oauth(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "oauthParams":Ljava/util/List;, "Ljava/util/List<Lorg/codegist/crest/param/EncodedPair;>;"
    new-instance v1, Lorg/codegist/crest/security/AuthorizationToken;

    const-string v2, "OAuth"

    const/16 v3, 0x2c

    const/16 v4, 0x3d

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v5, v6}, Lorg/codegist/crest/util/Pairs;->join(Ljava/util/List;CCZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/codegist/crest/security/AuthorizationToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public refresh()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->oauthApi:Lorg/codegist/crest/security/oauth/OAuthApi;

    const-string v1, "AccessToken refresh impossible, you must specify the oauth_session_handle and refresh access token url, see CRestBuilder."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/codegist/common/lang/State;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->oauthApi:Lorg/codegist/crest/security/oauth/OAuthApi;

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    invoke-interface {v0, v1}, Lorg/codegist/crest/security/oauth/OAuthApi;->refreshAccessToken(Lorg/codegist/crest/security/oauth/OAuthToken;)Lorg/codegist/crest/security/oauth/OAuthToken;

    move-result-object v0

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/OAuthorization;->accessOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 74
    return-void
.end method
