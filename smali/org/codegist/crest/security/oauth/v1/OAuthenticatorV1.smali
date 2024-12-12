.class public Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;
.super Ljava/lang/Object;
.source "OAuthenticatorV1.java"

# interfaces
.implements Lorg/codegist/crest/security/oauth/OAuthenticator;


# instance fields
.field private final consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private final variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;)V
    .locals 1
    .param p1, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;

    .prologue
    .line 47
    sget-object v0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;->INSTANCE:Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;

    invoke-direct {p0, p1, v0}, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/v1/VariantProvider;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/v1/VariantProvider;)V
    .locals 0
    .param p1, "consumerOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "variantProvider"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .line 52
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;->consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 53
    return-void
.end method


# virtual methods
.method public varargs oauth(Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;
    .locals 7
    .param p1, "accessOAuthToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "parameters"    # [Lorg/codegist/crest/param/EncodedPair;
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
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthenticatorV1;->consumerOAuthToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    const/4 v2, 0x0

    new-array v6, v2, [Lorg/codegist/crest/param/EncodedPair;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lorg/codegist/crest/security/oauth/v1/OAuthsV1;->oauth(Lorg/codegist/crest/security/oauth/v1/VariantProvider;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;[Lorg/codegist/crest/param/EncodedPair;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
