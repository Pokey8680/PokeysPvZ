.class public final Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
.super Ljava/lang/Object;
.source "OAuthApiV1Builder.java"


# instance fields
.field private accessTokenPath:Ljava/lang/String;

.field private channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

.field private final consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

.field private final crestBuilder:Lorg/codegist/crest/CRestBuilder;

.field private methodType:Lorg/codegist/crest/config/MethodType;

.field private final oauthEndPoint:Ljava/lang/String;

.field private oauthInterfaceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/codegist/crest/security/oauth/v1/OAuthInterface;",
            ">;"
        }
    .end annotation
.end field

.field private refreshAccessTokenPath:Ljava/lang/String;

.field private requestTokenPath:Ljava/lang/String;

.field private variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;


# direct methods
.method public constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "oauthEndPoint"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lorg/codegist/crest/CRestBuilder;

    invoke-direct {v0}, Lorg/codegist/crest/CRestBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;-><init>(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;Lorg/codegist/crest/CRestBuilder;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lorg/codegist/crest/security/oauth/OAuthToken;Ljava/lang/String;Lorg/codegist/crest/CRestBuilder;)V
    .locals 1
    .param p1, "consumerToken"    # Lorg/codegist/crest/security/oauth/OAuthToken;
    .param p2, "oauthEndPoint"    # Ljava/lang/String;
    .param p3, "crestBuilder"    # Lorg/codegist/crest/CRestBuilder;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;->INSTANCE:Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .line 40
    new-instance v0, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannelFactory;

    invoke-direct {v0}, Lorg/codegist/crest/io/http/HttpURLConnectionHttpChannelFactory;-><init>()V

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 41
    sget-object v0, Lorg/codegist/crest/config/MethodType;->POST:Lorg/codegist/crest/config/MethodType;

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->methodType:Lorg/codegist/crest/config/MethodType;

    .line 42
    const-class v0, Lorg/codegist/crest/security/oauth/v1/FormOAuthInterface;

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthInterfaceCls:Ljava/lang/Class;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->requestTokenPath:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->accessTokenPath:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->refreshAccessTokenPath:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    .line 76
    iput-object p2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthEndPoint:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->crestBuilder:Lorg/codegist/crest/CRestBuilder;

    .line 78
    return-void
.end method


# virtual methods
.method public build()Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;
    .locals 9

    .prologue
    .line 48
    iget-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->crestBuilder:Lorg/codegist/crest/CRestBuilder;

    const-string v1, "oauth.end-point"

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthEndPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/CRestBuilder;->placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    const-string v1, "oauth.access-token.path"

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->accessTokenPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/CRestBuilder;->placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    const-string v1, "oauth.request-token.path"

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->requestTokenPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/CRestBuilder;->placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    const-string v1, "oauth.refresh-access-token.path"

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->refreshAccessTokenPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/codegist/crest/CRestBuilder;->placeholder(Ljava/lang/String;Ljava/lang/String;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/CRestBuilder;->setHttpChannelFactory(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/CRestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codegist/crest/CRestBuilder;->build()Lorg/codegist/crest/CRest;

    move-result-object v0

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthInterfaceCls:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/codegist/crest/CRest;->build(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codegist/crest/security/oauth/v1/OAuthInterface;

    .line 55
    .local v6, "oauthInterface":Lorg/codegist/crest/security/oauth/v1/OAuthInterface;
    new-instance v0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;

    iget-object v1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->methodType:Lorg/codegist/crest/config/MethodType;

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthEndPoint:Ljava/lang/String;

    iget-object v3, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->requestTokenPath:Ljava/lang/String;

    iget-object v4, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->accessTokenPath:Ljava/lang/String;

    iget-object v5, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->refreshAccessTokenPath:Ljava/lang/String;

    iget-object v7, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->consumerToken:Lorg/codegist/crest/security/oauth/OAuthToken;

    iget-object v8, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    invoke-direct/range {v0 .. v8}, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1;-><init>(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/codegist/crest/security/oauth/v1/OAuthInterface;Lorg/codegist/crest/security/oauth/OAuthToken;Lorg/codegist/crest/security/oauth/v1/VariantProvider;)V

    return-object v0
.end method

.method public getAccessTokenFrom(Ljava/lang/String;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->accessTokenPath:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public getRequestTokenFrom(Ljava/lang/String;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->requestTokenPath:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public refreshAccessTokenFrom(Ljava/lang/String;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->refreshAccessTokenPath:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public useGet()Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/codegist/crest/config/MethodType;->GET:Lorg/codegist/crest/config/MethodType;

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->methodType:Lorg/codegist/crest/config/MethodType;

    .line 116
    const-class v0, Lorg/codegist/crest/security/oauth/v1/QueryOAuthInterface;

    iput-object v0, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->oauthInterfaceCls:Ljava/lang/Class;

    .line 117
    return-object p0
.end method

.method public using(Lorg/codegist/crest/io/http/HttpChannelFactory;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 0
    .param p1, "channelFactory"    # Lorg/codegist/crest/io/http/HttpChannelFactory;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->channelFactory:Lorg/codegist/crest/io/http/HttpChannelFactory;

    .line 128
    return-object p0
.end method

.method public using(Lorg/codegist/crest/security/oauth/v1/VariantProvider;)Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;
    .locals 0
    .param p1, "variantProvider"    # Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/OAuthApiV1Builder;->variantProvider:Lorg/codegist/crest/security/oauth/v1/VariantProvider;

    .line 138
    return-object p0
.end method
